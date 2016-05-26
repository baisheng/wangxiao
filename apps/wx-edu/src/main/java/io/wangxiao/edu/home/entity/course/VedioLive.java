package io.wangxiao.edu.home.entity.course;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper = false)
public class VedioLive implements Serializable {
    private Long id;
    private String title;
    private String code;
    private String teacher;
    private java.util.Date liveTime;
    private Long joinNum;
    private String content;
    private java.util.Date endTime;
    private java.util.Date addTime;
    private java.util.Date updateTime;
    private String dateFalg;
}
