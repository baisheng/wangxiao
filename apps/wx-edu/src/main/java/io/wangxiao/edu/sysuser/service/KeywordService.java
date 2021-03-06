package io.wangxiao.edu.sysuser.service;

import io.wangxiao.commons.entity.PageEntity;
import io.wangxiao.edu.sysuser.entity.Keyword;

import java.util.List;

public interface KeywordService {

    /**
     * 添加Keyword
     *
     * @param keyword 要添加的Keyword
     * @return id
     */
    java.lang.Long addKeyword(Keyword keyword);

    /**
     * 根据id删除一个Keyword
     *
     * @param id 要删除的id
     */
    void deleteKeywordById(Long id);

    /**
     * 修改Keyword
     *
     * @param keyword 要修改的Keyword
     */
    void updateKeyword(Keyword keyword);

    /**
     * 根据id获取单个Keyword对象
     *
     * @param id 要查询的id
     * @return Keyword
     */
    Keyword getKeywordById(Long id);

    /**
     * 根据条件获取Keyword列表
     *
     * @param keyword 查询条件
     * @return List<Keyword>
     */
    List<Keyword> getKeywordList(Keyword keyword, PageEntity page);

    /**
     * 过滤处理
     *
     * @param str
     * @return
     */
    String doFilter(String str);

    /**
     * 获取全部过滤词
     *
     * @return
     */
    List<Keyword> getAllKeywords();

}