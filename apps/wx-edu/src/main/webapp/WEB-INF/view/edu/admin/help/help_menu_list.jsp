<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title></title>
<script type="text/javascript">

function showMenu(id)
{
	var title=$("#"+id).attr("title");
	if(title=="展开")
	{
		$("#"+id).attr("title","收起");
		$("#"+id).html("-&nbsp;&nbsp;");
		$('tr[name="'+id+'s"]').show();
	}
	else
	{
		$("#"+id).attr("title","展开");
		$("#"+id).html("+&nbsp;&nbsp;");
		$('tr[name="'+id+'s"]').hide();
	}
	
}
function longMenu(id)
{
	
	$("#"+id).attr("onclick","shortMenu('"+id+"')");
	$("#"+id).html("-&nbsp;&nbsp;");
	
}
function doDel(id)
{
	dialogFun("帮助菜单","确认删除？",2,"javascript:doDelAjax("+id+")");	
}
function doDelAjax(id){
		$.ajax({
			url:"${ctx}/admin/helpMenu/del/"+id,  
			type: "post",
			dataType:"json",
			success:function(data){
				if(data.message=='true'){
					dialogFun("帮助菜单","删除成功",5,"");	
					closeFun();
				}
			}
		});
}
</script>
</head>
<body>
	<div class="am-cf">
		<div class="am-fl am-cf">
			<strong class="am-text-primary am-text-lg">帮助中心管理</strong> / <small>帮助菜单</small>
		</div>
	</div>
	<hr/>
	<!-- /tab1 begin-->
	<div class="mt20">
		<div class="commonWrap">
			<form action="${ctx}/admin/website/navigates" name="searchForm" id="searchForm" method="post">
			<table cellspacing="0" cellpadding="0" border="0" width="100%" class="commonTab01">
				<caption>
					<div class="capHead">
						<div class="clearfix">
							<div class="optionList">
								<font color="red">
						1.一级菜单下有子菜单时，该菜单不可删除。<br/>
					    2.在编辑中，二级菜单可以移动至其它一级菜单下。 </frot>
							</div>
						</div>
					</div>
					<div class="mt10 clearfix">
						<p class="fl czBtn"><span class="ml10"><a class="am-btn am-btn-success" href="${cxt}/admin/helpMenu/doadd"><span class="am-icon-plus"></span>新建帮助菜单</a></span></p>
						<p class="fr c_666"></p>
					</div>
				</caption>
				<thead>
					<tr>
						<th style="text-align:center"><span>名称</span></th>
                        <th style="text-align:center"><span>排序</span></th>
                        <th style="text-align:center"><span>操作</span></th>
					</tr>
				</thead>
				<tbody id="tabS_02" align="center">
					<c:if test="${helpMenus.size()>0}">
						<c:forEach items="${helpMenus}" var="Menus" varStatus="status">
							<c:forEach items="${Menus}" var="Menus1" varStatus="status1">
								<c:choose>
									<c:when test="${Menus1.parentId==0}">
										<tr>
											<td style="background-color:#f3f3f3" width="30%" align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span id="${status.index}id" style="cursor: pointer;" onclick="showMenu('${status.index}id')" title="收起">
													-&nbsp;&nbsp;
												</span>
												${Menus1.name}<font style="color: #999">（${fn:length(Menus)-1}个子菜单）</font>
											</td>
											<td style="background-color:#f3f3f3;color:#6e6e6e">${Menus1.sort}</td>
											<td  class="c_666 czBtn" align="center" width="30%" style="background-color:#f3f3f3;">
												<a class="am-btn am-btn-default am-btn-xs am-text-secondary"  href="${ctx}/admin/helpMenu/doupdate/${Menus1.id}"><span class="am-icon-pencil-square-o"></span>编辑</a>
												<c:choose>
													<c:when test="${fn:length(Menus)==1}">
														<a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="javascript:doDel(${Menus1.id})"><span class="am-icon-trash-o"></span>删除</a>
       												</c:when>
													<c:otherwise>
														<span class="am-btn am-btn-default am-btn-xs am-text-secondary" style="color:#666666"><span class="am-icon-trash-o"></span>删除</span>
													</c:otherwise>
												</c:choose>
											</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr name="${status.index}ids">
											<td align="left" style="padding-left: 40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${Menus1.name}</td>
											<td>${Menus1.sort}</td>
											<td>
												<a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="${ctx}/admin/helpMenu/doupdate/${Menus1.id}"><span class="am-icon-pencil-square-o"></span>编辑</a>
												<a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="javascript:doDel(${Menus1.id})"><span class="am-icon-trash-o"></span>删除</a>
											</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:forEach>
					</c:if>
					<c:if test="${helpMenus.size()==0||helpMenus==null}">
					<tr>
						<td align="center" colspan="16">
							<div class="tips">
							<span>还没有菜单！</span>
							</div>
						</td>
					</tr>
					</c:if>
				</tbody>
			</table>
			</form>
		</div><!-- /commonWrap -->
	</div>
</body>
</html>