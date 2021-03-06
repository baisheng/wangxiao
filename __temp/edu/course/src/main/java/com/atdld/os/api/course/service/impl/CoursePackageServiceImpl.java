package com.atdld.os.api.course.service.impl;

import com.atdld.os.core.util.ObjectUtils;
import com.atdld.os.core.util.StringUtils;
import com.atdld.os.edu.dao.course.CoursePackageDao;
import com.atdld.os.edu.entity.course.Course;
import com.atdld.os.edu.entity.course.CoursePackage;
import com.atdld.os.edu.service.course.CoursePackageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Course管理接口 User:  Date: 2014-05-27
 */
@Service("coursePackageService")
public class CoursePackageServiceImpl implements CoursePackageService {
	@Autowired
	private CoursePackageDao coursePackageDao;
	  /**
     * 添加CoursePackage
     */
    public void addCoursePackageBatch(String ids,Long courseId){
    	if(ObjectUtils.isNotNull(courseId)&&StringUtils.isNotEmpty(ids)){
    		String[] courseList= ids.split(",");
    		List<CoursePackage> coursePackageList = new ArrayList<CoursePackage>();
    		//筛选已经添加过的课程
    		for(String str:courseList){
    			if(StringUtils.isNotEmpty(str)){
    					CoursePackage coursePackage = new CoursePackage();
    					coursePackage.setCourseId(Long.valueOf(str));
    					coursePackage.setMainCourseId(courseId);
    					coursePackage.setOrderNum(0L);
                    if(ObjectUtils.isNull(coursePackageDao.queryCoursePackageById(coursePackage))){
    					coursePackageList.add(coursePackage);
    				}
    			}
    		}
    		//批量添加课程包关联的课程
    		if(ObjectUtils.isNotNull(coursePackageList)){
    			coursePackageDao.addCoursePackageBatch(coursePackageList);
    		}
    	}
    }
    /**
	 * 删除CoursePackage
	 */
	public void delCoursePackage(CoursePackage coursePackage){
		coursePackageDao.delCoursePackage(coursePackage);
	}
	
	 /**
     * 修改套餐课程下的课程排序
     * @param coursePackage
     */
	public void updateCoursePackageOrderNum(CoursePackage coursePackage) {
		coursePackageDao.updateCoursePackageOrderNum(coursePackage);
	}
	
}