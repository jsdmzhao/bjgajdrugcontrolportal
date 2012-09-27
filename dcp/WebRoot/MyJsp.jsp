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
    
    <title>生成首页静态页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%
    out.println("开始生成首页静态页面...................");
	out.println("<br/>");
	out.println("<br/>");
	out.println("......................请稍候.........................");
	out.println("<br/>");
	out.println("<br/>");
	CreateIndexAction idx  = new CreateIndexAction();
	idx.createIndexHtml(basePath+"index.jsp");
	out.println("成功生成首页静态页面...................");
	%>

  </head>
  
  <body>
  </body>
</html>
