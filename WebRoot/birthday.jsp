<%@page import="com.unis.app.userinfo.service.UserInfoSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
UserInfoSvc userInfoSvc= (UserInfoSvc) ctx.getBean("userInfoSvc");

String stStr = userInfoSvc.getSr();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>生日祝福</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
 	 <div style="text-align: center;">
 	 	  
	  	  <object type="application/x-shockwave-flash" data="flash/birthday.swf" width="760" height="500">
			<param name="movie" value="flash/birthday.swf" />
			<param name="wmode" value="transparent" />
		  </object><br>
		  <span><%=stStr %> <font color="red">总队全体同仁祝你生日快乐</font></span>
 	 	  
	 </div>
  </body>
</html>
