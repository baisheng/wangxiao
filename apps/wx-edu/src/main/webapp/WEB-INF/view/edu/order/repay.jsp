<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>支付课程</title>
</head>
<body class="scrol">

<div class="mb50">
	<section class="container">
		<section class="path-wrap txtOf hLh30">
			<a class="c-999 fsize14" title="" href="${ctx}">首页</a>\<span class="c-333 fsize14">订单支付</span>
		</section>

		<article class="mt30" id="order_init">
			<!--商品清单开始-->
			<div>
				<header class=""><span class="fsize24 c-333">确认课程</span></header>
				<dl id="shopingcart" class="c-order-list of">
					<dt><ul class="c-o-head clearfix of">
							<li class="c-head-li-16"><span>课程</span></li>
							<li class="c-head-li-1"><span>标题</span></li>
							<li class="c-head-li-2"><span>讲师</span></li>
							<li class="c-head-li-3"><span>价格</span></li>
					</ul></dt>
					<c:if test="${not empty orderList}">
					<dd>
						<c:set var="totalMoney" value="0"></c:set>
						<c:forEach items="${orderList }" var="sc">
							<ul class="c-o-tbody clearfix of">
								<li class="c-head-li-16"><div class="c-o-t-img">
									<c:choose>
										<c:when test="${not empty sc.courseLogo}">
											<img src="<%=staticImageServer%>${sc.courseLogo}" class="img-responsive">
										</c:when>
										<c:otherwise>
											<img src="<%=imagesPath%>/static/edu/images/default/default_goods.jpg" class="img-responsive">
										</c:otherwise>
									</c:choose>
								</div></li>
								<li class="c-head-li-36">
									<div class="c-head-title">
										<h6 class="unFw c-666"> ${sc.courseName }</h6>
										<div class="mt10 u-order-desc">
											<p class="c-999 txtOf"> ${sc.courseTitle }</p>
										</div>
									</div>
								</li>
								<li>
									<div class="c-t-wz"><span class="c-666">讲师：<c:forEach items="${sc.teacherList }" var="teacher">${teacher.name}&nbsp;&nbsp;</c:forEach></span></div>
								</li>
								<li>
									<div class="c-t-wz"><span class="c-666">￥${sc.currentPrice }</span></div>
								</li>
							</ul>
							<c:set var="totalMoney" value="${totalMoney+sc.currentPrice }" />
						</c:forEach>
					<dd>
					</c:if>
					<div class="buyCom_price c-666 fr tar mt10 pr10">
						<span>课程数量：<span id="buyCount" class="fsize14 c-orange mr5">${orderList.size()}</span>&nbsp;&nbsp;</span>
						课程金额：<span id="div_totalMoney" class="fsize14 c-orange mr5">￥${totalMoney }</span>
					</div>
				</dl>
			</div>
			<!--商品清单结束-->

			<div  style="display: none;">
				<!-- alipay参数 -->
				<form action="${ctx }/order/bank" name="orderForm" id="orderForm" method="post" target="_blank">
					<input id="orderId" name="orderId" type="hidden" value="${trxorder.id}"/>
					<input id="defaultbank" name="defaultbank" type="hidden" value=""/>
					<input id="payType" name="payType" type="hidden" value="ALIPAY" />
				</form>
			</div>

			<!-- 优惠券编码 -->
			<div style="display: none;">
				<input id="couponCodeHidden" type="hidden" value=""/>
			</div>

			<!--选择支付方式 start-->
			<div class="mt30">
				<header class=""><span class="fsize24 c-333">支付方式</span></header>
				<div class="c-pay-method">
					<div class="of">
						<!--网上支付 -网银 支付开始 -->
						<%-- <header class="c-p-title">网上银行</header>
						<div class="buyB_payPlat">
							<ul class="clearfix">
								<c:if test="${keywordmap.keyword.yee=='ON' }">
									<li><label><input type="radio" value="CEB-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /> <img alt="广大银行" src="/static/edu/images/buy/bank_ZGGDYH.png" /></label></li>
									<li><label><input type="radio" value="ICBC-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中国工商银行" src="/static/edu/images/buy/bank_ZGGSYH.png" /></label></li>
									<li><label><input type="radio" value="CCB-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中国建设银行" src="/static/edu/images/buy/bank_ZGJSYH.png" /></label></li>
									<li><label><input type="radio" value="ABC-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中国农业银行" src="/static/edu/images/buy/bank_ZGNYYH.png" /></label></li>
									<li><label><input type="radio" value="CMBCHINA-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="招商银行" src="/static/edu/images/buy/bank_ZSYH.png" /></label></li>
									<li><label><input type="radio" value="BOC-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中国银行" src="/static/edu/images/buy/bank_ZGYH.png" /></label></li>
									<li><label><input type="radio" value="BOCO-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中国交通银行" src="/static/edu/images/buy/bank_JTYH.png" /></label></li>
									<li><label><input type="radio" value="POST-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中国邮政储蓄银行" src="/static/edu/images/buy/bank_ZGYZCXYH.png" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="CIB-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="兴业银行" src="/static/edu/images/buy/bank_XYYH.png" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="CMBC-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中国民生银行" src="/static/edu/images/buy/bank_ZGMSYH.png" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="ECITIC-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="中兴银行" src="/static/edu/images/buy/bank_ZXYH.png" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="PAB-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="平安银行" src="/static/edu/images/buy/bank_PAYH.png" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="SDB-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="深圳发展银行" src="/static/edu/images/buy/bank_SZFZYH.png" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="SHB-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="上海银行" src="/static/edu/images/buy/bank_SHYH.png" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="BJRCB-NET" name="defaultbank" onclick="checkbank('YEEPAY')" /><img alt="北京农商银行" src="/static/edu/images/buy/bank_BJNSYH.png" /></label></li>
								</c:if>
								<c:if test="${keywordmap.keyword.yee=='OFF' }">
									<li><label><input type="radio" value="ICBCB2C" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /> <img alt="工商" src="/static/edu/images/buy/wal_bank07_gongShang.jpg" /></label></li>
									<li><label><input type="radio" value="CCB" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="建设" src="/static/edu/images/buy/wal_bank08_jianshe.jpg" /></label></li>
									<li><label><input type="radio" value="BOCB2C" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="中国银行" src="/static/edu/images/buy/wal_bank10_zhongGuo.jpg" /></label></li>
									<li><label><input type="radio" value="CMB" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="招商" src="/static/edu/images/buy/wal_bank06_zhaoShang.jpg" /></label></li>
									<li><label><input type="radio" value="COMM" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="交通银行" src="/static/edu/images/buy/wal_bank05_jaotong.jpg" /></label></li>
									<li><label><input type="radio" value="ABC" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="农业" src="/static/edu/images/buy/wal_bank09_nongYe.jpg" /></label></li>
									<li><label><input type="radio" value="CIB" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="兴业" src="/static/edu/images/buy/wal_bank03_xingYe.jpg" /></label></li>
									<li><label><input type="radio" value="CMBC" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="民生" src="/static/edu/images/buy/wal_bank03_minSheng.jpg" /></label></li>
									<li><label><input type="radio" value="CITIC" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="中信" src="/static/edu/images/buy/wal_bank03_zhongXin.jpg" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="GDB" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="广发" src="/static/edu/images/buy/wal_bank03_guangFa.jpg" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="CEBBANK" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="光大" src="/static/edu/images/buy/wal_bank03_guangDa.jpg" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="SPDB" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="浦发" src="/static/edu/images/buy/wal_bank03_fuFa.jpg" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="BJBANK" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="北京农商" src="/static/edu/images/buy/wal_bank03_beiNongShang.jpg" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="POSTGC" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="邮政" src="/static/edu/images/buy/wal_bank04_youZheng.jpg" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="SHBANK" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="上海" src="/static/edu/images/buy/wal_bank03_shanghai.jpg" /></label></li>
									<li class="buyB_payPlatNone"><label><input type="radio" value="GCB" name="alipaybank" onclick="checkbank('ALIPAY_BANK')" /><img alt="广州" src="/static/edu/images/buy/wal_bank03_guangZhou.jpg" /></label></li>
								</c:if>
							</ul>
						</div> --%>
						<!--网上支付 -网银 支付结束 -->
						<!--网上支付 -第三方开始 -->
						<header class="c-p-title">第三方支付平台</header>
						<div class="buyB_payPlat">
							<ul class="clearfix">
								<c:if test="${keywordmap.keyword.yee=='ON' }">
									<li><label>
										<input type="radio" value="00" name="yeepay"  onclick="checkbank('YEEPAY')" style="margin-top:5px;" />
										<img src="/static/edu/images/buy/buyB_pay_yibao.jpg" alt="易宝"  />
									</label></li>
								</c:if>
								<li><label>
									<input type="radio" value="" name="alipay" checked="checked" onclick="checkbank('ALIPAY')"  />
									<img src="/static/edu/images/buy/buyB_pay_kuaiqian3.jpg"  alt="支付宝" />
								</label></li>
								<c:if test="${keywordmap.keyword.verifykq=='ON' }">
									<li><label><input type="radio" value="00" name="kqBank" onclick="checkbank('KUAIQIAN')"   style="margin-top:5px;" />
										<img src="/static/edu/images/buy/buyB_pay_kuaiqian1.jpg" alt="快钱"  />
									</label></li>
								</c:if>
								<c:if test="${keywordmap.keyword.verifywx=='ON' }">
									<li><label>
										<input type="radio" value="" name="weixin" onclick="checkbank('WEIXIN')"  />
										<img src="/static/edu/images/buy/buyB_pay_wx.jpg"  alt="微信" />
									</label></li>
								</c:if>
							</ul>
						</div>
						<!--网上支付 -第三方结束 -->
					</div>
				</div>
			</div>
			<!--选择支付方式 end-->


			<!--结算信息 start-->
			<div class="mt30">
				<header class=""><span class="fsize24 c-333">结算信息</span></header>
				<div class="c-pay-method c-p-m">
					<div>
						<div class="fl">
							<p class="fsize14 c-666">使用代金券可以抵消部分金额哦</p>
							<%--<div class="mt20 coupon-box clearfix">
                                <select style="width: 204px;" onchange="chooseCoupon(this)" name="queryCouponCode.status" class="buyText01 fl" id="queryCoupon">
                                    <option value="">--选择我已有的优惠券--</option>
                                </select>
                            </div> --%>
							<div class="mt20 coupon-box clearfix">
								<input type="text" placeholder="请输入优惠券编码" name="" onkeyup="inputcode()" id="couponCode" class="buyText01 fl">
								<a id="tjcode" href="javascript:addcode('')" class="buyCoupon_add2 fl">添加</a>
								<a id="initcode" style="display:none" class="buyCoupon_add2 fl" href="javascript:initPrice()">取消</a>
							</div>
						</div>
						<div class="fr tar p-mt15">
							<p class="fsize12 c-333">订单总价<span id="oldmoney" class="c-master f-fG fsize16">￥19.00</span> - 优惠金额 <span id="yhmoney" class="c-master f-fG fsize16">￥0.00</span> = <span id="paySumPrice" class="c-master f-fG fsize16">￥19.00</span>优惠类型：<span id="yhTypeId" class="c-master">无</span></p>
							<p class="fsize24 c-333 mt20 hLh30">订单支付金额：<span id="payprice" class="c-master fsize36 f-fG">￥19.00</span></p>
						</div>
						<div class="clear"></div>
					</div>
					<div class="tar mt40"> <a class="order-btn" href="javascript:disOrderSuccess()">提交订单</a> </div>
				</div>
			</div>
			<!--结算信息 end-->
		</article>

		<article class="mt30" id="order_success" style="display:none;">
			<div class="order-table pb20">
				<section class="mg20">
					<div class="orderSuccess pr ml20">
						<ol>
							<li><h2 class="hLh30 line3 pb10"><strong class="c-333 fsize20"><tt>订单号:</tt><font class="ml5 mr5 c-orange" id="orderId_success">${trxorder.requestId}</font>下单成功，订单总额<font class="ml5 c-orange" id="amount_success">￥${trxorder.amount}</font></strong></h2></li>
							<li><h2 class="hLh30 line3 pb10"><strong class="c-333 fsize20"><tt>帐户余额:</tt><font class="ml5 mr5 c-orange" id="balance_s" >￥0.00</font><font class="ml5 c-orange" id="bankAmount_s">，需充值￥${bankAmount}</font></strong></h2></li>
							<li class="mt10">
								<span class="vam"><a class="order-submit" title="" id="payNow" href="javascript:void(0)" onclick="javascript:goToBank()">立即支付</a></span>
							</li>
							<li class="mt20 pay-select"><span class="c-333 fsize14 f-fM">您现在可以：<a class="c-333 mr10" title="重新选择支付方式" href="${ctx }/front/repay/${trxorder.id}"><u>重新选择支付方式</u></a> | <a class="c-666 ml10 mr10" title="进入学习中心" href="${ctx }/uc/home"><u>进入学习中心</u></a> | <a class="c-666 ml10" title="返回首页" href="${ctx }/"><u>返回首页</u></a></span></li>
						</ol>
						<span class="succIcon pa"></span>
					</div>
				</section>
			</div>
		</article>
	</section>
</div>
<script type="text/javascript" src="<%=imagesPath%>/static/edu/js/front/shopcart/shopcart.js"></script>
<script type="text/javascript">
	initPrice();
</script>
</body>
</html>
