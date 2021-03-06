package com.atdld.os.sns.dao.suggest;

import java.util.List;
import java.util.Map;

import com.atdld.os.core.entity.PageEntity;
import com.atdld.os.sns.entity.suggest.QuerySugSuggest;
import com.atdld.os.sns.entity.suggest.SugSuggest;
import com.atdld.os.sns.entity.suggest.SugSuggestReply;

/**
 * SugSuggest管理接口 User:  Date: 2013-12-26
 */
public interface SugSuggestDao {

    /**
     * 添加SugSuggest
     *
     * @param sugSuggest 要添加的SugSuggest
     * @return id
     */
    public java.lang.Long addSugSuggest(SugSuggest sugSuggest);

    /**
     * 根据id删除一个SugSuggest
     *
     * @param id 要删除的id
     */
    public Long deleteSugSuggestById(Long id);

    /**
     * 修改SugSuggest
     *
     * @param sugSuggest 要修改的SugSuggest
     */
    public void updateSugSuggest(SugSuggest sugSuggest);

    /**
     * 更具建议的id修改SugSuggest的内容和标题
     *
     * @param sugSuggest 要修改的SugSuggest
     */
    public void updateSugSuggestBySugSuggestIdForContentAndTitle(SugSuggest sugSuggest);

    /**
     * 根据id获取单个SugSuggest对象
     *
     * @param id 要查询的id
     * @return SugSuggest
     */
    public SugSuggest getSugSuggestById(Long id);

    /**
     * 根据条件获取SugSuggest列表
     *
     * @param sugSuggest 查询条件
     * @param page       分页参数
     * @return List<SugSuggest>
     */
    public List<SugSuggest> getSugSuggestList(QuerySugSuggest querySugSuggest, PageEntity page);

    /**
     * 通过type查询建议
     *
     * @param sugSuggest 传入建议类型
     * @return List<SugSuggest>
     */
    public List<SugSuggest> querySugSuggestListByStatus(SugSuggest sugSuggest, PageEntity page);

    /**
     * 通过cusId 和status状态 用户id查询我的建议
     *
     * @param cusId 用户id
     * @param page  分页参数
     * @return
     */
    public List<SugSuggest> querySuggestByCusIdAndStatus(SugSuggest sugSuggest, PageEntity page);

    /**
     * 我回答的建议
     *
     * @param cusId 用户id
     * @param page  分页参数
     * @return List<SugSuggest>
     */
    public List<SugSuggest> querySuggestByReplyCusId(SugSuggestReply sugSuggestReply, PageEntity page);

    /**
     * 我被推荐的建议
     *
     * @param cusId 当前用户id
     * @param page  分页参数
     * @return List<SugSuggest>
     */
    public List<SugSuggest> querySuggestByReplyCusIdAndIsBest(SugSuggestReply sugSuggestReply, PageEntity page);

    /**
     * 推荐列表
     *
     * @param querySugSuggest
     * @param page            分页参数
     * @return List<SugSuggest>
     */
    public List<SugSuggest> querySuggestRecommend(QuerySugSuggest querySugSuggest, PageEntity page);


    /**
     * 查询推荐的建议的智慧排行分页
     *
     * @param querySugSuggest 传入类型是意境还是务实
     * @param page            分页参数
     * @return List<SugSuggest>
     */
    public List<SugSuggest> queryRecommendSuggestOrderByWisdomNum(QuerySugSuggest querySugSuggest, PageEntity page);

    /**
     * 最新问题排行
     *
     * @param size 传入显示的条数
     * @return List<SugSuggest>
     */
    public List<SugSuggest> querySuggestOrderById(int size);

    /**
     * 查询推荐的建议的热心排行
     *
     * @param size 传入显示的条数
     * @return List<SugSuggest>
     */
    public List<SugSuggest> queryRecommendSuggestOrderByHotNum(int size);

    /**
     * 给建议的智慧次数加一
     *
     * @param sugSuggest 传入建议id给该建议智慧次数加一
     */
    public Long updateSugSuggestBySuggestIdForWisdomScore(SugSuggest sugSuggest);

    /**
     * 给建议的热心次数字段加一
     *
     * @param sugSuggest 传入要更新的建议的id
     */
    public Long updateSugSuggestBySuggestIdForHotScore(SugSuggest sugSuggest);

    /**
     * 给建议的热度次数字段加一
     *
     * @param sugSuggest 传入要更新的建议的id
     */
    public Long updateSugSuggestBySuggestIdFoHeat(SugSuggest sugSuggest);

    /**
     * 该建议id的回复数更新
     *
     * @param suggestId 建议id
     * @param count     更新的数量
     */
    public void updateSugSuggestBySuggestIdCount(Long suggestId, int count);

    /**
     * 更新建议的status 通过建议id
     *
     * @param sugSuggest 建议的id 和status状态
     */
    public Long updateSugSuggestBySuggestIdForStatus(SugSuggest sugSuggest);

    /**
     * 根据建议id 置顶该建议
     *
     * @param sugSuggest 传入建议id 和top
     * @return Long
     */
    public Long updateSugSuggestBySuggestIdForTop(SugSuggest sugSuggest);

    /**
     * 根据回复id 更新title content
     *
     * @param sugSuggest 传入回复id title 和content
     * @return Long
     */
    public Long updateSugSuggestBySuggestIdForContentAndTitle(SugSuggest sugSuggest);

    /**
     * 根据建议id更新建议的浏览次数
     *
     * @param sugSuggestId 建议id
     * @param count        浏览数
     * @return
     */
    public Long updateSugSuggestBySuggestIdForBrowseNumAddCount(Long sugSuggestId, int count);

    /**
     * 根据建议id更新建议的回复次数减一
     *
     * @param sugSuggest 传入建议id
     * @return Integer
     */
    public Long updateSugSuggestBySuggestIdForReplycountSubtractOne(SugSuggest sugSuggest);

    /**
     * lucene方法 查询传入建议id 查询建议
     *
     * @param SugSuggestIds 建议id的list
     * @return List<SugSuggest>
     * @throws Exception
     */
    public List<SugSuggest> getLuceneSugSuggestByIds(List<Long> sugSuggestIds) throws Exception;

    /**
     * 查出这个建议id之后的建议行数和最大建议id
     *
     * @param SugSuggestId 起始建议id
     * @return Map<String,Object> 返回两个参数一个是建议行数和最大建议id
     * @throws Exception
     */
    public Map<String, Object> getSugSuggestCountAfterId(Long sugSuggestId) throws Exception;

    /**
     * 查出从starSugSuggestId（起始建议id）开始的建议 一共 pageSize（需要查出多少条）条
     * 要在minSugSuggestId（查询的where条件的最小建议id
     * ）和maxSugSuggestId（查询的where条件的最大建议id）之间查
     *
     * @param starWeiBoId 起始建议id
     * @param pageSize    需要查出多少条
     * @param minWeiBoId  查询的where条件的最小建议id
     * @param maxWeiBoId  查询的where条件的最大建议id
     * @return List<WeiBo>
     * @throws Exception
     */
    public List<SugSuggest> getSugSuggestByPageQuery(Long beginRow, Long pageSize, Long minSugSuggestId, Long maxSugSuggestId) throws Exception;

}