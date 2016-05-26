package io.wangxiao.edu.home.service.impl.coupon;

import io.wangxiao.commons.entity.PageEntity;
import io.wangxiao.edu.home.dao.coupon.CouponDao;
import io.wangxiao.edu.home.entity.coupon.Coupon;
import io.wangxiao.edu.home.entity.coupon.CouponDTO;
import io.wangxiao.edu.home.entity.coupon.CouponLimit;
import io.wangxiao.edu.home.entity.coupon.QueryCoupon;
import io.wangxiao.edu.home.entity.course.Course;
import io.wangxiao.edu.home.service.coupon.CouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Coupon管理接口
 */
@Service("couponService")
public class CouponServiceImpl implements CouponService {

    @Autowired
    private CouponDao couponDao;

    /**
     * 添加Coupon
     *
     * @param coupon 要添加的Coupon
     * @return id
     */
    public Long addCoupon(Coupon coupon) {
        return couponDao.addCoupon(coupon);
    }

    /**
     * 根据id删除一个Coupon
     *
     * @param id 要删除的id
     */
    public void deleteCouponById(Long id) {
        couponDao.delCouponById(id);
    }

    /**
     * 修改Coupon
     *
     * @param coupon 要修改的Coupon
     */
    public void updateCoupon(Coupon coupon) {
        couponDao.updateCoupon(coupon);
    }

    /**
     * 修改Coupon使用数量
     *
     * @param coupon 要修改的Coupon
     */
    public void updateCouponUserNum(Long id) {
        couponDao.updateCouponUserNum(id);
    }

    /**
     * 根据id获取单个Coupon对象
     *
     * @param id 要查询的id
     * @return Coupon
     */
    public Coupon getCouponById(Long id) {
        return couponDao.getCouponById(id);
    }

    /**
     * 根据条件获取Coupon列表
     *
     * @param coupon 查询条件
     * @return List<Coupon>
     */
    public List<Coupon> getCouponList(Coupon coupon) {
        return couponDao.getCouponList(coupon);
    }

    /**
     * 优惠券分页列表
     *
     * @param queryCoupon
     * @param page
     * @return
     */
    public List<CouponDTO> getCouponPage(QueryCoupon queryCoupon, PageEntity page) {
        return couponDao.getCouponPage(queryCoupon, page);
    }

    /**
     * 优惠券课程限制
     */
    public void addCouponLimitCourse(List<CouponLimit> couponLimits) {
        couponDao.addCouponLimitCourse(couponLimits);

    }

    /**
     * 查看优惠券
     *
     * @param id
     * @return
     */
    public CouponDTO getCouponDTOById(Long id) {
        return couponDao.getCouponDTOById(id);
    }

    /**
     * 优惠券id查找限制课程
     *
     * @param id
     * @return
     */
    public List<Course> getCouponLimitCourseById(Long id) {
        return couponDao.getCouponLimitCourseById(id);
    }


}