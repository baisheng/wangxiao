package com.atdld.open.cms.common.intercepter;

import com.google.gson.JsonObject;
import com.atdld.open.cms.common.controller.SingletonLoginUtils;
import com.atdld.open.common.constants.CommonConstants;
import com.atdld.open.common.constants.MemConstans;
import com.atdld.open.core.service.cache.MemCache;
import com.atdld.open.core.util.ObjectUtils;
import com.atdld.open.core.util.PropertyUtil;
import com.atdld.open.core.util.StringUtils;
import com.atdld.open.core.util.web.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName com.atdld.open.sns.common.intercepter.LimitIntercepterForWeb
 * @description 前端用户拦截
 */
public class LimitIntercepterForWeb extends HandlerInterceptorAdapter {

    Logger logger = LoggerFactory.getLogger(LimitIntercepterForWeb.class);

    MemCache memCache = MemCache.getInstance();
    // 读取配置文件类
    public static PropertyUtil propertyUtil = PropertyUtil.getInstance(CommonConstants.propertyFile);

    public boolean ischeck=false;//是否开启同时1个帐号只能1个人登录开关
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.preHandle(request, response, handler);
        if(!"1".equals(CommonConstants.l)){
            return false;
        }

        JsonObject userJsonObject = SingletonLoginUtils.getLoginUser(request);

        if(ObjectUtils.isNotNull(userJsonObject)){
            if(ischeck){
                 //登录状态的验证,是否被其他人踢掉
                String mcuurent=(String) memCache.get(MemConstans.USER_CURRENT_LOGINTIME + userJsonObject.get("id"));
                if(StringUtils.isNotEmpty(mcuurent)){
                    if(Long.valueOf(userJsonObject.get("current").toString())!=Long.valueOf(mcuurent).longValue()){
                            //跳转到登录页面并提示信息根据msg
                            response.sendRedirect("/login?msg=other");
                        //清除登录状态
                        String sid = WebUtils.getCookie(request, CommonConstants.USER_SINGEL_ID);
                        if (StringUtils.isNotEmpty(sid)) {
                            memCache.remove(sid);
                        }
                        WebUtils.deleteCookie(request, response, CommonConstants.USER_SINGEL_ID);
            			WebUtils.deleteCookie(request, response, CommonConstants.USER_SINGEL_NAME);
            			WebUtils.deleteCookie(request, response, "usercookieuserimg");
                        return false;
                    } 
                }
                return true;
            }else{
                return true;
            }
        }
        //未登录时跳转到登录页面
        if (WebUtils.isNotAjaxRequest(request)) {
            if (request.getRequestURL().equals("/")) {
                WebUtils.setCookieSessionTime(response, CommonConstants.redirect, CommonConstants.contextPath);
            } else {
                WebUtils.setCookieSessionTime(response, CommonConstants.redirect, CommonConstants.contextPath+request.getRequestURI());
            }
        }
        response.sendRedirect(CommonConstants.webPath+"/login");
        return false;
    }

}
