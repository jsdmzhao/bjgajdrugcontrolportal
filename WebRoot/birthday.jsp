<%@page import="com.unis.core.action.CreateIndexAction"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
 	 <div>
	  	  <object type="application/x-shockwave-flash" data="flash/birthday.swf" width="700" height="600">
			<param name="movie" value="flash/birthday.swf" />
			<param name="wmode" value="transparent" />
		  </object>
	 </div>
  </body>
</html>
