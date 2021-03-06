package com.atdld.os.api.course.entity;

import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class CourseTeacher implements Serializable{
    private Long id;
    private Long courseId;
    private Long teacherId;
}
