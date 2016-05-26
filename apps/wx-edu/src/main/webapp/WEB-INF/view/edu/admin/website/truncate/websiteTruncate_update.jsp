<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp" %>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
	
	
	function updateSubmit(){
		if($("#tableName").val()==null||$("#tableName").val()==''){
			alert("请填写表名");
			return
		}
		
		if($("#desc").val()==null||$("#desc").val()==''){
			alert("请填写描述");
			return;
		}
		$("#updateTruncateForm").submit();
	}
</script>
</head>
<body>

	<div class="page_head">
		<h4><em class="icon14 i_01"></em>&nbsp;<span>清空表管理</span> &gt; <span>清空表修改</span> </h4>
	</div>
	<!-- /tab4 begin -->
	<div class="mt20">
		<form action="${ctx}/admin/website/updateTruncate" method="post" id="updateTruncateForm">
		<input type="hidden" name="websiteTruncate.id" value="${websiteTruncate.id }"/>
		<table width="100%" cellspacing="0" cellpadding="0" border="0" class="commonTab01">
			<thead>
				<tr>
					<th align="left" colspan="2"><span>清空表属性<tt class="c_666 ml20 fsize12">（<font color="red">*</font>&nbsp;为必填项）</tt></span></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td align="center"><font color="red">*</font>&nbsp;类型</td>
					<td>
						<select name="websiteTruncate.type" id="type">
							<option value="web">网校</option>
							<option value="exam" <c:if test="${websiteTruncate.type=='exam' }">selected="selected"</c:if>>考试</option>
							<option value="sns" <c:if test="${websiteTruncate.type=='sns' }">selected="selected"</c:if>>社区</option>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center"><font color="red">*</font>&nbsp;清空表表名 </td>
					<td>
						<input type="text" name="websiteTruncate.tableName" value="${websiteTruncate.tableName }" id="tableName" class="{required:true}"/>
					</td>
				</tr>
				
				<tr>
					<td align="center">描述</td>
					<td>
						<input type="text"  name="websiteTruncate.desc" value="${ websiteTruncate.desc}" id="desc" class="{required:true}"/>
					</td>
				</tr>
				
				<tr>
					<td align="center" colspan="2">
						<a class="am-btn am-btn-danger" title="提 交" href="javascript:updateSubmit()">提 交</a>
						<a class="am-btn am-btn-danger" title="返 回" href="javascript:history.go(-1);">返 回</a>
					</td>
				</tr>
			</tbody>
		</table>
		</form>
	</div>
	<!-- /tab4 end -->
</body>
</html>