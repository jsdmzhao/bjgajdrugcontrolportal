<%@page import="java.net.URLDecoder"%>
<%@page import="org.apache.commons.lang.xwork.StringUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String c_lm = (String)request.getParameter("news.c_lm");
if(c_lm == null){
	c_lm = "";
}

String c_bt = (String)request.getParameter("news.c_bt");
if(c_bt == null){
	c_bt = "";
}

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>北京禁毒信息系统</title>


  </head>
  
  <body bgcolor="#000000">


<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="1003" height="590" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="dynamic_flash_video_gallery.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#000000" /><embed src="dynamic_flash_video_gallery.swf" quality="high" bgcolor="#000000" width="1003" height="590" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object>



</body>
			