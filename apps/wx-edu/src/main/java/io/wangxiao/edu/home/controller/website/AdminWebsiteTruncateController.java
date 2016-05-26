package io.wangxiao.edu.home.controller.website;

import io.wangxiao.commons.entity.PageEntity;
import io.wangxiao.edu.home.common.EduBaseController;
import io.wangxiao.edu.home.entity.website.WebsiteTruncate;
import io.wangxiao.edu.home.service.website.WebsiteTruncateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminWebsiteTruncateController extends EduBaseController {

    private static final Logger logger = LoggerFactory.getLogger(AdminWebsiteTruncateController.class);

    @Autowired
    private WebsiteTruncateService websiteTruncateService;

    private static final String getWebsiteTruncateList = getViewPath("/admin/website/truncate/websiteTruncate_list");
    private static final String updateWebsiteTruncate = getViewPath("/admin/website/truncate/websiteTruncate_update");
    private static final String addWebsiteTruncate = getViewPath("/admin/website/truncate/websiteTruncate_add");

    // 创建群 绑定变量名字和属性，把参数封装到类
    @InitBinder("websiteTruncate")
    public void initBinderWebsiteTruncate(WebDataBinder binder) {
        binder.setFieldDefaultPrefix("websiteTruncate.");
    }

    /**
     * 添加清空表
     *
     * @return
     */
    @RequestMapping("/website/addTruncate")
    public String addWebsiteTruncate(WebsiteTruncate websiteTruncate, HttpServletRequest request) {
        try {
            websiteTruncateService.insertWebsiteTruncate(websiteTruncate);
        } catch (Exception e) {
            logger.error("AdminWebsiteTruncateController.addWebsiteTruncate--添加清空表出错", e);
            return setExceptionRequest(request, e);
        }
        return "redirect:/admin/website/truncatePage";
    }

    /**
     * 跳转添加清空表
     *
     * @return
     */
    @RequestMapping("/website/doAddTruncate")
    public String doAddWebsiteTruncate() {
        return addWebsiteTruncate;
    }

    /**
     * 清空表分页列表
     *
     * @return
     */
    @RequestMapping("/website/truncatePage")
    public ModelAndView getWebsiteTruncatePage(WebsiteTruncate websiteTruncate, @ModelAttribute("page") PageEntity page,
                                               HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(getWebsiteTruncateList);
        try {

            page.setPageSize(10);
            List<WebsiteTruncate> websiteTruncateList = websiteTruncateService.getTruncatePageList(websiteTruncate,
                    page);
            modelAndView.addObject("websiteTruncateList", websiteTruncateList);
            modelAndView.addObject("page", page);
        } catch (Exception e) {
            logger.error("AdminWebsiteTruncateController.getWebsiteTruncatePage--清空表分页列表出错", e);
            return new ModelAndView(setExceptionRequest(request, e));
        }
        return modelAndView;
    }

    /**
     * 删除清空表
     *
     * @return
     */
    @RequestMapping("/website/delTruncate/{ids}")
    @ResponseBody
    public Map<String, Object> deleteWebsiteTruncate(@PathVariable String ids) {
        Map<String, Object> json = null;
        try {
            if (ids.trim().endsWith(",")) {
                ids = ids.trim().substring(0, ids.trim().length() - 1);
            }
            websiteTruncateService.delTruncateByIds(ids);
            json = this.getJsonMap(true, "true", null);

        } catch (Exception e) {
            logger.error("AdminWebsiteTruncateController.deleteWebsiteTruncate--删除清空表出错", e);
            json = this.getJsonMap(false, "error", null);
        }
        return json;
    }

    /**
     * 清空表
     *
     * @return
     */
    @RequestMapping("/website/truncate/table/{ids}")
    @ResponseBody
    public Map<String, Object> truncateTable(@PathVariable String ids) {
        Map<String, Object> json = null;
        try {
            if (ids.trim().endsWith(",")) {
                ids = ids.trim().substring(0, ids.trim().length() - 1);
            }
            websiteTruncateService.truncateTableByIds(ids, "");
            json = this.getJsonMap(true, "true", null);

        } catch (Exception e) {
            logger.error("AdminWebsiteTruncateController.truncateTable--清空表出错", e);
            json = this.getJsonMap(false, "error", null);
        }
        return json;
    }

    /**
     * 按类型清空表
     *
     * @return
     */
    @RequestMapping("/website/truncate/table/type/{type}")
    @ResponseBody
    public Map<String, Object> truncateTableType(@PathVariable String type) {
        Map<String, Object> json = null;
        try {
            websiteTruncateService.truncateTableByIds("", type);
            json = this.getJsonMap(true, "true", null);

        } catch (Exception e) {
            logger.error("AdminWebsiteTruncateController.truncateTable--清空表出错", e);
            json = this.getJsonMap(false, "error", null);
        }
        return json;
    }

    /**
     * 跳转清空表修改
     *
     * @return
     */
    @RequestMapping("/website/doUpdateTruncate/{id}")
    public String doUpdateTruncate(@PathVariable Long id, HttpServletRequest request) {
        try {
            WebsiteTruncate websiteTruncate = websiteTruncateService.getWebsiteTruncateById(id);
            request.setAttribute("websiteTruncate", websiteTruncate);
        } catch (Exception e) {
            logger.error("AdminWebsiteTruncateController.doUpdateTruncate--跳转清空表修改", e);
            return setExceptionRequest(request, e);
        }
        return updateWebsiteTruncate;
    }

    /**
     * 更新清空表
     *
     * @return
     */
    @RequestMapping("/website/updateTruncate")
    public String updatewebsiteTruncate(WebsiteTruncate websiteTruncate, HttpServletRequest request) {
        try {
            websiteTruncateService.updateWebsiteTruncate(websiteTruncate);
        } catch (Exception e) {
            logger.error("AdminWebsiteTruncateController.updateTruncate--更新清空表出错", e);
            return setExceptionRequest(request, e);
        }
        return "redirect:/admin/website/truncatePage";
    }

}
