package io.wangxiao.order.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper = false)
public class QueryShopcart implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 6757060331190184782L;
    private Long id;
    private Long goodsid;
    private Long userid;
    private Long type;
    private java.util.Date addTime;
}
