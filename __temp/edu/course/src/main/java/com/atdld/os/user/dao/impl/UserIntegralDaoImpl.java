package com.atdld.os.user.dao.impl;

import com.atdld.os.ObjectUtils;
import com.atdld.os.dao.impl.common.GenericDaoImpl;
import com.atdld.os.entity.PageEntity;
import com.atdld.os.user.dao.UserIntegralDao;
import com.atdld.os.user.entity.UserIntegral;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * UserIntegral
 * User:
 * Date: 2014-05-27
 */
@Repository("userIntegralDao")
public class UserIntegralDaoImpl extends GenericDaoImpl implements UserIntegralDao {
    /**
     * 添加UserIntegral
     *
     * @param userIntegral 要添加的UserIntegral
     * @return id
     */
    public Long addUserIntegral(UserIntegral userIntegral) {
        return this.insert("UserIntegralMapper.createUserIntegral", userIntegral);
    }

    /**
     * 根据id删除一个UserIntegral
     *
     * @param id 要删除的id
     */
    public void deleteUserIntegralById(Long id) {
        this.delete("UserIntegralMapper.deleteUserIntegralById", id);
    }

    /**
     * 修改UserIntegral
     *
     * @param userIntegral 要修改的UserIntegral
     */
    public void updateUserIntegral(UserIntegral userIntegral) {
        this.update("UserIntegralMapper.updateUserIntegral", userIntegral);
    }

    /**
     * 根据id获取单个UserIntegral对象
     *
     * @param id 要查询的id
     * @return UserIntegral
     */
    public UserIntegral getUserIntegralById(Long id) {
        return this.selectOne("UserIntegralMapper.getUserIntegralById", id);
    }

    /**
     * 根据条件获取UserIntegral列表
     *
     * @param userIntegral 查询条件
     * @return List<UserIntegral>
     */
    public List<UserIntegral> getUserIntegralList(UserIntegral userIntegral) {
        return this.selectList("UserIntegralMapper.getUserIntegralList", userIntegral);
    }

    /**
     * 查詢用戶积分列表分頁
     *
     * @param userIntegral
     * @param page
     * @return
     */
    public List<UserIntegral> getUserIntegralListPage(UserIntegral userIntegral, PageEntity page) {
        return this.queryForListPage("UserIntegralMapper.getUserIntegralListPage", userIntegral, page);
    }

    /**
     * 根据用户Id获得积分
     *
     * @param userId
     * @return
     */
    public UserIntegral getUserIntegralByUserId(Long userId) {
        List<UserIntegral> userIntegralList = this.selectList("UserIntegralMapper.getUserIntegralByUserId", userId);
        if (ObjectUtils.isNotNull(userIntegralList) && userIntegralList.size() > 0) {
            return userIntegralList.get(0);
        }
        return null;
    }
}
