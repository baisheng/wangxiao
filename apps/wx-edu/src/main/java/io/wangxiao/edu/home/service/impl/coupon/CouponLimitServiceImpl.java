package io.wangxiao.edu.home.service.impl.coupon;

import io.wangxiao.edu.home.dao.coupon.CouponLimitDao;
import io.wangxiao.edu.home.entity.coupon.CouponLimit;
import io.wangxiao.edu.home.service.coupon.CouponLimitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * CouponLimit管理接口
 */
@Service("couponLimitService")
public class CouponLimitServiceImpl implements CouponLimitService {

    @Autowired
    private CouponLimitDao couponLimitDao;

    /**
     * 添加CouponLimit
     *
     * @param couponLimit 要添加的CouponLimit
     * @return id
     */
    public java.lang.Long addCouponLimit(CouponLimit couponLimit) {
        return couponLimitDao.addCouponLimit(couponLimit);
    }

    /**
     * 根据id删除一个CouponLimit
     *
     * @param id 要删除的id
     */
    public void deleteCouponLimitById(Long id) {
        couponLimitDao.deleteCouponLimitById(id);
    }

    /**
     * 修改CouponLimit
     *
     * @param couponLimit 要修改的CouponLimit
     */
    public void updateCouponLimit(CouponLimit couponLimit) {
        couponLimitDao.updateCouponLimit(couponLimit);
    }

    /**
     * 根据id获取单个CouponLimit对象
     *
     * @param id 要查询的id
     * @return CouponLimit
     */
    public CouponLimit getCouponLimitById(Long id) {
        return couponLimitDao.getCouponLimitById(id);
    }

    /**
     * 根据条件获取CouponLimit列表
     *
     * @param couponLimit 查询条件
     * @return List<CouponLimit>
     */
    public List<CouponLimit> getCouponLimitList(CouponLimit couponLimit) {
        return couponLimitDao.getCouponLimitList(couponLimit);
    }
}