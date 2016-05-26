<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>考试系统</title>
	<script type="text/javascript" src="${ctximg}/static/exam/js/exam-test.js?v=${v}"></script> 
</head>
<body>
<form action="${ctx}/quest/toErrorQuestionList" name="searchForm" id="searchForm" method="post">
<input id="pageCurrentPage" type="hidden" name="page.currentPage" value="${page.currentPage}"/>
<input type="hidden" id="subjectId" name="queryQuestion.subjectId" value="${queryQuestion.subjectId}"/>
<input name="queryQuestion.pointId" id="pointId" type="hidden" value="${queryQuestion.pointId}"/>
		<!-- e-main begin -->
		<section class="e-main">
			<div class="w1000">
				<section class="s-s-tp">
					<!-- /test paper end -->
					<section class="test-paper">
						<div class="clearfix my-history">
							<article class="t-paper-wrap">
								<section class="t-paper b-fff">
									<div class="my-history-title pl50">
										<ul>
											<li><a href="${ctx}/paper/toExamPaperRecordList" title="">练习历史</a></li>
											<li class="current"><a href="${ctx}/quest/toErrorQuestionList" title="">错题记录</a></li>
											<li><a href="${ctx}/quest/toNoteQuestionList" title="">习题笔记</a></li>
											<li ><a href="${ctx}/quest/favoriteQuestion" title="">习题收藏</a></li>
										</ul>
										<div class="clear"></div>
									</div>
									<div class="my-history-cont">
											<ol class="m-h-lx">
												<c:choose>
					                              <c:when test="${queryQuestionList!=null && queryQuestionList.size()>0 }">
						                              	<p class="m-h-cw-title">
															<b class="c-666 fsize14">共有${page.totalResultSize}道错误习题</b>
														</p>
														<c:forEach items="${queryQuestionList }" var="question">
															<li>
															    <input type="hidden" class="questionIds" id="${question.id }"/>
																<p class="c-333 fsize16">
																<c:choose>
																	<c:when test="${question.qstContent.length()>100}">
																		${fn:substring(question.qstContent, 0, 100)}
																	</c:when>
																	<c:otherwise>
																		${question.qstContent}
																	</c:otherwise>
																</c:choose>
																
																</p>
																<p class="c-999 mt5">错题时间:  <fmt:formatDate value="${question.errorQuestionAddTime}" pattern="yyyy-MM-dd HH:mm:ss"/> <span class="m-h-c-right c-999"> 
																	<span class="mr10">
																	<em class="icon14 delete-test"> </em>
																	<a class="c-666 mr10 fsize14" title="删除错题" href="javascript:void(0)" onclick="delErrorQuestion(${question.errorQuestionId },this)">移除错题</a>
																	|
																	</span>
																	<a href="${ctx}/quest/parse/${question.id}" title="" class="c-green mr10 fsize14">查看详情</a>
															</span>
															</li>
														</c:forEach>
					                              </c:when>
					                              <c:otherwise>
					                              		<section class="tac pt30 pb50">
															<span> <em class="k-tips-1 icon24"> </em> <font
																class="c-999 fsize14 ml10">你还没有错误题目，在你测试时将会记录错误题目</font>
															</span>
														</section>
					                              </c:otherwise>
					                            </c:choose>
											</ol>
										</div>
								</section>
							</article>
						</div>
					</section>
					<!-- /test paper end -->
				</section>
			</div>
		</section>
		<!-- /pageBar begin -->
					<jsp:include page="/WEB-INF/view/exam/common/page.jsp" />
					<!-- /pageBar end -->
		<!-- e-main end -->
	</form>
</body>
</html>