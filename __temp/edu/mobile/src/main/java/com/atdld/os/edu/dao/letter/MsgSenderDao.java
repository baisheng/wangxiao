package com.atdld.os.edu.dao.letter;

import java.util.Date;
import java.util.List;

import com.atdld.os.core.entity.PageEntity;
import com.atdld.os.edu.entity.letter.MsgSender;

/**
 * @author :
 * @ClassName com.atdld.os.sns.dao.letter.MsgSenderDao
 * @description 站内信发件箱的Dao
 * @Create Date : 2014-1-26 下午1:58:49
 */
public interface MsgSenderDao {
    /**
     * 添加站内信发件箱
     *
     * @param msgSender 站内信实体
     * @throws Exception
     */
    public Long addMsgSender(MsgSender msgSender) throws Exception;

    /**
     * 查询站内信发件箱
     *
     * @param MsgSender 站内信发件箱实体
     * @param page      分页参数
     * @return List<QueryLetter> 站内信的list
     * @throws Exception
     */
    public List<MsgSender> queryMsgSenderByOutbox(MsgSender msgSender, PageEntity page) throws Exception;

    /**
     * 删除发件箱
     *
     * @param msgReceive 站内信实体 通过站内信的id
     * @throws Exception
     */
    public Long delLetterOutbox(MsgSender msgSender) throws Exception;

    /**
     * 删除站内信过期消息
     */
    public Long delMsgSenderPast(Date time) throws Exception;

    /**
     * 清空站内信发件箱
     */
    public Long delAllOutbox(Long cusId) throws Exception;

    /**
     * 删除传入的ids
     */
    public Long delMsgSenderByids(String ids) throws Exception;
}
