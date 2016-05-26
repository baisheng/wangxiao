package com.atdld.os.app.service.website;

import java.util.List;

import com.atdld.os.app.entity.website.WebsiteLogin;
import com.atdld.os.core.entity.PageEntity;

/**
 *
 * 登陆统计
 */
public interface WebsiteLoginService {
	/**
	 * 添加登陆记录
	 */
	public void insertWebsiteLogin(WebsiteLogin websiteLogin);

	/**
	 * 登陆统计分页列表
	 */
	public List<WebsiteLogin> getWebsiteLoginPageList(WebsiteLogin websiteLogin, PageEntity page);

}
