<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>

		<!-- /左侧隐藏目录菜单 begin -->
		<menu class="st-menu st-effect-4" id="menu-4">
			<section class="l-menu-wrap">
				<div class="l-m-box">
					<section class="clearfix">
						<aside class="u-headface">
							<a href="/mobile/login" title=""><img src="/static/mobile/img/avatar-boy.gif" id="cusImg" width="80" height="80" alt=""></a>
						</aside>
						<h4 class="u-name">
							<a href="/mobile/login" title="" id="cusName">登录</a>
							<br>
							<tt class="qm-txt" id="userInfo" style="display: none"></tt>
						</h4>
					</section>
					<!-- /user headface -->
				</div>
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
					<p class="jg-pd">&nbsp;</p>
					<section class="lm-item-list">
						<a href="/mobile/teacher/list" title="">
							<svg width="28px" height="28px" viewBox="0 0 1263 1024" enable-background="new 0 0 28 28" xml:space="preserve">
							  <path fill="#616161" d="M528.299836 153.870992l0.981918-21.464723-12.683573-20.979375 38.897973-169.908252-54.953732-26.705359-54.953732 26.705359 38.892362 169.908252-12.683573 20.979375 0.976307 21.464723C496.985074 155.2064 504.085742 155.2064 528.299836 153.870992L528.299836 153.870992zM489.847934 744.418805l538.478115 0c16.810433 0 32.111518-6.873425 43.198773-17.960679 11.087255-11.045173 17.963485-26.346258 17.963485-43.198773l0-336.275989c0-16.768351-6.87623-32.06663-17.963485-43.159496l-0.047693-0.039277 0-0.047693c-11.134948-11.047978-26.38834-17.924208-43.153885-17.924208l-238.044932 0-84.223299-66.170038-30.024241-23.594082 5.76526 37.700033 7.005282 46.035112 29.895189-4.480351-1.240022-8.295803 138.06606 108.485085 18.715353-23.72594-45.415101-35.705337 199.486422 0c8.517436 0 16.232504 3.456351 21.821019 9.047671l0.047693 0.047693c5.549238 5.543627 9.008395 13.306389 9.008395 21.821019L1059.186323 683.256548c0 8.472548-3.459156 16.232504-9.056088 21.821019-5.633403 5.588515-13.351277 9.092559-21.821019 9.092559L489.847934 714.170126c-8.51463 0-16.277392-3.459156-21.865907-9.047671-5.588515-5.633403-9.047671-13.348471-9.047671-21.865907l0-21.997764-30.248679 0L428.685677 683.256548c0 16.810433 6.873425 32.06663 17.918597 43.153885l0.089775 0.044888C457.781304 737.542575 473.037501 744.418805 489.847934 744.418805L489.847934 744.418805zM676.039189 437.412384c10.374663 138.110948-9.092559 217.635068-174.660734 195.457753-56.190948-7.496241-117.221348 9.002784-152.037348-16.499025-43.776701-41.293852-46.879562-103.252866-34.995551-175.945644-2.623123-1.419573-5.277107-3.013085-7.891814-4.833841l-7.802038-5.277107-0.137468-9.359079c-0.401184-24.216899 2.623123-44.663233 9.140252-60.317808 5.9392-14.235003 14.678268-24.839715 26.385534-31.224986 13.9264-47.45749 33.935079-83.070247 58.95154-108.706718 27.274871-27.945381 60.096175-43.818784 97.212668-50.077808l3.33291-0.530236 3.327299 0.667704c41.114301 8.691375 73.935605 25.27737 100.107923 52.953425 24.256175 25.639277 42.357129 60.26731 55.663518 106.490389 11.266805 6.564822 19.694466 17.253699 25.414838 31.359649 6.253414 15.567605 9.134641 35.657644 8.736263 59.386389l-0.134663 9.359079-7.804844 5.277107C677.899222 436.259332 676.970608 436.834455 676.039189 437.412384L676.039189 437.412384zM273.629633 170.7712l-7.361578 0.044888-5.639014-4.878729c-39.652647-34.594367-62.890433-85.02286-76.412844-136.475353-13.037063-49.892647-16.94229-100.854181-17.702575-138.422356l-0.401184-19.918904 19.871211 0L802.17074-128.879255l17.475332 0 1.904921 17.475332c4.878729 45.238356-2.83634 102.545885-19.697271 155.058849-16.055759 50.161973-40.749589 96.730126-71.045962 125.343211l-5.942005 5.633403-8.026477-0.263715-94.603573-3.237523 0-38.984942 87.463627 2.976614c22.749633-24.306674 41.86617-62.130148 55.082784-103.390334 13.13806-40.889863 20.179814-84.621677 19.161425-121.519342-476.693041 0-90.072723 0-577.816548 0 1.593512 32.285458 5.807342 71.315288 15.834126 109.467003 11.087255 42.354323 29.314455 83.47143 59.03851 112.067682l79.299682-0.706981 0 38.94286L273.629633 170.7712zM873.662773 489.748603 873.662773 466.729644 999.760658 466.729644 999.760658 489.748603ZM740.570827 489.748603 740.570827 466.729644 853.66251 466.729644 853.66251 489.748603ZM936.199715 567.676405 936.199715 544.657447 999.760658 544.657447 999.760658 567.676405ZM885.156822 567.676405 885.156822 544.657447 910.700712 544.657447 910.700712 567.676405ZM811.086553 567.676405 811.086553 544.657447 862.179945 544.657447 862.179945 567.676405ZM740.570827 567.676405 740.570827 544.657447 791.574444 544.657447 791.574444 567.676405ZM740.570827 639.749173 740.570827 616.730214 999.763463 616.730214 999.763463 639.749173ZM335.100493 403.928986c0.799562-11.752153 2.794258-21.644274 6.034586-29.364953 3.234718-7.846926 7.670181-12.905205 13.303584-14.633381l9.577907-2.973808 2.620318-9.667682c12.332888-45.459989 30.069129-78.545008 52.296942-101.34514 20.712855-21.209425 45.63954-33.61806 73.935605-38.984942 32.1536 7.313885 57.700296 20.443529 77.835222 41.686619 21.332866 22.530805 37.253962 54.687211 49.146389 99.041841l2.48846 9.224416 9.047671 3.195441c5.501545 1.907726 9.847233 7.095058 13.039868 14.944789 3.060778 7.670181 5.007781 17.340668 5.804537 28.787025-5.279912-0.047693-10.643989-0.179551-16.765545-0.931419l-2.437962 8.203222-5.190137-0.311408-2.979419 15.747156c-2.30891 12.285195-5.857841 23.681052-10.461633 34.151101-13.842236-5.855036-29.364953 4.923616-43.375518 12.994981l-7.095058-22.264285-11.446356 1.506542 1.509348 13.57291-12.063562-19.383058-10.733764 2.129359 10.559825 28.739332 0 0c-59.122674-52.465271-128.269326-49.09589-166.811003-19.781436-1.240022-2.971003-2.395879-6.031781-3.45074-9.134641-2.6624-10.646795-5.639014-24.483419-8.295803-35.040438l-0.715397-3.857534-0.266521 0.044888c-0.575123-2.129359-1.108164-3.989392-1.641205-5.633403C353.731682 407.786521 343.884449 405.261589 335.100493 403.928986L335.100493 403.928986z" transform="translate(0, 812) scale(1, -1)"/>
							</svg>
							<span>名家讲师</span>
						</a>
						<tt>〉</tt>
					</section>
					<section class="lm-item-list">
						<a href="/mobile/article/list?type=0" title="">
							<svg style="margin-right: 5px" width="24px" height="24px" viewBox="0 0 1024 1024" enable-background="new 0 0 24 24" xml:space="preserve">
							  <path fill="#606060" d="M780.533 680.372c61.679 0 111.839-50.161 111.839-111.839l0-537.035c0-61.71-50.16-111.87-111.839-111.87L243.482-80.372c-61.663 0-111.855 50.16-111.855 111.87L131.627 568.533c0 61.679 50.192 111.839 111.855 111.839L780.533 680.372M780.533 747.482 243.482 747.482c-98.433 0-178.965-80.5-178.965-178.949l0-537.035c0-98.448 80.532-178.98 178.965-178.98l537.051 0c98.433 0 178.949 80.532 178.949 178.98L959.482 568.533C959.482 666.982 878.965 747.482 780.533 747.482L780.533 747.482zM350.78 586.668l0 32.15 69.045 0 0 15.544 32.337 0 0-15.544 69.202 0 0-32.15L350.78 586.668zM350.78 461.001l0 32.337 69.045 0L419.825 514.845l-69.045 0 0 32.307 19.758 0 0 27.968 32.15 0 0-27.968 66.423 0 0 27.968 32.322 0 0-27.968 19.931 0 0-32.307L452.162 514.845l0-21.506 69.202 0 0-32.337L452.162 461.002l0-93.33c0-10.332-3.792-18.385-11.362-24.097-5.603-4.214-12.236-6.305-19.93-6.305l-20.273 0 0 32.15 8.397 0c7.21 0 10.831 4.026 10.831 12.08l0 79.502L350.78 461.002zM350.78 337.113l0 31.963c5.15 0.843 7.803 3.714 8.053 8.74l3.137 63.957 32.509 0-3.153-57.652c-0.593-10.987-1.623-18.479-3.137-22.567-3.387-8.366-9.614-15.014-18.713-19.915C364.951 339.205 358.708 337.675 350.78 337.113zM478.007 441.773l31.994 0 3.152-63.426c0.219-5.462 2.966-8.428 8.21-8.927l0-32.307c-25.971 2.435-39.58 16.762-40.734 42.982L478.007 441.773zM530.619 337.269l0 32.15c5.478 0.375 8.225 3.121 8.225 8.24L538.844 589.633c0 16.294 6.695 28.717 20.086 37.238 7.351 4.651 17.933 6.992 31.807 6.992l82.483 0 0-32.337-84.06 0c-4.775 0-8.974-1.623-12.579-4.9-3.604-3.371-5.415-7.741-5.415-13.11l0-33.024 102.054 0 0-31.807-20.258 0 0-181.415-32.338 0L620.624 518.684l-49.458 0 0-137.372c0-14.889-4.886-26.532-14.687-34.772C549.487 340.609 540.873 337.488 530.619 337.269zM354.994 232.141l0 30.246 75.132 0 0-30.246L354.994 232.141zM354.994-34.364 354.994 205.422l32.322 0 0-239.785L354.994-34.363zM413.878 9.149l0 32.868 17.823 0L431.701 165.406l-17.823 0 0 32.306 197.475 0 0-32.306-19.384 0 0-123.389 19.384 0 0-32.868-19.384 0 0-31.808-32.338 0 0 31.808L413.878 9.149zM460.887 230.049l0 32.338 158.691 0c16.075 0 28.545-4.37 37.395-13.11 8.631-8.396 12.938-19.883 12.938-34.429l0-197.834c0-16.293-3.559-28.436-10.676-36.333-8.833-10.02-20.195-15.045-34.069-15.045l-13.813 0 0 32.338 8.225 0c11.986 0 17.995 7.741 17.995 23.254L637.573 208.387c0 14.452-7.163 21.662-21.491 21.662L460.887 230.049zM464.211 145.991l95.42 0 0 19.415-95.42 0L464.211 145.991zM464.211 94.613l95.42 0 0 19.228-95.42 0L464.211 94.613zM464.211 42.017l95.42 0L559.631 62.805l-95.42 0L464.211 42.017z" transform="translate(0, 812) scale(1, -1)"/>
							</svg>
							<span>新闻资讯</span>
						</a>
						<tt>〉</tt>
					</section>
					
					<p class="jg-pd">&nbsp;</p>
					<section class="lm-item-list" id="userMenu" style="display: none">
						<a href="/mobile/uc/uinfo" title="">
							<svg width="26px" height="26px" viewBox="0 0 1024 1024" enable-background="new 0 0 26 26" xml:space="preserve">
							  <path fill="#666666" d="M915.0328 78.0115l0.1949 78.8685c0 0-52.0478 10.301-52.9063 13.7926-0.9744 3.8964-2.0317 7.6718-3.166 11.3473 6.0751 11.3003 35.3945 36.1335 35.3945 36.1335l-58.6816 78.206c0 0-38.0508-31.3348-47.5067-35.8277-4.4052 1.6929-9.0482 3.2448-13.9441 4.6538-5.1107 1.2681-19.2357 51.4221-19.2357 51.4221l-79.0087 0.6436c0 0-8.5446-48.5731-21.3414-51.8698-4.2593-1.2502-8.5476-2.8751-12.8268-4.8257-9.479 4.6129-47.4927 36.4273-47.4927 36.4273l-58.6816-79.4541c0 0 29.4193-29.6589 31.396-39.5802-1.2582-3.1269-2.4344-6.3087-3.5128-9.5495-12.6569-4.408-48.5631-11.5192-48.5631-11.5192l0.1559-78.8685c0 0 41.7874-8.7071 49.7323-15.7014 1.6539-4.5319 3.5168-8.9639 5.5575-13.295-9.6419-12.0508-35.3905-32.1602-35.3905-32.1602l60.5544-78.8495c0 0 47.5277 30.7751 55.3677 32.5409 3.8765-1.7038 7.828-3.2668 11.8574-4.6648 7.1794-2.4973 12.2122-48.3992 12.2122-48.3992l78.9307-0.1759c0 0 2.6523 45.0435 8.4276 46.8372 5.7453 1.7858 11.3428 3.8944 16.7773 6.2977 6.6288-2.5952 37.8069-33.6852 37.8069-33.6852l78.0333 79.4731c0 0-28.9665 19.9974-36.9565 30.7771 2.1756 4.481 4.1663 9.0738 5.9382 13.7777C866.8475 67.9653 915.0328 78.0115 915.0328 78.0115zM714.2537 18.241c-54.975 0-99.5706 44.5738-99.5706 99.5665s44.5956 99.5665 99.5706 99.5665 99.5706-44.5738 99.5706-99.5665S769.2276 18.241 714.2537 18.241zM460.957 343.2367c90.5573 0 182.7546 89.0716 182.7546 183.3517 0 94.2411-87.7491 190.1791-178.3454 190.1791-90.5183 0-180.57-98.2594-180.57-192.4815C284.7962 430.0059 370.3987 343.2367 460.957 343.2367zM500.7926 303.9863c-90.987 0-90.5963 0-181.1146 0-45.2981 0-113.2259-23.604-135.8555-94.2801-22.6306-70.6951-22.6306-70.6951-45.2991-141.3712-11.3538-35.5229 154.5056-53.5867 319.4685-53.0221 54.7401 0.1949 17.4789 45.1214 17.4789 102.1807C475.4708 247.4546 586.3951 303.9863 500.7926 303.9863z" transform="translate(0, 812) scale(1, -1)"/>
							</svg>
							<span>我的账号</span>
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
			</section>
		</menu>
		
						
				
		<!-- /左侧隐藏目录菜单 end -->
		<script type="text/javascript">
		$(function(){
			showLoginInfo();
		})
			/** 菜单登录用户头像 昵称* */
			function showLoginInfo() {
				$.ajax({
					url : "/user/loginuser",
					type : "post",
					dataType : "json",
					cache : false,
					async : false,
					success : function(result) {
						if(result.success){
							var entity = result.entity;
		                    if(isNotNull(entity)){
		                    	$("#userMenu").show();
		                    	$("#cusName").attr("href","/mobile/uc/home");
		                    	$("#cusImg").parent().attr("href","/mobile/uc/home");
		                        if( entity && entity.nickname && isNotEmpty(entity.nickname)){//昵称
		                            $("#cusName").html( entity.nickname);
		                        }else{
		                            $("#cusName").html(entity.email);//邮箱
		                        }
		                        if(entity.avatar && isNotEmpty(entity.avatar)){
		                            $("#cusImg").attr("src",staticImageServer+entity.avatar);
		                        }else{
		                        	if(entity.gender==1){
		                        		$("#cusImg").attr("src","/static/mobile/img/avatar-gril.gif");
		                        	}else{
		                        		$("#cusImg").attr("src","/static/mobile/img/avatar-boy.gif");
		                        	}
		                            
		                        }
		                        if(entity.userInfo && isNotEmpty(entity.userInfo)){
		                        	$("#userInfo").html(entity.userInfo);
		                        	$("#userInfo").show();
		                        }
		                    }
						}
					}
				});
			}
		</script>
	
	