package io.wangxiao.edu.home.service.user;

import io.wangxiao.commons.entity.PageEntity;
import io.wangxiao.edu.home.entity.user.QueryUserAccounthistory;
import io.wangxiao.edu.home.entity.user.UserAccounthistory;

import java.util.List;

/**
 * UserAccounthistory管理接口
 */
public interface UserAccounthistoryService {

    /**
     * 添加UserAccounthistory
     *
     * @param userAccounthistory 要添加的UserAccounthistory
     * @return id
     */
    java.lang.Long addUserAccounthistory(UserAccounthistory userAccounthistory);

    /**
     * 根据id获取单个UserAccounthistory对象
     *
     * @param id 要查询的id
     * @return UserAccounthistory
     */
    UserAccounthistory getUserAccounthistoryById(Long id);

    /**
     * 根据条件获取UserAccounthistory列表
     *
     * @param userAccounthistory 查询条件
     * @return List<UserAccounthistory>
     */
    List<UserAccounthistory> getUserAccounthistoryList(UserAccounthistory userAccounthistory);


    /**
     * 账户历史 不隐藏后台操作 后台查看
     *
     * @param queryUserAccounthistory
     * @param page
     * @return
     */
    List<UserAccounthistory> getUserAccountHistroyListByCondition(QueryUserAccounthistory queryUserAccounthistory, PageEntity page);

    /**
     * 账户历史 隐藏后台操作 前台个人中心查看
     *
     * @param queryUserAccounthistory
     * @param page
     * @return
     */
    List<UserAccounthistory> getWebUserAccountHistroyListByCondition(QueryUserAccounthistory queryUserAccounthistory, PageEntity page);

}