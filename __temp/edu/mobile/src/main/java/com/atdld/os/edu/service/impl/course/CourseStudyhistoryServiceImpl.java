package com.atdld.os.edu.service.impl.course;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.httpclient.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atdld.os.common.constants.CommonConstants;
import com.atdld.os.common.service.SnsHessianService;
import com.atdld.os.common.service.WebHessianService;
import com.atdld.os.core.entity.PageEntity;
import com.atdld.os.core.util.ObjectUtils;
import com.atdld.os.core.util.StringUtils;
import com.atdld.os.core.util.web.WebUtils;
import com.atdld.os.edu.constants.enums.CourseProfileType;
import com.atdld.os.edu.dao.course.CourseStudyhistoryDao;
import com.atdld.os.edu.entity.course.Course;
import com.atdld.os.edu.entity.course.CourseKpoint;
import com.atdld.os.edu.entity.course.CourseProfile;
import com.atdld.os.edu.entity.course.CourseStudyhistory;
import com.atdld.os.edu.service.course.CourseKpointService;
import com.atdld.os.edu.service.course.CourseProfileService;
import com.atdld.os.edu.service.course.CourseService;
import com.atdld.os.edu.service.course.CourseStudyhistoryService;

/**
 * CourseStudyhistory管理接口 User:  Date: 2014-05-27
 */
@Service("courseStudyhistoryService")
public class CourseStudyhistoryServiceImpl implements CourseStudyhistoryService {

	@Autowired
	private CourseStudyhistoryDao courseStudyhistoryDao;
	@Autowired
	private CourseService courseService;
	@Autowired
	private CourseKpointService courseKpointService;
	@Autowired
	private CourseProfileService courseProfileService;
	@Autowired
	private SnsHessianService snsHessianService;
	@Autowired
	private WebHessianService webHessianService;
	/**
	 * 添加CourseStudyhistory
	 * 
	 * @param courseStudyhistory
	 *            要添加的CourseStudyhistory
	 * @return id
	 */
	public java.lang.Long addCourseStudyhistory(CourseStudyhistory courseStudyhistory) {
		return courseStudyhistoryDao.addCourseStudyhistory(courseStudyhistory);
	}

	/**
	 * 添加播放记录和播放次数
	 */
	/*public void playertimes(CourseStudyhistory courseStudyhistory) {
		Course course = courseService.getCourseById(courseStudyhistory.getCourseId());
		// 判断课程不为空
		if (ObjectUtils.isNull(course)) {
			return;
		}
		// 判断节点不为空
		CourseKpoint courseKpoint = courseKpointService.getCourseKpointById(courseStudyhistory.getKpointId());
		if (ObjectUtils.isNull(courseKpoint)) {
			return;
		}
		// 查询是否添加过记录
		List<CourseStudyhistory> courseStudyhistoryList = getCourseStudyhistoryList(courseStudyhistory);
		if (ObjectUtils.isNull(courseStudyhistoryList)) {
			// 如果没有添加过则添加记录
			// 填充数据
			courseStudyhistory.setKpointName(courseKpoint.getName());
			courseStudyhistory.setCourseName(course.getName());
			courseStudyhistory.setUpdateTime(new Date());
			courseStudyhistory.setDatabak(DateUtil.formatDate(new Date(), "yyyy-MM-dd HH:mm:ss") + ",");
			courseStudyhistory.setPlayercount(1L);
			addCourseStudyhistory(courseStudyhistory);
			
			//观看动态 已经做判断 动态无需判断
			Map<String, String> map = new HashMap<String, String>();
	        map.put("userId",courseStudyhistory.getUserId() + "");//用户id
	        map.put("bizId", courseStudyhistory.getCourseId() + "");// 学员活动（事件）id 商品id 试卷id
	        map.put("type", 11 + "");//11观看课程 12购买了商品 13 考试
	        map.put("desc", "观看了课程");// 动态描述
	        map.put("title", course.getName()+"--"+courseKpoint.getName());// 辅助title
	        map.put("assistId",courseKpoint.getId()+"");// 辅助id
	        String content=WebUtils.replaceTagHTML(course.getTitle());
			if (StringUtils.isNotEmpty(content)) {// 回复的内容
				content=StringUtils.getLength(content, 300);
				map.put("content", content);
			}else{
				map.put("content", content);
			}
			map.put("url", CommonConstants.contextPath+"/front/couinfo/"+courseStudyhistory.getCourseId());//操作url
			snsHessianService.addDynamic(map);
			
		} else {
			// 如果添加过则更新记录
			CourseStudyhistory courseStudy = courseStudyhistoryList.get(0);
			courseStudy.setKpointName(courseKpoint.getName());
			courseStudy.setCourseName(course.getName());
			courseStudy.setUpdateTime(new Date());
			// 更新时间记录存字段
			courseStudy.setDatabak(DateUtil.formatDate(new Date(), "yyyy-MM-dd HH:mm:ss") + "," + courseStudy.getDatabak());
			// 当字符串大于500时截取，留前面最新的
			if (courseStudy.getDatabak().length() > 500) {
				courseStudy.setDatabak(courseStudy.getDatabak().substring(0, 500));
			}
			courseStudy.setPlayercount(courseStudy.getPlayercount() + 1);
			updateCourseStudyhistory(courseStudy);
		}
		// 更新节点播放次数加1
		courseKpointService.updateCourseKpointPlaycountAdd(courseStudyhistory.getKpointId());
		// 更新课程播放次数加1
        Map<String,String> map=new HashMap<String, String>();
        map.put("type", CourseProfileType.playcount.toString());//类型
        map.put("courseId",courseStudyhistory.getCourseId()+"");//课程id
        map.put("count", 1L+"");//1
        map.put("operation",CourseProfile.ADD);//操作
        webHessianService.updateCourseProfile(map);
	}*/

	/**
	 * 根据id删除一个CourseStudyhistory
	 * 
	 * @param id
	 *            要删除的id
	 */
	public void deleteCourseStudyhistoryById(Long id) {
		courseStudyhistoryDao.deleteCourseStudyhistoryById(id);
	}
	
	 /**
     * 根据ids删除CourseStudyhistory
     * @param id 要删除的id
     */
    /*public void delCourseStudyhistory(String ids){
    	courseStudyhistoryDao.delCourseStudyhistory(ids);
    }
	*/
	/**
	 * 修改CourseStudyhistory
	 * 
	 * @param courseStudyhistory
	 *            要修改的CourseStudyhistory
	 */
	public void updateCourseStudyhistory(CourseStudyhistory courseStudyhistory) {
		courseStudyhistoryDao.updateCourseStudyhistory(courseStudyhistory);
	}

	/**
	 * 根据id获取单个CourseStudyhistory对象
	 * 
	 * @param id
	 *            要查询的id
	 * @return CourseStudyhistory
	 */
	public CourseStudyhistory getCourseStudyhistoryById(Long id) {
		return courseStudyhistoryDao.getCourseStudyhistoryById(id);
	}

	/**
	 * 根据条件获取CourseStudyhistory列表
	 * 
	 * @param courseStudyhistory
	 *            查询条件
	 * @return List<CourseStudyhistory>
	 */
	public List<CourseStudyhistory> getCourseStudyhistoryList(CourseStudyhistory courseStudyhistory) {
		return courseStudyhistoryDao.getCourseStudyhistoryList(courseStudyhistory);
	}

	@Override
	public List<CourseStudyhistory> getCourseStudyhistoryListByCondition(CourseStudyhistory courseStudyhistory, PageEntity page) {
		// TODO Auto-generated method stub
		return courseStudyhistoryDao.getCourseStudyhistoryListByCondition(courseStudyhistory, page);
	}
}