<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String type = request.getParameter("type");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>内部消息 明细</title>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <%--<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />--%>
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>  
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>    
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/emails_cn.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery.form.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/validator.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/formUtil.js" type="text/javascript"></script>
    
    <script type="text/javascript" src="<%=basePath%>ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=basePath%>ckfinder/ckfinder.js"></script>
	
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/EmailAction.js'></script>
	<script type="text/javascript">
		var dialog;
		function f_cancel(){
	        parent.dialog_hidden();
	    }
		function f_send(){
			parent.dialog_repay('email.c_jsr=<s:property value="email.c_yhid"  escape="false"/>&email.c_jsr_=<s:property value="email.c_yhid_"  escape="false"/>');
		}
	</script>
</head>
<body style="padding-bottom:31px;">
    <form id="mainform"  method="post"></form> 
    <div align="center" style="padding-left: 10px;">
	  <table width="95%" border="0" cellpadding="0" cellspacing="0">
	    <!--DWLayoutTable-->
	    <tr>
	      <td valign="top">
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
	        <!--DWLayoutTable-->
	        <tr>
	          <td height="22" bgcolor="#D2D2D2"></td>
	          <td colspan="2" align="left" bgcolor="#D2D2D2"><h2><s:property value='email.c_bt'/></h2></td>
	        </tr>
	        <tr>
	          <td height="214"></td>
	          <td colspan="2" align="left" valign="top">
	          	<% 
	          		if("js".equals(type)){
	          	%>
	          			<p>发件人：<s:property value='email.c_yhid_'/></p>
	          	<%		
	          		}
	          	%>
	          	
	            <p>时   间： <s:property value='email.d_dj'/></p>
	            <p>收件人：<s:property value='email.c_jsr_'/></p>
	            <s:if test="email.c_csr_ != null and email.c_csr_.length() > 0">
	            	<p>抄送人：<s:property value='email.c_csr_'/></p>
	            </s:if>
	            <% 
	          		if("fs".equals(type)){
	          	%>
	          		<s:if test="email.c_msr_ != null and email.c_msr_.length() > 0">
	          			<p>密件人：<s:property value='email.c_msr_'/></p>
	          		</s:if>
	          	<%		
	          		}
	          	%>
	          	<s:if test="email.c_fj != null and email.c_fj.length() > 0">
	          		<p>附     件：<a href="<s:property value='email.c_fj'/>"><s:property value='email.c_fj'/></a></p>
	          	</s:if>
	            <p>邮件内容：</p>
	            <p><s:property value='email.c_nr' escape="false"/></p>
	          </td>
	        </tr>
	        
	      </table>
	      </td>
	    </tr>
	  </table>
	</div>
	<DIV class=form-bar>
		<DIV class=form-bar-inner>
			<DIV class=l-dialog-btn jQuery152012332108634844241="2">
				<DIV class=l-dialog-btn-l></DIV>
				<DIV class=l-dialog-btn-r></DIV>
				<DIV class=l-dialog-btn-inner onclick="f_cancel()">取消</DIV>
			</DIV>
			<% 
	          		if("js".equals(type)){
	          	%>
	          			<DIV class=l-dialog-btn jQuery152012332108634844241="4">
							<DIV class=l-dialog-btn-l></DIV>
							<DIV class=l-dialog-btn-r></DIV>
							<DIV class=l-dialog-btn-inner onclick="f_send()">回复</DIV>
						</DIV>
	          	<%		
	          		}
	          	%>
			
		</DIV>
	</DIV>


</body>

</html>

