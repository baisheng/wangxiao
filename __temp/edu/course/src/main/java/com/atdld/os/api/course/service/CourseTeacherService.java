package com.atdld.os.api.course.service;

import com.atdld.os.api.course.entity.CourseProfile;
import com.atdld.os.api.course.entity.CourseTeacher;
import com.atdld.os.api.course.entity.QueryCourseProfile;
import com.atdld.os.entity.PageEntity;

import java.util.List;


/**
 * CourseTeacher管理接口
 * User:
 * Date: 2014-05-27
 */
public interface CourseTeacherService {

    /**
     * 添加CourseTeacher
     * @param courseTeacher 要添加的CourseTeacher
     * @return id
     */
    public Long addCourseTeacher(CourseTeacher courseTeacher);

    /**
     * 根据id删除一个CourseTeacher
     * @param id 要删除的id
     */
    public void deleteCourseTeacherById(Long id);

    /**
     * 修改CourseTeacher
     * @param courseTeacher 要修改的CourseTeacher
     */
    public void updateCourseTeacher(CourseTeacher courseTeacher);

    /**
     * 根据id获取单个CourseTeacher对象
     * @param id 要查询的id
     * @return CourseTeacher
     */
    public CourseTeacher getCourseTeacherById(Long id);

    /**
     * 根据条件获取CourseTeacher列表
     * @param courseTeacher 查询条件
     * @return List<CourseTeacher>
     */
    public List<CourseTeacher> getCourseTeacherList(CourseTeacher courseTeacher);
    /**
     * 根据条件查询课程统计
     * @param map
     * @return
     */
    public List<CourseProfile> getCourseByteacher(QueryCourseProfile queryCourseProfile, PageEntity entity);
}