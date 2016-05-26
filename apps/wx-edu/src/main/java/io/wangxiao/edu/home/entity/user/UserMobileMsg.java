package io.wangxiao.edu.home.entity.user;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户短信消息
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class UserMobileMsg implements Serializable {

    private int id;//主键
    private Long userId;//用户id
    private String mobile;//手机号
    private String content;//内容
    private Date createTime;//创建时间
    private String loginName;//操作人
    private String startDate;//开始时间
    private String endDate;//结束时间
    private Date sendTime;//定时发送时间
    private Integer status;//1 已发送 2 未发送
    private Integer type;//1 正常 2 定时
}
