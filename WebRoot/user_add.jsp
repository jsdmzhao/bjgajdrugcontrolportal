<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
	
  </head>
  
  <body>
  <form action="add" method="post">
    帐号：<input type="text" name="user.c_user_id"/> <br/>
    姓名：<input type="text" name="user.c_user_mc"/> <br/>
    密码：<input type="password" name="user.c_pass"/> <br/>
    年龄：<input type="text" name="user.c_age"/> <br/>
    性别：<input type="text" name="user.c_xb"/> <br/>
    简介： <textarea rows="30" cols="40" name="user.c_jj"></textarea>
  	   <script type="text/javascript">
  	 	var editor = CKEDITOR.replace( 'user.c_jj' );
    	CKFinder.setupCKEditor( editor, '/ckfinder/' );
      </script>
      
  <input type="submit" name="" value="保存用户"/>
  </form>
  </body>
</html>
