<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>我的</title>
</head>
<body>
	<div id="st-container" class="st-container">
		<!-- /左侧隐藏目录菜单  begin -->
		<jsp:include page="/WEB-INF/view/mobile/common/left_menu.jsp"/>
		<!-- /左侧隐藏目录菜单end -->
		<div class="st-pusher">
			<div class="m-ptb54">
				<!-- /全局头部位置 header -->
				<header id="header">
					<section class="h-wrap">
						<div class="menu-btn" id="st-trigger-effects">
							<svg id="svg1" data-effect="st-effect-4" x="0px" y="0px" width="32px" height="32px" viewBox="0 0 1024 1024" enable-background="new 0 0 32 32" xml:space="preserve">
							  <path fill="#ffffff" d="M112 572l800 0 0-48-800 0 0 48ZM112 332l800 0 0-48-800 0 0 48ZM112 76l800 0 0-48-800 0 0 48Z" transform="translate(0, 812) scale(1, -1)"/>
							</svg>
						</div>
						<!-- menu-btn -->
						<h2 class="commHeadTitle"><span>个人中心</span></h2>
						<!-- commHeadTitle -->
						<div class="ht-r">
							<aside class="search-icon">
								<svg x="0px" y="0px" width="26px" height="26px" viewBox="0 0 1024 1024" enable-background="new 0 0 26 26" xml:space="preserve">
								  <path fill="#ffffff" d="M439.323 24.522c-49.28 0-97.098 9.657-142.127 28.7-43.48 18.389-82.523 44.706-116.044 78.226s-59.841 72.561-78.231 116.039c-19.043 45.028-28.7 92.845-28.7 142.123 0 49.284 9.656 97.105 28.7 142.133 18.389 43.479 44.71 82.52 78.232 116.039 33.519 33.515 72.563 59.833 116.044 78.219 45.027 19.040 92.846 28.695 142.126 28.695 49.28 0 97.099-9.654 142.127-28.695 43.481-18.386 82.526-44.704 116.045-78.221 33.521-33.518 59.842-72.56 78.231-116.039 19.042-45.029 28.7-92.849 28.7-142.133 0-49.278-9.657-97.095-28.702-142.123-18.389-43.477-44.708-82.52-78.229-116.039s-72.564-59.839-116.044-78.227c-45.028-19.043-92.847-28.698-142.128-28.698zM439.323 701.483c-171.976 0-311.888-139.906-311.888-311.875s139.912-311.874 311.888-311.874 311.888 139.907 311.888 311.874-139.912 311.875-311.888 311.875zM890.678-144.735c-22.122 0-42.904 8.562-58.542 24.115l-157.464 152.645 37.039 38.206 157.888-153.059c5.607-5.607 13.092-8.693 21.078-8.693 7.983 0 15.465 3.087 21.071 8.691 5.616 5.622 8.716 13.127 8.716 21.123 0 7.981-3.092 15.463-8.703 21.068l-0.302 0.307-152.746 157.563 38.208 37.035 152.612-157.427c15.571-15.638 24.145-36.423 24.145-58.549 0-22.196-8.626-43.055-24.287-58.736-15.668-15.666-36.515-24.288-58.714-24.288zM281.015 231.245c-42.34 42.321-65.653 98.584-65.644 158.421 0.008 59.818 23.319 116.075 65.638 158.408l37.635-37.62c-66.607-66.63-66.61-175.001-0.007-241.577l-37.621-37.632z" transform="translate(0, 812) scale(1, -1)"/>
								</svg>
							</aside>
							<aside class="record-icon" onclick="window.location.href='/mobile/uc/course/study'">
								<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 1024 1024" enable-background="new 0 0 32 32" xml:space="preserve">
								  <path fill="#ffffff" d="M512 629.333c-188.512 0-341.333-152.821-341.333-341.333s152.821-341.333 341.333-341.333c188.515 0 341.333 152.821 341.333 341.333s-152.819 341.333-341.333 341.333zM512-10.667c-164.947 0-298.667 133.717-298.667 298.667 0 164.947 133.72 298.667 298.667 298.667s298.667-133.72 298.667-298.667c0-164.949-133.72-298.667-298.667-298.667zM512.541 458.307h-42.667v-213.336h213.331v42.667h-170.664z" transform="translate(0, 812) scale(1, -1)"/>
								</svg>
							</aside>
							<div class="clear"></div>
						</div>
						<!-- /ht-r -->
					</section>
					
				</header>
				<!-- /全局头部位置 header -->

				<!-- body main -->
				<section class="comm-main animated fadeIn">

					<article>
						<!-- 个人中心 -->
						<div>
							<section class="u-banner">
								<div class="u-h-a-box animated zoomIn">
									<span class="u-head">
										<c:if test="${user.avatar!=null && user.avatar!=''}">
											<img width="100" id="ucImg" height="100" src="<%=staticImageServer %>${user.avatar}">
		                        		</c:if>
		                        		<c:if test="${user.avatar==null || user.avatar==''}">
		                        			<c:if test="${user.gender==1}">
												<img width="100" id="ucImg" height="100" src="/static/mobile/img/avatar-gril.gif">
											</c:if>
											<c:if test="${user.gender!=1}">
												<img width="100" id="ucImg" height="100" src="/static/mobile/img/avatar-boy.gif">
											</c:if>
		                        		</c:if>
									</span>
									<span class="u-attr">
										<tt class="u-name" id="ucName">
											<c:if test="${user.nickname!=null && user.nickname!=''}">
												${user.nickname}
									 		</c:if>
									 		<c:if test="${user.nickname==null || user.nickname==''}">
												${user.email}
									 		</c:if>
										</tt>
										<br>
										<tt class="qm-txt" id="userInfo" >${user.userInfo}</tt>
									</span>
								</div>
							</section>
							<div>
								<section class="lm-item-list">
									<a href="/mobile/uc/course" title="">
										<svg width="26px" height="26px" viewBox="0 0 1024 1024" enable-background="new 0 0 26 26" xml:space="preserve">
										  <path fill="#666666" d="M749.548 168.381l0.028 0.166 0.245 0.423 0.103-0.315zM724.868 180.809l0.025 0.148 0.219 0.379 0.092-0.282zM912.213 656.407c-0.028 0.727-0.12 1.45-0.219 2.181-0.113 0.828-0.237 1.641-0.437 2.439-0.060 0.24-0.060 0.481-0.129 0.721-0.109 0.384-0.305 0.715-0.432 1.088-0.283 0.827-0.586 1.633-0.959 2.414-0.283 0.595-0.602 1.155-0.931 1.716-0.406 0.688-0.827 1.353-1.301 1.99-0.408 0.551-0.843 1.064-1.297 1.571-0.513 0.574-1.040 1.123-1.608 1.641-0.495 0.451-1.008 0.867-1.54 1.271-0.624 0.477-1.262 0.923-1.935 1.333-0.558 0.339-1.127 0.64-1.712 0.929-0.709 0.352-1.423 0.672-2.171 0.95-0.642 0.237-1.292 0.428-1.955 0.607-0.729 0.195-1.456 0.37-2.211 0.493-0.753 0.124-1.51 0.183-2.28 0.23-0.452 0.028-0.882 0.135-1.341 0.135-0.287 0-0.554-0.074-0.839-0.085-0.735-0.028-1.466-0.121-2.205-0.222-0.814-0.112-1.613-0.234-2.396-0.43-0.249-0.062-0.499-0.063-0.748-0.134l-371.568-105.902-371.569 105.9c-0.249 0.072-0.498 0.072-0.748 0.134-0.783 0.195-1.582 0.318-2.396 0.43-0.739 0.101-1.47 0.194-2.205 0.222-0.284 0.010-0.552 0.085-0.838 0.085-0.459 0-0.889-0.108-1.342-0.135-0.769-0.047-1.527-0.106-2.28-0.23-0.755-0.123-1.483-0.297-2.211-0.493-0.663-0.179-1.313-0.369-1.956-0.607-0.748-0.277-1.462-0.598-2.171-0.95-0.584-0.29-1.154-0.59-1.712-0.929-0.674-0.41-1.311-0.857-1.936-1.333-0.531-0.404-1.045-0.82-1.54-1.271-0.568-0.519-1.095-1.067-1.607-1.641-0.454-0.507-0.888-1.020-1.297-1.571-0.475-0.639-0.895-1.304-1.301-1.99-0.33-0.561-0.649-1.122-0.931-1.716-0.374-0.78-0.676-1.587-0.959-2.414-0.127-0.374-0.322-0.704-0.433-1.088-0.069-0.24-0.069-0.481-0.129-0.721-0.199-0.796-0.324-1.611-0.436-2.439-0.1-0.732-0.192-1.455-0.22-2.182-0.011-0.283-0.084-0.55-0.084-0.836v-626.596h0.16c0.959-8.852 7.118-16.669 16.207-19.261l383.931-110.191 383.931 110.191c9.090 2.592 15.247 10.41 16.206 19.261h0.161l0 626.599c0 0.287-0.074 0.553-0.085 0.836zM489.456-47.101l-332.668 95.479 0 577.322 332.668-94.815-0-577.985zM867.211 48.378l-332.668-95.479 0 577.986 332.668 94.815-0-577.323zM230.368 428.421l167.646-47.484c11.98-3.393 24.441 3.567 27.833 15.546 3.393 11.979-3.566 24.441-15.546 27.834l-167.645 47.486c-11.98 3.393-24.441-3.567-27.833-15.546-3.394-11.98 3.565-24.442 15.545-27.835zM230.368 304.637l167.646-47.484c11.98-3.393 24.441 3.567 27.833 15.546 3.393 11.979-3.566 24.441-15.546 27.834l-167.646 47.484c-11.98 3.393-24.441-3.568-27.833-15.547-3.393-11.979 3.566-24.44 15.546-27.833zM230.368 180.853l167.646-47.484c11.98-3.393 24.441 3.567 27.833 15.547 3.393 11.979-3.566 24.441-15.546 27.834l-167.646 47.484c-11.98 3.393-24.441-3.568-27.833-15.547-3.393-11.98 3.566-24.442 15.546-27.834zM631.635 380.938l167.646 47.484c11.98 3.393 18.939 15.855 15.546 27.834-3.392 11.979-15.854 18.939-27.833 15.546l-167.646-47.484c-11.98-3.393-18.939-15.855-15.546-27.834 3.392-11.979 15.853-18.939 27.833-15.546zM631.635 257.152l167.646 47.484c11.98 3.393 18.939 15.854 15.546 27.834-3.392 11.979-15.854 18.939-27.833 15.546l-167.646-47.484c-11.98-3.393-18.939-15.855-15.546-27.834 3.392-11.979 15.853-18.938 27.833-15.546zM631.635 133.368l167.646 47.484c11.98 3.393 18.939 15.854 15.546 27.834-3.392 11.979-15.854 18.939-27.833 15.547l-167.646-47.484c-11.98-3.393-18.939-15.855-15.546-27.834s15.853-18.94 27.833-15.547z" transform="translate(0, 812) scale(1, -1)"/>
										</svg>

										<span>我的课程</span>
									</a>
									<tt>〉</tt>
								</section>
								<section class="lm-item-list">
									<a href="/mobile/uc/order/course" title="">
										<svg width="26px" height="27px" viewBox="0 0 1000 1024" enable-background="new 0 0 26 27" xml:space="preserve">
										  <path fill="#666666" d="M361.035 489.6234l292.5077 0 0-32.499-292.5077 0 0 32.499ZM361.035 359.6246l292.5077 0 0-32.5-292.5077 0 0 32.5ZM816.0472 248.2581V715.2184818692926H198.52953668513157v-779.9901666669997H555.9358688515415c37.5931-41.0242 91.5827-66.7897 151.4805-66.7897 113.3058 0 205.4871 92.1775 205.4871 205.4787C912.9035 147.3625 874.1602 211.9187 816.0472 248.2581zM231.0298-26.0439V682.7185168455787h552.5170466412895v-417.9486308282984c-23.556 9.4296-49.2466 14.6271-76.1315 14.6271-59.5221 0-113.2029-25.4467-150.764-66.0202H361.0350206918193v-32.49996502371392h170.99207804628452c-19.0838-31.1759-30.0968-67.804-30.0968-106.9575 0-36.2634 9.456-70.3553 26.0114-99.9612H231.0298339957447zM707.4164-99.5831c-95.6711 0-173.5065 77.8322-173.5065 173.5004s77.8354 173.5004 173.5065 173.5004c95.6721 0 173.5075-77.8322 173.5075-173.5004S803.0884-99.5831 707.4164-99.5831zM805.9756 128.3644 676.0673 1.1436c-0.6556-1.0853-1.4471-2.1955-2.5154-3.2648l-6.0991-6.0899c-3.3569-3.3637-7.3183-4.8617-8.8334-3.3377l-61.8746 64.7481c-1.524 1.515-0.034 5.4763 3.3299 8.84l6.0911 6.0899c3.3629 3.3657 7.3253 4.8627 8.8484 3.3407l46.3745-48.5331 126.3155 123.6961c3.3669 3.3637 8.8164 3.3637 12.1802 0l6.0901-6.0899C809.3414 137.1794 809.3414 131.7191 805.9756 128.3644z" transform="translate(0, 812) scale(1, -1)"/>
										</svg>
										<span>我的订单</span>
									</a>
									<tt>〉</tt>
								</section>
								<section class="lm-item-list">
									<a href="/mobile/uc/course/exchange" title="">
										<svg width="26px" height="26px" viewBox="0 0 1024 1024" enable-background="new 0 0 26 26" xml:space="preserve">
										  <path fill="#666666" d="M786.171904 179.222272 555.685888 179.222272c-6.86592 0-12.388352-5.537792-12.388352-12.372992 0-6.849536 5.522432-12.393472 12.388352-12.393472l230.486016 0c6.851584 0 12.388352 5.542912 12.388352 12.393472C798.559232 173.68448 793.023488 179.222272 786.171904 179.222272zM877.50144 612.930304 147.187712 612.930304c-43.062272 0-78.117888-35.033088-78.117888-78.09536l0-470.375424c0-43.026432 35.055616-78.08512 78.117888-78.08512l730.313728 0c43.058176 0 78.08 35.058688 78.08 78.08512L955.58144 534.835968C955.58144 577.897216 920.559616 612.930304 877.50144 612.930304zM147.187712 550.952704l730.313728 0c8.91392 0 16.146432-7.20896 16.146432-16.116736l0-73.065472L131.023872 461.770496l0 73.065472C131.023872 543.743744 138.27584 550.952704 147.187712 550.952704zM877.50144 48.327424 147.187712 48.327424c-8.911872 0-16.16384 7.273472-16.16384 16.13312L131.023872 326.930176l762.624 0 0-262.468608C893.647872 55.600896 886.41536 48.327424 877.50144 48.327424z" transform="translate(0, 812) scale(1, -1)"/>
										</svg>
										<span>课程卡兑换</span>
									</a>
									<tt>〉</tt>
								</section>
								<section class="lm-item-list">
									<a href="/mobile/uc/course/study" title="">
										<svg width="28px" height="28px" viewBox="0 0 1024 1024" enable-background="new 0 0 28 28" xml:space="preserve">
										  <path fill="#666666" d="M512 629.333c-188.512 0-341.333-152.821-341.333-341.333s152.821-341.333 341.333-341.333c188.515 0 341.333 152.821 341.333 341.333s-152.819 341.333-341.333 341.333zM512-10.667c-164.947 0-298.667 133.717-298.667 298.667 0 164.947 133.72 298.667 298.667 298.667s298.667-133.72 298.667-298.667c0-164.949-133.72-298.667-298.667-298.667zM512.541 458.307h-42.667v-213.336h213.331v42.667h-170.664z" transform="translate(0, 812) scale(1, -1)"/>
										</svg>
										<span>播放记录</span>
									</a>
									<tt>〉</tt>
								</section>
								<p class="jg-pd" style="height: 20px;">&nbsp;</p>
								<section class="lm-item-list">
									<a href="/mobile/uc/uinfo" title="">
										<svg width="26px" height="26px" viewBox="0 0 1024 1024" enable-background="new 0 0 26 26" xml:space="preserve">
										  <path fill="#666666" d="M915.0328 78.0115l0.1949 78.8685c0 0-52.0478 10.301-52.9063 13.7926-0.9744 3.8964-2.0317 7.6718-3.166 11.3473 6.0751 11.3003 35.3945 36.1335 35.3945 36.1335l-58.6816 78.206c0 0-38.0508-31.3348-47.5067-35.8277-4.4052 1.6929-9.0482 3.2448-13.9441 4.6538-5.1107 1.2681-19.2357 51.4221-19.2357 51.4221l-79.0087 0.6436c0 0-8.5446-48.5731-21.3414-51.8698-4.2593-1.2502-8.5476-2.8751-12.8268-4.8257-9.479 4.6129-47.4927 36.4273-47.4927 36.4273l-58.6816-79.4541c0 0 29.4193-29.6589 31.396-39.5802-1.2582-3.1269-2.4344-6.3087-3.5128-9.5495-12.6569-4.408-48.5631-11.5192-48.5631-11.5192l0.1559-78.8685c0 0 41.7874-8.7071 49.7323-15.7014 1.6539-4.5319 3.5168-8.9639 5.5575-13.295-9.6419-12.0508-35.3905-32.1602-35.3905-32.1602l60.5544-78.8495c0 0 47.5277 30.7751 55.3677 32.5409 3.8765-1.7038 7.828-3.2668 11.8574-4.6648 7.1794-2.4973 12.2122-48.3992 12.2122-48.3992l78.9307-0.1759c0 0 2.6523 45.0435 8.4276 46.8372 5.7453 1.7858 11.3428 3.8944 16.7773 6.2977 6.6288-2.5952 37.8069-33.6852 37.8069-33.6852l78.0333 79.4731c0 0-28.9665 19.9974-36.9565 30.7771 2.1756 4.481 4.1663 9.0738 5.9382 13.7777C866.8475 67.9653 915.0328 78.0115 915.0328 78.0115zM714.2537 18.241c-54.975 0-99.5706 44.5738-99.5706 99.5665s44.5956 99.5665 99.5706 99.5665 99.5706-44.5738 99.5706-99.5665S769.2276 18.241 714.2537 18.241zM460.957 343.2367c90.5573 0 182.7546 89.0716 182.7546 183.3517 0 94.2411-87.7491 190.1791-178.3454 190.1791-90.5183 0-180.57-98.2594-180.57-192.4815C284.7962 430.0059 370.3987 343.2367 460.957 343.2367zM500.7926 303.9863c-90.987 0-90.5963 0-181.1146 0-45.2981 0-113.2259-23.604-135.8555-94.2801-22.6306-70.6951-22.6306-70.6951-45.2991-141.3712-11.3538-35.5229 154.5056-53.5867 319.4685-53.0221 54.7401 0.1949 17.4789 45.1214 17.4789 102.1807C475.4708 247.4546 586.3951 303.9863 500.7926 303.9863z" transform="translate(0, 812) scale(1, -1)"/>
										</svg>
										<span>我的账号</span>
									</a>
									<tt>〉</tt>
								</section>
								<section class="lm-item-list">
									<a href="/mobile/uc/acc" title="">
										<svg width="24px" height="24px" viewBox="0 0 1024 1024" enable-background="new 0 0 24 24" xml:space="preserve">
										  <path fill="#666666" d="M560.798 629.8l70.283 162.889c0 0-44.359-34.608-70.283-34.608-25.956 0-67.027 33.617-67.027 33.617s-44.323-33.617-70.264-33.617c-25.956 0-68.142 32.554-68.142 32.554l71.36-160.835 134.073 0zM424.567 613.52h138.385v-48.87h-138.385v48.87zM689.748-47.463c-9.543 10.567-17.272 21.469-23.178 32.724-5.912 11.248-8.873 22.553-8.873 33.919v189.539l13.977 2.057 156.888 29.303c-66.015 173.899-265.915 308.29-265.915 308.29l-138.080 0c0 0-301.923-160.97-301.923-410.727 0-249.752 313.463-256.936 313.463-256.936s61.494-4.307 113.852 0c0-1.141 84.472 7.313 163.692 48.827-8.712 7.348-16.685 15.013-23.903 23.004zM598.111 208.231v-49.111h-83.548v-26.708h83.549v-49.113l-83.549 0v-60.665h-62.497v60.665h-82.452l0 49.113h82.452v26.708h-82.452v49.111h58.035l-69.134 140.279h68.448l44.444-94.728c5.646-11.87 9.641-22.267 12.033-31.331 2.804 9.816 6.81 20.244 12.007 31.331l45.311 94.728h68.502l-70.040-140.279h58.89zM974.3 194.542l-143.319 26.272-140.565-26.272-12.528-1.843v-169.896c0-10.189 2.655-20.324 7.953-30.403 5.294-10.091 12.219-19.86 20.776-29.334 8.558-9.47 18.279-18.44 29.186-26.889 10.896-8.459 21.997-15.995 33.311-22.613 11.298-6.626 22.199-12.135 32.692-16.503 10.489-4.381 19.705-7.389 27.653-9.021l3.361-0.606 3.668 0.606c7.739 1.635 16.755 4.641 27.041 9.021 10.29 4.367 20.876 9.877 31.783 16.503 10.898 6.618 21.644 14.154 32.233 22.613 10.594 8.453 20.023 17.42 28.27 26.889 8.252 9.474 14.922 19.243 20.014 29.334 5.093 10.080 7.644 20.214 7.644 30.403l0 169.899-9.17 1.841zM952.67 19.447c0-7.836-1.903-15.572-5.709-23.19-3.807-7.612-8.903-14.952-15.291-22.003-6.385-7.057-13.72-13.672-22.014-19.835-8.29-6.161-16.916-11.764-25.876-16.805-8.959-5.033-18.034-9.411-27.219-13.097-9.19-3.697-17.706-6.45-25.539-8.243l0 152.574h-122.33v107.205l120.646 20.502 1.684-0.336v-127.372h121.649l0-49.4z" transform="translate(0, 812) scale(1, -1)"/>
										</svg>
										<span>账户明细</span>
									</a>
									<tt>〉</tt>
								</section>
								
								
								<section class="lm-item-list">
									<a href="/mobile/feedback" title="">
										<svg width="24px" height="24px" viewBox="0 0 1024 1024" enable-background="new 0 0 24 24" xml:space="preserve">
										  <path fill="#666666" d="M958.92847 18.585679 61.89314 18.585679 61.89314 651.769692l897.034307 0L958.927447 18.585679zM97.071338 53.74648l826.679959 0L923.751297 616.609914 97.071338 616.609914 97.071338 53.74648zM958.92847-51.769692 61.89314-51.769692l0 35.177174 897.034307 0L958.927447-51.769692zM444.0407 136.864526l33.151028 132.673695 301.93161 301.947983 99.505271-99.486852L576.713372 170.066719 444.0407 136.864526zM508.968455 251.571011l-16.59291-66.353221 66.337871 16.626679 270.171256 270.154883-49.760311 49.742914L508.968455 251.571011z" transform="translate(0, 812) scale(1, -1)"/>
										</svg>
										<span>帮助反馈</span>
									</a>
									<tt>〉</tt>
								</section>
							</div>
							<!-- /lm-item -->
							<div class="u-account-box i-box">
								<section class="lr-btn">
									<a href="javascript:void(0)" onclick="exit()" title="">退出登录</a>
								</section>
							</div>
							<!-- /lm-item -->
						</div>
						<!-- 个人中心 -->
					</article>

				</section>
				<!-- body main -->

			</div>
			<!-- 全局底部导航菜单 begin -->
			<jsp:include page="/WEB-INF/view/mobile/common/button_menu.jsp"/>
			<!-- 全局底部导航菜单 end -->
		</div>
	</div>

	<script src="${ctximg }/static/mobile/js/classie.js" type="text/javascript"></script>
	<script src="${ctximg }/static/mobile/js/sidebarEffects.js" type="text/javascript"></script>
	<script src="${ctximg}/static/mobile/js/swipe.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			posFun(); //定位上TopBar与下menuBar的位置
			gnFun(); //当前底部导航图标与字体变色
			searchFun();
		})
	</script>
</body>
</html>