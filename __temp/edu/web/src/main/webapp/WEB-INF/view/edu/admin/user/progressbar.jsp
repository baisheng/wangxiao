<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/base.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发送邮件消息</title>
    <link rel="stylesheet" type="text/css" href="${ctximg}/static/common/jquery-ui-1.10.4/css/ui-lightness/jquery-ui-1.10.4.custom.css?v=${v}" />
    <link rel="stylesheet" type="text/css" href="${ctximg}/static/common/jquery-ui-1.10.4/css/ui-lightness/jquery-ui-timepicker-addon.css?v=${v}" />
    <script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-1.10.4.custom.js?v=${v}"></script>
    <script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-timepicker-addon.js?v=${v}"></script>
    <script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery.ui.datepicker-zh-CN.js?v=${v}"></script>
    <script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-timepicker-zh-CN.js?v=${v}"></script>
    <script type="text/javascript" src="${ctximg}/kindeditor/kindeditor-all.js?v=1410957986989"></script>
<script type="text/javascript">
    var timeid;
    $(function() {
        $( "#progressbar" ).progressbar({
            value: 0
        });

        timeid = window.setInterval(query, 1000);
    });
    function query(){
        $.ajax({
            url : "${ctx}/admin/query/progressbar",
            data : {
                "type" : ${type}

            },  // 参数
            type : "post",
            async : false,
            dataType : "json",  //返回json数据
            success:function (result){
                var sumNum = result.entity.sumNum;
                var listNum = result.entity.listNum;

                if(listNum==0){
                    $("#num").html("");
                    $("#status").html("发送完成");
                    $( "#progressbar" ).progressbar({
                        value: 100
                    });
                    window.clearInterval(timeid);
                }else{
                    listNum = sumNum - listNum;
                    var num = listNum/sumNum*100;
                    $( "#progressbar" ).progressbar({
                        value: num
                    });

                    $("#num").html(listNum+"/"+sumNum);
                    $("#status").html("发送中");
                }

            }
        });
    }
</script>

</head>
<body  >


<div class="mt20">
    <div class="commonWrap">
        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="commonTab01">
            <caption>&nbsp;</caption>
            <thead>
            <tr>
                <th colspan="3" align="left"><span>发送进度</span></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td width="20%"><font color="red">*</font>&nbsp;发送进度</td>
                <td width="50%">
                    <div id="progressbar"></div>
                    <span id="num"></span>
                </td>
            </tr>
            <tr>
                <td align="center"><font color="red">*</font>&nbsp;状态</td>
                <td id="status">
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <c:if test="${type==1}">
                        <a href="/admin/user/sendEmaillist" title="返回" class="btn btn-danger">返回</a>
                    </c:if>
                    <c:if test="${type==2}">
                        <a href="/admin/user/sendMsglist" title="返回" class="btn btn-danger">返回</a>
                    </c:if>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>