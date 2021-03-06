package com.atdld.os.edu.dao.website;

import java.util.List;



import com.atdld.os.core.entity.PageEntity;
import com.atdld.os.edu.entity.website.WebsiteTruncate;

/**
 * 
 * @author jjl
 * 
 */
public interface WebsiteTruncateDao{



	/**
	 * 添加清空表
	 *
	 * @param WebsiteTruncate
	 */
	public void insertWebsiteTruncate(WebsiteTruncate websiteTruncate);

	/**
	 * 清空表分页列表
	 * 
	 * @param websiteTruncate
	 * @param page
	 * @return
	 */
	public List<WebsiteTruncate> getTruncatePageList(WebsiteTruncate websiteTruncate, PageEntity page);

	/**
	 * 删除清空表
	 * 
	 * @param ids
	 */
	public void delTruncateByIds(String ids);

	/**
	 * 查询清空表
	 * 
	 * @param id
	 * @return
	 */
	public WebsiteTruncate getWebsiteTruncateById(Long id);

	/**
	 * 更新清空表
	 * 
	 * @param WebsiteTruncate
	 */
	public void updateWebsiteTruncate(WebsiteTruncate websiteTruncate);

	/**
	 * 清空表
	 * 
	 * @param ids
	 */
	public void truncateTable(String tableName);
	
	/**
	 * 查询清空表集合
	 * 
	 * @param ids
	 */
	public List<WebsiteTruncate> getTruncateList(String ids,String type);
}
