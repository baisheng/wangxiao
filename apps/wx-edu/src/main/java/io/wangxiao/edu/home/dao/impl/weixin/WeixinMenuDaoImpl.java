package io.wangxiao.edu.home.dao.impl.weixin;

import io.wangxiao.commons.dao.impl.GenericDaoImpl;
import io.wangxiao.edu.home.dao.weixin.WeixinMenuDao;
import io.wangxiao.edu.home.entity.weixin.WeixinMenu;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("weixinMenuDao")
public class WeixinMenuDaoImpl extends GenericDaoImpl implements WeixinMenuDao {

    /**
     * 获取自定义菜单一级菜单集合
     *
     * @return 一级菜单集合
     */
    public List<WeixinMenu> getWeixinFirstMenu() {
        return this.selectList("WeixinMenuMapper.getWeixinFirstMenu", 0);
    }

    /**
     * 根据一级菜单ID获取自定义菜单二级菜单集合
     *
     * @return 二级菜单集合
     */
    public List<WeixinMenu> getWeixinSecondMenuByParentId(Long id) {
        return this.selectList("WeixinMenuMapper.getWeixinSecondMenuByParentId", id);
    }

    /**
     * 获取自定义菜单启用一级菜单集合
     *
     * @return 一级菜单集合
     */
    public List<WeixinMenu> getWeixinFirstEnableMenu() {
        return this.selectList("WeixinMenuMapper.getWeixinFirstEnableMenu", 0);
    }

    /**
     * 根据一级菜单ID获取自定义菜单启用二级菜单集合
     *
     * @return 二级菜单集合
     */
    public List<WeixinMenu> getWeixinSecondEnableMenuByParentId(Long id) {
        return this.selectList("WeixinMenuMapper.getWeixinSecondEnableMenuByParentId", id);
    }

    /**
     * 根据ID删除菜单及子菜单
     */
    public void delWeixinMenuById(Long id) {
        this.delete("WeixinMenuMapper.delWeixinMenuById", id);
    }

    /**
     * 添加菜单
     */
    public Long addWeixinMenu(WeixinMenu weixinMenu) {
        return this.insert("WeixinMenuMapper.addWeixinMenu", weixinMenu);
    }

    /**
     * 更新菜单
     */
    public void updateWeixinMenu(WeixinMenu weixinMenu) {
        this.update("WeixinMenuMapper.updateWeixinMenu", weixinMenu);
    }

}


