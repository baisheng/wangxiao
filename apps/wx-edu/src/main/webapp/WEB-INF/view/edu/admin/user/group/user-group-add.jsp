<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>添加岗位</title>
	<script type="text/javascript">
		$(function(){
			$('#addGroupForm').validator({
				validate: function(validity) {
					validity.valid = false;
					// 岗位名称
					if ($(validity.field).is('#groupName')) {
						var _this = $(validity.field);
						var _error = _this.parent().next();
						if(isEmpty(_this.val())){
							_error.html("请输入岗位名称");
							return validity;
						}
						return $.ajax({
							url: '${ctx}/admin/existsGroupName?groupName='+_this.val(),
							dataType: 'json'
						}).then(function(data) {
							if(data){
								_error.html("");
								validity.valid = true;
							}else{
								_error.html("岗位名称已存在");
							}
							return validity;
						}, function() {
							_error.html("系统异常");
							return validity;
						});
					}
					// 岗位描述
					else if($(validity.field).is('#description')){
						var _this = $(validity.field);
						var _error = _this.parent().next();
						if(isNotEmpty(_this.val())){
							_error.html("");
							validity.valid = true;
						}else{
							_error.html("请输入岗位描述");
						}
						return validity;
					}
					// 岗位排序
					else if($(validity.field).is('#sort')){
						var _this = $(validity.field);
						var _error = _this.parent().next();
						if(isNotEmpty(_this.val())){
							_error.html("");
							validity.valid = true;
						}else if(!isNaN(_this.val())) {
							_error.html("请输入合法数字");
						}
						return validity;
					}
				},
				submit: function() {
					var formValidity = this.isFormValid();
					$.when(formValidity).then(function() {
						$("#addGroupForm").submit();
					}, function() {

					});
					return false;
				}
			});
		});
	</script>
</head>
<body>
<div class="am-cf">
	<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">岗位管理</strong> / <small>添加岗位</small></div>
</div>
<hr/>

<div class="mt20">
	<div  class="am-tabs">
		<ul class="am-tabs-nav am-nav am-nav-tabs">
			<li class="am-active"><a href="javascript:void(0)">岗位基本属性(<i class="am-text-danger">*</i>为必填项)</a></li>
		</ul>
		<div class="am-tabs-bd">
			<div id="tab1" class="am-tab-panel am-fade am-active am-in">
				<form class="am-form" action="${ctx}/admin/usergroup/add" method="post" id="addGroupForm">
					<div class="am-g am-margin-top am-form-group">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">
							<i class="am-text-danger">*</i> 名称
						</div>
						<div class="am-u-sm-8 am-u-md-6">
							<input class="am-input-sm"  type="text" name="userGroup.name" id="groupName" placeholder="请填写岗位名称" />
						</div>
						<div class="am-hide-sm-only am-u-md-4 am-text-danger"></div>
					</div>
					<div class="am-g am-margin-top am-form-group">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">
							<i class="am-text-danger">*</i> 描述
						</div>
						<div class="am-u-sm-8 am-u-md-6">
							<textarea name="userGroup.description" id="description" placeholder="请填写岗位描述"></textarea>
						</div>
						<div class="am-hide-sm-only am-u-md-4 am-text-danger"></div>
					</div>
					<div class="am-g am-margin-top am-form-group">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">
							<i class="am-text-danger">*</i> 排序
						</div>
						<div class="am-u-sm-8 am-u-md-6">
							<input class="am-input-sm" type="number" value="0"  name="userGroup.sort" id="sort" placeholder="请填写岗位排序" />
						</div>
						<div class="am-hide-sm-only am-u-md-4 am-text-danger"></div>
					</div>
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right am-text-he">
							&nbsp;
						</div>
						<div class="am-u-sm-8 am-u-md-4">
							<button class="am-btn am-btn-warning" type="submit">提 交</button>
							<button class="am-btn am-btn-primary" onclick="history.go(-1);">返 回</button>
						</div>
						<div class="am-hide-sm-only am-u-md-6 am-text-danger"></div>		
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>