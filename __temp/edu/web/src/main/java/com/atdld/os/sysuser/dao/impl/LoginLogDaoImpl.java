package com.atdld.os.sysuser.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.atdld.os.core.dao.impl.common.GenericDaoImpl;
import com.atdld.os.core.entity.PageEntity;
import com.atdld.os.sysuser.dao.LoginLogDao;
import com.atdld.os.sysuser.entity.AdminLoginLog;
import com.atdld.os.sysuser.entity.LoginLog;
import com.atdld.os.sysuser.entity.QueryLoginLogCondition;

/**
 * @author :
 * @ClassName com.supergenius.sns.dao.impl.sysuser.LoginLogDaoImpl
 * @description 后台用户登录日志
 * @Create Date : 2013-12-17 上午9:37:51
 */
@Repository("loginLogDao")
public class LoginLogDaoImpl extends GenericDaoImpl implements LoginLogDao {
    /**
     * 添加登陆日志
     */
    @Override
    public void addLoginLog(LoginLog loginLog) {
        this.insert("LoginLogMapper.addLoginLog", loginLog);
    }
    @Override
    public List<AdminLoginLog> getLoginLog() {
    	return this.selectList("LoginLogMapper.getAllUserLog", null);
    }
    @Override
    public void updateLoginLog(AdminLoginLog adminLoginLog) {
    	this.update("LoginLogMapper.updateSysUserLog", adminLoginLog);
    }
    /**
	 * 查询用户的登陆log
	 * 
	 * @param loginLog
	 * @param page
	 * @return
	 */
    public List<LoginLog> getLoginLogList(QueryLoginLogCondition queryLoginLogCondition, PageEntity page) {
    	return this.queryForListPage("LoginLogMapper.getByUserId", queryLoginLogCondition, page);
    }
}
