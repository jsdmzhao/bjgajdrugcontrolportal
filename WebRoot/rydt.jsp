<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>荣誉殿堂</title>
    <link rel="stylesheet" href="<%=basePath %>css/play.css" type="text/css" media="screen" />
     <link rel="stylesheet" href="<%=basePath %>css/index.css" type="text/css" media="screen" />
	 <link rel="stylesheet" href="<%=basePath %>css/layout.css" type="text/css" media="screen" />
<script src="AC_RunActiveContent.js" language="javascript"></script>

<script type="text/javascript" src="<%=basePath%>js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-ui.min.js"></script>
</head>

<body>
<%@include file="../../head.jsp" %>
<div  id="container2"  style="height:1100px;">
<div id="side" style="margin-right: 65px;">
<div class="search-box">
						<div style="float: right;padding-right: 70px;padding-bottom: 5px;">  		
					<form action="" id="searchForm" name="searchForm" style="margin-top: 10px;">
<table border="0" cellpadding="0" cellspacing="0" class="tab_search">
<tr>
<td><input type="text" title="Search"
										class="searchinput" id="searchinput"
										onkeydown="if (event.keyCode==13) {}"
										onblur="if(this.value==''){value='请输入要搜索的内容..';}"
										onfocus="if(this.value=='请输入要搜索的内容..'){value='';}" value="请输入要搜索的内容.." size="10"/></td>
									<td><img width="21" height="17" class="searchaction" onclick="onSearch();"
										 src="<%=basePath%>images/magglass.gif" border="0"
										hspace="2" /></td>
</tr>
</table>
</form>
							
							
						</div>
						<div class="clearfloat"></div>
					</div><script>
			function onSearch(){
				if($("#searchinput").val()=='请输入要搜索的内容..'||$("#searchinput").val()=="")
				{
					$("#searchinput").attr("value","");
					 return false;
				}else{
			    var val=encodeURI(encodeURI($("#searchinput").val()));
				 window.location.href="<%=basePath%>news/list?news.c_bt="+val;
				}
			}
			
			          
			</script>
		</div>
	
	<div style=" width:1000px; height:1000px; float:;">
	<img src="rydt.jpg" width:"759px"; height:"615px"; align="middle" style="margin-left: 120px;margin-top: 20px"/>
	  
	</div>	
	

    
   
<%@include file="../../foot.jsp" %>

</body>
</html>
