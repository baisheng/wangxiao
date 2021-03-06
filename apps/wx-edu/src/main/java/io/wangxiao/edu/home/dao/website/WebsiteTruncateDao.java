package io.wangxiao.edu.home.dao.website;

import io.wangxiao.commons.entity.PageEntity;
import io.wangxiao.edu.home.entity.website.WebsiteTruncate;

import java.util.List;

public interface WebsiteTruncateDao {


    /**
     * 添加清空表
     *
     * @param WebsiteTruncate
     */
    void insertWebsiteTruncate(WebsiteTruncate websiteTruncate);

    /**
     * 清空表分页列表
     *
     * @param websiteTruncate
     * @param page
     * @return
     */
    List<WebsiteTruncate> getTruncatePageList(WebsiteTruncate websiteTruncate, PageEntity page);

    /**
     * 删除清空表
     *
     * @param ids
     */
    void delTruncateByIds(String ids);

    /**
     * 查询清空表
     *
     * @param id
     * @return
     */
    WebsiteTruncate getWebsiteTruncateById(Long id);

    /**
     * 更新清空表
     *
     * @param WebsiteTruncate
     */
    void updateWebsiteTruncate(WebsiteTruncate websiteTruncate);

    /**
     * 清空表
     *
     * @param ids
     */
    void truncateTable(String tableName);

    /**
     * 查询清空表集合
     *
     * @param ids
     */
    List<WebsiteTruncate> getTruncateList(String ids, String type);
}
