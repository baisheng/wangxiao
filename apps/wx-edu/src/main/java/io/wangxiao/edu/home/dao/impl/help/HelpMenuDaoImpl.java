package io.wangxiao.edu.home.dao.impl.help;

import io.wangxiao.commons.dao.impl.GenericDaoImpl;
import io.wangxiao.edu.home.dao.help.HelpMenuDao;
import io.wangxiao.edu.home.entity.help.HelpMenu;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("helpMenuDao")
public class HelpMenuDaoImpl extends GenericDaoImpl implements HelpMenuDao {

    /**
     * 查询所有一级菜单
     *
     * @return HelpMenu
     */
    public List<HelpMenu> getHelpMenuOne() {
        return this.selectList("HelpMenuMapper.getHelpMenuOneAll", 0);
    }

    /**
     * 根据一级菜单ID查询二级菜单
     *
     * @return HelpMenu
     */
    public List<HelpMenu> getHelpMenuTwoByOne(Long id) {
        return this.selectList("HelpMenuMapper.getHelpMenuTwoByOneId", id);
    }

    /**
     * 删除菜单
     *
     * @param id
     */
    public void delHelpMenuById(Long id) {
        this.delete("HelpMenuMapper.delHelpMenuById", id);
    }

    /**
     * 更新菜单
     *
     * @param HelpMenu
     */
    public void updateHelpMenuById(HelpMenu helpMenu) {
        this.update("HelpMenuMapper.updateHelpMenuById", helpMenu);
    }

    /**
     * 添加菜单
     *
     * @param HelpMenu
     * @return id
     */
    public Long createHelpMenu(HelpMenu helpMenu) {
        return this.insert("HelpMenuMapper.createHelpMenu", helpMenu);
    }

    /**
     * ID查找菜单
     *
     * @param id
     * @return
     */
    public HelpMenu getHelpMenuById(Long id) {
        return this.selectOne("HelpMenuMapper.getHelpMenuById", id);
    }
}

