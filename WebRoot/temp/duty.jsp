<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<base href="<%=basePath%>">
		<title>北京禁毒网站后台管理</title>
		<link
			href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css"
			rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css"
			rel="stylesheet" type="text/css" />
		<script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerTab.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerLayout.js"
			type="text/javascript"></script>
		<link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>liger/lib/css/index.css" rel="stylesheet"
			type="text/css" />
		<script src="<%=basePath%>liger/lib/js/common.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/login.js"
			type="text/javascript"></script>

		<script
			src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js"
			type="text/javascript"></script>
		<script
			src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/jquery-validation/messages_cn.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/changepassword.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js"
			type="text/javascript"></script>
			    <script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/SysUserSvc.js'></script>
	</head>
	<body>
	<center><button type="button" onclick="save('1')">上班打卡</button></center>
	<center style="margin-top: 20px" ><button type="button" onclick="save('0')">下班打卡</button></center>
 <script type="text/javascript"> 
function save(zt) {

        	var formMap = {userId:'<%=session.getAttribute("userId") %>',N_LX:zt,dDj:'<%=new Date().toGMTString()%>',cZt:'1'};
		
        	KqSxbSvc.save(formMap,function (rdata){
        		if (rdata) {
					alert('打卡成功', function() {
						
					});
				} else {
					alert('打开失败');
				}
			});
        	
        		
}

</script>
	
	</body>
</html>
