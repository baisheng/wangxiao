package com.atdld.os.app.controller.website;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.atdld.os.app.common.AppBaseController;
import com.atdld.os.app.entity.website.AppWebsiteCourse;
import com.atdld.os.app.entity.website.AppWebsiteCourseDetail;
import com.atdld.os.app.entity.website.AppWebsiteCourseDetailDTO;
import com.atdld.os.app.service.website.AppCourseService;
import com.atdld.os.app.service.website.AppWebsiteCourseDetailService;
import com.atdld.os.app.service.website.AppWebsiteCourseService;
import com.atdld.os.core.entity.PageEntity;
import com.atdld.os.core.util.ObjectUtils;
import com.atdld.os.core.util.StringUtils;
import com.atdld.os.edu.entity.course.CourseDto;
import com.atdld.os.edu.entity.course.QueryCourse;

/**
 * 推荐模块课程分类
 */
@Controller
@RequestMapping("/admin")
public class AdminAppWebsiteCourseController extends AppBaseController {

	private static final Logger logger = LoggerFactory.getLogger(AdminAppWebsiteCourseController.class);

	@Autowired
	private AppWebsiteCourseService appWebsiteCourseService;
	@Autowired
	private AppWebsiteCourseDetailService appWebsiteCourseDetailService;
	@Autowired
	private AppCourseService appCourseService; 

    private static final String selectCourse = getViewPath("/admin/website/course/select_course_list");//
	private static final String getWebsiteCourseList = getViewPath("/admin/website/course/websiteCourse_list");
	private static final String updateWebsiteCourse = getViewPath("/admin/website/course/websiteCourse_update");
	private static final String addWebsiteCourse = getViewPath("/admin/website/course/websiteCourse_add");
	private static final String getWebsiteCourseDetailList = getViewPath("/admin/website/course/websiteCourseDetail_list");
	private static final String updateWebsiteCourseDetail = getViewPath("/admin/website/course/websiteCourseDetail_update");
	// 创建群 绑定变量名字和属性，把参数封装到类
	@InitBinder("appWebsiteCourse")
	public void initBinderWebsiteCourse(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("appWebsiteCourse.");
	}
	@InitBinder("appWebsiteCourseDetail")
	public void initBinderWebsiteCourseDetail(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("appWebsiteCourseDetail.");
	}
	@InitBinder("appWebsiteCourseDetailDTO")
	public void initBinderWebsiteCourseDetailDTO(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("appWebsiteCourseDetailDTO.");
	}
    @InitBinder("queryCourse")
    public void initBinderQueryCourse(WebDataBinder binder) {
        binder.setFieldDefaultPrefix("queryCourse.");
    }

	/**
	 * 添加课程课程分类
	 * 
	 * @param request
	 * @param appWebsiteCourse
	 * @return
	 */
	@RequestMapping("/appWebsite/addCourse")
	public String addWebsiteCourse(HttpServletRequest request,AppWebsiteCourse appWebsiteCourse) {
		try {
			if (ObjectUtils.isNotNull(appWebsiteCourse)) {
				appWebsiteCourseService.addWebsiteCourse(appWebsiteCourse);
			}
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.addWebsiteNavigates--添加推荐课程分类出错", e);
			return setExceptionRequest(request, e);
		}
		return "redirect:/admin/appWebsite/websiteCoursePage";
	}

	/**
	 * 查询课程分类
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/appWebsite/websiteCoursePage")
	public ModelAndView getWebsiteCourseList(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView(getWebsiteCourseList);
		try {
			// 查询模块课程分类
			List<AppWebsiteCourse> websiteCourseList = appWebsiteCourseService.queryWebsiteCourseList();
			// 把websiteCourseList放到modelAndView
			modelAndView.addObject("websiteCourseList", websiteCourseList);
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.getWebsiteCourseList--查询课程分类列表出错", e);
			return new ModelAndView(setExceptionRequest(request, e));
		}
		return modelAndView;
	}

	/**
	 * 删除课程分类
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/appWebsite/delWebsiteCourseById/{id}")
	@ResponseBody
	public Map<String, Object> delWebsiteCourseById(HttpServletRequest request, @PathVariable Long id) {
		try {
			if (StringUtils.isNotEmpty(id.toString())) {
				// 删除课程分类
				appWebsiteCourseService.deleteWebsiteCourseDetailById(id);
				this.setJson(true, "true", null);
			}
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.deleteWebsiteCourseById--删除课程分类出错", e);
			this.setJson(false, "error", null);
		}
		return json;
	}

	/**
	 * 添加课程分类跳转
	 *
	 */
	@RequestMapping("/appWebsite/doAddWebsiteCourse")
	public ModelAndView getWebsiteCourse() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(addWebsiteCourse);
		return modelAndView;
	}
	/**
	 * 更新课程分类跳转
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/appWebsite/doUpdateWebsiteCourse/{id}")
	public ModelAndView doUpdateWebsiteCourse(HttpServletRequest request, @PathVariable("id") Long id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(updateWebsiteCourse);
		try {
			// 获得websiteCourse
			AppWebsiteCourse appWebsiteCourse = appWebsiteCourseService.queryWebsiteCourseById(id);
			modelAndView.addObject("appWebsiteCourse", appWebsiteCourse);
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.doUpdateWebsiteCourse--更新课程分类跳转出错", e);
			return new ModelAndView(setExceptionRequest(request, e));
		}
		return modelAndView;
	}
	/**
	 * 修改课程分类
	 * 
	 * @param request
	 * @param appWebsiteCourse
	 * @return
	 */
	@RequestMapping("/appWebsite/updateWebsiteCourse")
	public String updateWebsiteCourse(HttpServletRequest request, AppWebsiteCourse appWebsiteCourse) {
		try {
			if (ObjectUtils.isNotNull(appWebsiteCourse)) {
				appWebsiteCourseService.updateWebsiteCourseById(appWebsiteCourse);
			}
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.updateWebsiteCourse--修改课程分类分类出错", e);
			return setExceptionRequest(request, e);
		}
		return "redirect:/admin/appWebsite/websiteCoursePage";
	}
	
	/**
	 * 添加推荐课程
	 * 
	 * @param request
	 */
	@RequestMapping("/appWebsite/addCourseDetail")
	@ResponseBody
	public Map<String,Object> addWebsiteCourse(HttpServletRequest request) {
		try {
			String ids=request.getParameter("ids");
			Long id=Long.parseLong(request.getParameter("recommendId"));
			int exitSize=appWebsiteCourseDetailService.getWebsiteCourseDetails(id).size();
			AppWebsiteCourse appWebsiteCourse=appWebsiteCourseService.queryWebsiteCourseById(id);
			if (ObjectUtils.isNotNull(ids)){//添加推荐课程
				String[] idsArry=ids.split(",");
				if (appWebsiteCourse.getCourseNum()>=(idsArry.length+exitSize)) {//未超过该分类课程上限
					List<AppWebsiteCourseDetail> websiteCourseDetails=new ArrayList<AppWebsiteCourseDetail>();
					for(int i=0;i<idsArry.length;i++){
						AppWebsiteCourseDetail appWebsiteCourseDetail=new AppWebsiteCourseDetail();
						appWebsiteCourseDetail.setCourseId(Long.parseLong(idsArry[i]));//课程id
						appWebsiteCourseDetail.setOrderNum(0);//排序
						appWebsiteCourseDetail.setRecommendId(id);//分类id
                        //验证是否添加过
                        if(ObjectUtils.isNull(appWebsiteCourseDetailService.queryWebsiteCourseDetailList(appWebsiteCourseDetail))){
                            websiteCourseDetails.add(appWebsiteCourseDetail);
                        }
					}

                    if(ObjectUtils.isNotNull(websiteCourseDetails)){
                        appWebsiteCourseDetailService.addWebsiteCourseDetail(websiteCourseDetails);
                    }

					this.setJson(true, "true", null);
				}else{
					this.setJson(false, "than", appWebsiteCourse);
				}
			}
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.addWebsiteNavigates--添加推荐课程分类出错", e);
			this.setJson(false, "error", null);
		}
		return json;
	}

	/**
	 * 查询推荐课程列表
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/appWebsite/websiteCourseDetailPage")
	public ModelAndView getWebsiteCourseDetailList(HttpServletRequest request,AppWebsiteCourseDetailDTO appWebsiteCourseDetailDTO,@ModelAttribute("page") PageEntity page) {
		ModelAndView modelAndView = new ModelAndView(getWebsiteCourseDetailList);
		try {
			// 查询推荐课程
			this.setPage(page);
			this.getPage().setPageSize(10);
			List<AppWebsiteCourseDetailDTO> appWebsiteCourseDetailDTOList = appWebsiteCourseDetailService.queryWebsiteCourseDetailList(appWebsiteCourseDetailDTO, page);
			modelAndView.addObject("appWebsiteCourseDetailDTOList", appWebsiteCourseDetailDTOList);
			List<AppWebsiteCourse> appWebsiteCourses=appWebsiteCourseService.queryWebsiteCourseList();
			request.setAttribute("appWebsiteCourses", appWebsiteCourses);
			modelAndView.addObject("page",this.getPage());
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.getWebsiteCourseDetailList--查询推荐课程列表出错", e);
			return new ModelAndView(setExceptionRequest(request, e));
		}
		return modelAndView;
	}

	/**
	 * 删除推荐课程
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/appWebsite/delWebsiteCourseDetailById/{id}")
	@ResponseBody
	public Map<String, Object> deleteWebsiteCourseDetailById(HttpServletRequest request, @PathVariable Long id) {
		try {
			if (StringUtils.isNotEmpty(id.toString())) {
				// 删除课程分类
				appWebsiteCourseDetailService.deleteWebsiteCourseDetail(id);
				this.setJson(true, "true", null);
			}
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.delWebsiteCourseDetailById--删除课程分类出错", e);
			this.setJson(false, "false", null);
		}
		return json;
	}

	/**
	 * 更新推荐课程跳转
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/appWebsite/doUpdateWebsiteCourseDetail/{id}")
	public ModelAndView doUpdateWebsiteCourseDetail(HttpServletRequest request, @PathVariable("id") Long id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(updateWebsiteCourseDetail);
		try {
			// 获得websiteCourse
			AppWebsiteCourseDetailDTO appWebsiteCourseDetailDTO = appWebsiteCourseDetailService.queryWebsiteCourseDetailById(id);
			modelAndView.addObject("appWebsiteCourseDetailDTO", appWebsiteCourseDetailDTO);
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.doUpdateWebsiteCourseDetail--更新推荐课程跳转出错", e);
			return new ModelAndView(setExceptionRequest(request, e));
		}
		return modelAndView;
	}
	/**
	 * 修改推荐课程
	 *
	 */
	@RequestMapping("/appWebsite/updateWebsiteCourseDetail")
	public String updateWebsiteCourseDetail(HttpServletRequest request, AppWebsiteCourseDetail appWebsiteCourseDetail) {
		try {
			if (ObjectUtils.isNotNull(appWebsiteCourseDetail)) {
				appWebsiteCourseDetailService.updateWebsiteCourseDetail(appWebsiteCourseDetail);
			}
		} catch (Exception e) {
			logger.error("AdminAppWebsiteCourseController.updateWebsiteCourse--修改推荐课程出错", e);
			return setExceptionRequest(request, e);
		}
		return "redirect:/admin/appWebsite/websiteCourseDetailPage";
	}
    /**
     * 课程列表(推荐课程用)
     *
     * @return
     */
    @RequestMapping("/appWebsite/selectCourse")
    public String selectCourse(HttpServletRequest request, @ModelAttribute("page") PageEntity page,
                                            @ModelAttribute("queryCourse") QueryCourse queryCourse) {
        try {
            // 页面传来的数据放到page中
            this.setPage(page);
            this.getPage().setPageSize(12);
            //添加时间倒叙
            queryCourse.setOrder(2);
            // 搜索课程列表
            List<CourseDto> courseList = appCourseService.getAppCourseListPage(queryCourse, this.getPage());
            request.setAttribute("courseList", courseList);
            request.setAttribute("page", this.getPage());
            request.setAttribute("course", queryCourse);
            List<AppWebsiteCourse> appWebsiteCourses=appWebsiteCourseService.queryWebsiteCourseList();
            request.setAttribute("appWebsiteCourses", appWebsiteCourses);
        } catch (Exception e) {
            logger.error("AdminAppWebsiteCourseController.selectCourse", e);
            return setExceptionRequest(request, e);
        }
        return selectCourse;
    }

}
