<%@page import="com.unis.app.system.service.SysRoleSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
	SysRoleSvc sysRoleSvc= (SysRoleSvc) ctx.getBean("sysRoleSvc");
	Map p=new HashMap();
	List<Map> list = sysRoleSvc.queryAll(p); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<base href="<%=basePath%>">
<title>手机归属地</title>
<link
	href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css"
	rel="stylesheet" type="text/css" />
<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css"
	rel="stylesheet" type="text/css" />
<script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js"
	type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js"
	type="text/javascript"></script>
<link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet"
	type="text/css" />
<script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/js/ligerui.expand.js"
	type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/SysKitSvc.js'></script>

</head>
<body style="padding:10px;height:100%; text-align:center;">

	<script type="text/javascript">

	 var manager;
     $(function ()
     {
         manager = $("#btn").ligerButton(
         {
        	 text:'查询',
             click: function ()
             {

             var obj={nHm : $("#nHm").val()}
        	 SysKitSvc.querySjgsdInfo(obj, function(rdata) {
    				if (rdata) {
    					$("#result").html(rdata);
    				}
    			});
             }
         }
         );

       
     }); 
</script>

<div >
<div>
<form class="l-form" id="mainform" method="post"  ligeruiid="mainform">
		<div class="l-group l-group-hasicon">
			<img
				src="<%=basePath%>liger/lib/icons/32X32/communication.gif">
				<span>手机归属地查询</span>
		</div>
		<ul>
			<li style="width: 100px; text-align: left;">请输入手机号码：</li>
			<li style="width: 280px; text-align: left;"><div
					style="width: 160px;" class="l-text">
					<input style="width: 160px;" id="nHm" class="l-text-field"
						name="nHm" type="text" ligeruiid="nHm"
						ltype="text" ligerui='{"width":160}'><div class="l-text-l"></div>
						<div class="l-text-r"></div>
				</div>
				<div id="btn"></div>
			</li>
			<li style="width: 30px;"></li>
		</ul>
		<ul>
			<div id='result' style="width:300px; background-color: #F5F5F5; border: 1px solid rgba(0, 0, 0, 0.05);  border-radius: 4px 4px 4px 4px;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05) inset;margin-bottom: 20px;min-height: 20px;padding: 19px;"> </div>
			<li style="width: 30px;"></li>
		</ul>
		
		</div>
		</form>
		</div>
		
		
</body>
</html>
