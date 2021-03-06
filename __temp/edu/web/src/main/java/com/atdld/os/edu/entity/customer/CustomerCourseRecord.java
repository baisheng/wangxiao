package com.atdld.os.edu.entity.customer;

import lombok.Data;
import lombok.EqualsAndHashCode;


/**
 * @ClassName com.atdld.os.edu.entity.customer.CustomerCourseRecord
 * @description 用户参加自定义记录表
 * @author
 * @version 2014-09-25
 */
@Data
@EqualsAndHashCode(callSuper=false)
public class CustomerCourseRecord {
	
	private int recordId;
	private long customerCourseId;
	private long userId;
	private java.util.Date joinTime;

}
