package io.wangxiao.edu.home.service.user;

import io.wangxiao.commons.entity.PageEntity;
import io.wangxiao.edu.home.entity.user.UserMobileMsg;

import java.util.Date;
import java.util.List;

public interface UserMobileMsgService {
    /**
     * 添加发送用户短信记录
     *
     * @param userMobileMsg
     * @return
     */
    void addUserMobileMsg(List<UserMobileMsg> userMobileMsgList);

    /**
     * 查询记录
     *
     * @param userMobileMsg
     * @param page
     * @return
     */
    List<UserMobileMsg> queryUserMobileMsgList(UserMobileMsg userMobileMsg, PageEntity page);

    /**
     * 获得单个记录
     *
     * @param id
     * @return
     */
    UserMobileMsg queryUserMobileMsgById(Long id);

    /**
     * 发送短信
     *
     * @param msgContent
     * @param destNumber
     * @param sendTime
     * @param subNumber
     * @param wapURL
     * @throws java.lang.Exception
     */
    void sendEx(String msgContent, String destNumber, String sendTime, String subNumber, String wapURL) throws java.lang.Exception;

    /**
     * 发送短信
     */
    void sendBatchEx(String msgContent, String[] destNumber) throws java.lang.Exception;

    /**
     * 起多个线程批量发送手机
     */
    void batchSendMobileMsg(java.lang.String text, java.lang.String[] mailto, int num);

    /**
     * 查询和当前时间相等的短信记录 发送
     */
    List<UserMobileMsg> queryNowMobileMsgList(Date nowDate);

    /**
     * 修改短信发送状态
     */
    void updateMsgStatus(Long id);

    /**
     * 定时发送  调用的方法
     */
    void timingSendMsg(Date nowDate) throws Exception;

    /**
     * 修改短信
     *
     * @param userMobileMsg
     */
    void updateUserMobileMsg(UserMobileMsg userMobileMsg);

    /**
     * 删除短信
     */
    void delUserMobileMsg(Long id);
}
