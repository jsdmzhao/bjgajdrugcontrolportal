<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>新闻中心</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" />
		<LINK href="<%=basePath%>css/css.css" type=text/css rel=stylesheet />
		<link href="<%=basePath%>css/base.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/layout.css" />

	<script language="javascript" type="text/javascript" src="<%=basePath%>js/ycfcw.js"></script>
<style>
*{padding:0px; margin:0px;}


.ycfcw{ background:url(<%=basePath%>images/newspic/flashbg.gif) no-repeat 0 0; width:231px; height:240px; padding:5px 5px 5px 5px; margin:0px auto 0; border-right:1px solid #CCCCCC ;}
.author{ width:231px; height:auto; text-align:center; margin:20px auto 0; font-size:14px;}
.six-title{
	font-size: 14px;
	font-family: "宋体";
	font-weight:bold;
	color: #002b73;
	line-height: 30px;
	display: inline-block;
	float:left; margin:3px 3px 3px 3px;
}
</style>
</head>

<body style="font-size:14px;">

	
<%@include  file="../head.jsp" %>
	<div id="container2">
		
	<div style="float:left; width:245px;">

				<div id="main"> 
	<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">今日值班</span>
						<div class="main-top-con">
							<ul class="index-ul">

																<li>领　导：金志海</li>
								<li>办公室：金志海</li>
								<li>协　指：金志海</li>
								<li>情　报：金志海、李小海</li>
								<li>侦　查：金志海、王大力</li>
								<li>查　禁：金志海、杨益盟</li>
								<li>侦　查：金志海、王大力</li>
							</ul>
						</div>
					</div>
	</div>
	
	<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">禁毒在线</span>
						<div class="main-con" style="height: 485px;">
							<ul class="index-ul" >
																<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
								<li>广东揭阳：垃圾堆里挖出制毒线索 </li>
							</ul>
						</div>
					</div>
	</div>
	</div>
	<div style="float:left;width:750px; ">
		<div id="side">
		<div class="search-box">
						<div style="float: right;padding-right: 70px;padding-bottom: 5px;">  		
				<form action="#" name="search"  style="margin-top: 10px;">
<table border="0" cellpadding="0" cellspacing="0" class="tab_search">
<tr>
<td>
<input type="text" name="q" title="Search" class="searchinput" id="searchinput" onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='请输入要搜索的内容..';" onfocus="if(this.value=='请输入要搜索的内容..')value='';" value="请输入要搜索的内容.." size="10"/>
</td>
<td>
<input type="image" width="21" height="17" class="searchaction" onclick="if(document.forms['search'].searchinput.value=='- Search Products -')document.forms['search'].searchinput.value='';" alt="Search" src="<%=basePath%>images/magglass.gif" border="0" hspace="2"/>
</td>
</tr>
</table>
</form>
							
							
						</div>
						<div class="clearfloat"></div>
					</div><br />
					
					<div style="float:left; width:470px;">
					
					 <div style="background-image:url(<%=basePath%>images/index/newbt.jpg);  width:470px; height:34px; border: 1px solid #CCCCCC;">
					 <div style="float:left; margin:6px 3px 3px 3px;"><img src="<%=basePath%>images/newspic/bg.jpg" /></div>
					 <div class="six-title">要闻导读</div>
					 <div style="float:right; margin:8px 5px 3px 3px;">更多信息>></div>
					 </div>
					 <div style="width:470px; height:200px;"></div>
					 	 <div style="background-image:url(<%=basePath%>images/index/newbt.jpg);  width:470px; height:34px; border: 1px solid #CCCCCC;">
						  <div style="float:left; margin:6px 3px 3px 3px;"><img src="<%=basePath%>images/newspic/bg.jpg" /></div>
						  	 <div class="six-title">工作动态</div>
						   <div style="float:right; margin:8px 5px 3px 3px;">更多信息>></div>
						 </div>
					 <div style="width:470px; height:200px;"></div>
					 	 <div style="background-image:url(<%=basePath%>images/index/newbt.jpg);  width:470px; height:34px; border: 1px solid #CCCCCC;">
						  <div style="float:left; margin:6px 3px 3px 3px;"><img src="<%=basePath%>images/newspic/bg.jpg" /></div>
						  	 <div class="six-title">分局建议</div>
						   <div style="float:right; margin:8px 5px 3px 3px;">更多信息>></div>
						 </div>
					 <div style="width:470px; height:200px;"></div>
					</div>
					
					<div style="float:left; width:272px; margin-left:5px;">
					<div class="ycfcw">
					<script language="javascript" type="text/javascript">
					writeflashhtml("_swf=flash/ycfcw.swf", "_width=270", "_height=238" ,"_wmode=transparent");
					</script>
					</div>
                  		<div id="main"  style="margin-left:15px; margin-top:5px;"> 
	<div class="main-box" style="margin-bottom: 4px; ">
						<span class="title1">禁毒情报</span>
						<div class="main-con" style="height:395px;" >
							<ul class="index-ul">

								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
								<li>昌平分局破获一起特大运输毒品案 </li>
							</ul>
						</div>
					</div>
	</div>
	</div>					 
					</div>
					
					<div>
					
					</div>
					
</div>
	
  
    		<%@include file="../foot.jsp"  %>
</body>
</html>
