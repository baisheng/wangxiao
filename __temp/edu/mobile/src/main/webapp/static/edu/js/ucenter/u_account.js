$(function(){
	$("#activateCardCourse").click(function(){
		dialog('充值卡充值','',10);
		$("#activateCardCourse").hide();
		
	});
	$("#activateNow").click(function(){
		
	});
	$("#comeback").click(function(){
		$("#activateCardCourseDiv").show();
		$("#activateCardCourseFalseDiv").hide();
	});
});
function checkData(){
	var message="";
	if($("#cardCourseCode").val()==''){
		message+="卡号不能为空！\n";
	}
	if($("#cardCoursePassword").val()==''){
		message+="密码不能为空！\n";
	}
	return message;
}

function jihuo(){
	var msg=checkData();
	if(msg!=''){
		$('.dialog-shadow').remove();
		dialog('充值提示',msg,1);
	}else{
	$.ajax({
		url : baselocation + "/course/activationcard/2",
		data : {
			"cardCode.type":2,
			"cardCode.cardCode" : $.trim($("#cardCourseCode").val()),
			"cardCode.cardCodePassword" : $.trim($("#cardCoursePassword").val())
		},
		type : "post",
		dataType : "json",
		cache : false,
		async : false,
		success : function(result) {
			var msg="";
			if(result.entity=='passwordError'){
				msg="卡号或密码错误，请确认，谢谢！";
			}else if(result.entity=='dontActivate'){
				msg="该卡未被激活，请联系客服进行处理！谢谢";
			}else if(result.entity=='alreadyUse'){
				msg="该卡已被使用，不能再进行充值，请确认！谢谢";
			}else if(result.entity=='overDue'){
				msg="该卡已过期，不能进行充值，请确认！谢谢";
			}else if(result.entity=='close'){
				msg="该卡已作废，不能进行充值，请确认！谢谢";
			}else if(result.entity=='dateError'){
				msg="该卡不在有效期内，请确认！谢谢";
			}else{
				msg="";
				$('.dialog-shadow').remove();
				dialog('充值提示',"您的充值卡已充值成功!",16,'/uc/acc');
			}
			if(msg!=""){
				$('.dialog-shadow').remove();
				dialog('充值提示',msg,1);
			}
		},
		error : function(error) {
			$('.dialog-shadow').remove();
			dialog('充值提示',"您的充值卡发生异常，请及时联系客服人员进行处理，谢谢！",1);
		}
	});
	}
}
