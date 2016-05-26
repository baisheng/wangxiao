package io.wangxiao.edu.home.constants.enums;

/**
 * @description 积分使用场景区分
 */
public enum IntegralKeyword {
    register,//注册
    login,//登陆
    gift,//兑换礼品
    exam,//做试卷，同一份试卷不可累加
    watch_video,//学员观看视频，每一小节1次不可累加得分
    assess,	//课程评价，同一课程评价不可累加得分
    answer_problem,//回答问题，同一个问题1次不可累加得分
    problem_accrept,//回答问题被采纳为最佳答案
    rebate,	//返利 获取下线反馈的积分
}
