package io.wangxiao.edu.home.dao.impl.weixin;

import io.wangxiao.commons.dao.impl.GenericDaoImpl;
import io.wangxiao.edu.home.dao.weixin.WeixinSetDao;
import io.wangxiao.edu.home.entity.weixin.WeixinSetReply;
import org.springframework.stereotype.Repository;

/**
 * 微信常规回复设置
 */

@Repository("weixinSetDao")
public class WeixinSetDaoImpl extends GenericDaoImpl implements WeixinSetDao {
    /**
     * 根据回复类型（如默认、关注时回复）获取常规回复设置
     *
     * @param type
     * @return
     */
    public WeixinSetReply getWeixinSetReply(String type) {
        return this.selectOne("WeixinSetMapper.getWeixinSetReply", type);
    }

    /**
     * 添加常规回复
     *
     * @param weixinSetReply
     */
    public void addSetWeixinReply(WeixinSetReply weixinSetReply) {
        this.insert("WeixinSetMapper.addWeixinSetReply", weixinSetReply);
    }

    /**
     * 更新常规回复
     *
     * @param weixinSetReply
     */
    public void updateSetWeixinReply(WeixinSetReply weixinSetReply) {
        this.update("WeixinSetMapper.updateWeixinSetReply", weixinSetReply);
    }

    /**
     * 根据回复素材ID删除常规回复（回复素材被删除时，同时删除引用者中的回复）
     *
     * @param id
     */
    public void delWeixinSetReply(Long id) {
        this.delete("WeixinSetMapper.delWeixinSetReply", id);
    }

}


