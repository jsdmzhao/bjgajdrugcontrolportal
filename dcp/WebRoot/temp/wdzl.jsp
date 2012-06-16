<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/ligerui-icons.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/ligerUI/js/core/base.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerToolBar.js" type="text/javascript"></script>
        <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerResizable.js" type="text/javascript"></script>
        <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerCheckBox.js" type="text/javascript"></script>
    
    
   
</head>
<body style="overflow-x:hidden; padding:2px;">
<div style="width:300px; margin-left:auto; margin-right:auto; text-algin:center">
<img src="zl.jpg" alt=""  />
</div>
 
</body>
</html>
