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
    <title>视频在线</title>
    <!-- Load player theme -->
    <link rel="stylesheet" href="<%=basePath %>css/play.css" type="text/css" media="screen" />
     <link rel="stylesheet" href="<%=basePath %>css/index.css" type="text/css" media="screen" />
	 <link rel="stylesheet" href="<%=basePath %>css/layout.css" type="text/css" media="screen" />
    <!-- Load jquery -->
    <script type="text/javascript" src="<%=basePath %>js/jquery-1.7.2.min.js"></script>

    <!-- load projekktor -->
    <script language="javascript">AC_FL_RunContent = 0;</script>
    <script src="AC_RunActiveContent.js" language="javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>
<%@include file="../head.jsp" %>
<div  id="container2"  style="height:1100px;">
<div id="side" style="margin-right: 65px;">
<div class="search-box">
						<div style="float: right;padding-right: 70px;padding-bottom: 5px;">  		
				<form action="#" name="search"  style="margin-top: 10px;">
<table border="0" cellpadding="0" cellspacing="0" class="tab_search">
<tr>
<td>
<input type="text" name="q" title="Search" class="searchinput" id="searchinput" onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='请输入要搜索的内容..';" onfocus="if(this.value=='请输入要搜索的内容..')value='';" value="请输入要搜索的内容.." size="10"/>
</td>
<td>
<input type="image" width="21" height="17" class="searchaction" onclick="if(document.forms['search'].searchinput.value=='- Search Products -')document.forms['search'].searchinput.value='';" alt="Search" src="<%=basePath %>images/magglass.gif" border="0" hspace="2"/>
</td>
</tr>
</table>
</form>
							
							
						</div>
						<div class="clearfloat"></div>
					</div>
		</div>
	
	<div style=" width:1008px; height:480px; float:left;">
	<div style="background-image:url(<%=basePath %>images/index/newbt.jpg); width:900px; height:27px; padding-left:10px;
	padding-top:5px;margin-left:20px;">最新资讯</div>
      <div style="height:300px; width:400px; margin-left:40px; margin-top:10px;float:left;">
      <script language="javascript">
	if (AC_FL_RunContent == 0) {
		alert("This page requires AC_RunActiveContent.js.");
	} else {
		AC_FL_RunContent(
			'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0',
			'width', '550',
			'height', '400',
			'src', 'videoPlayer',
			'quality', 'high',
			'pluginspage', 'http://www.macromedia.com/go/getflashplayer',
			'align', 'middle',
			'play', 'true',
			'loop', 'true',
			'scale', 'showall',
			'wmode', 'window',
			'devicefont', 'false',
			'id', 'videoPlayer',
			'bgcolor', '#000000',
			'name', 'videoPlayer',
			'menu', 'true',
			'allowFullScreen', 'true',
			'allowScriptAccess','sameDomain',
			'movie', 'videoPlayer',
			'salign', '',
			'flashvars', 'htmlPage=videoPlayer.html'
			); //end AC code
	}
</script>
<noscript>
	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="550" height="400" id="videoPlayer" align="middle">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="allowFullScreen" value="true" />
	<param name="movie" value="<%=basePath %>deploy/videoPlayer.swf" />
    <param name="quality" value="high" />
    <param name="bgcolor" value="#000000" />
    <param name="flashvars" value="htmlPage=videoPlayer.html" />
    <embed flashvars="htmlPage=videoPlayer.html" src="videoPlayer.swf" quality="high" bgcolor="#000000" width="550" height="400" name="videoPlayer" align="middle" allowScriptAccess="sameDomain" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
	</object>
</noscript>
      
      
      
		<div  style="width:350px; margin-top:10px;">和惩治毒品违法犯罪行为，保护公民身心健康，维护社会秩序的工作。或者说，运用行政法令和群众监督的力量，促使吸食或注射鸦片和代用麻</div>
      </div>
	  <div  style="height:200px; width:500px; margin-left:20px; margin-top:10px; float:left;">
	 
        <div style="height:200px; width:200px; float:left; margin:0px 10px 10px 10px;">
	    <img  style="height:180px; width:200px;" src="<%=basePath %>images/newspic/01.jpg"/>
		<div  style="text-align:center; ">禁毒委员会参加第六次</div>
	   </div>
	  
	    <div style="height:200px; width:200px; float:left; margin:0px 10px 10px 10px;">
	    <img  style="height:180px; width:200px;" src="<%=basePath %>images/newspic/02.jpg"/>
		<div style="text-align:center; ">北京警方查获禁毒点</div>
	  </div>
	  
	    <div style="height:200px; width:200px; float:left; margin:0px 10px 10px 10px;">
	    <img  style="height:180px; width:200px;" src="<%=basePath %>images/newspic/03.jpg"/>
		<div style="text-align:center; ">禁毒支队去的成功</div>
	  </div>
	  
	  <div style="height:200px; width:200px; float:left; margin:0px 10px 10px 10px;">
	    <img  style="height:180px; width:200px;" src="<%=basePath %>images/newspic/04.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>
	  </div>
	  
	  
      </div>
	  
	  
	</div>	
		<div style=" width:1008px; height:300px; float:left;">
	<div style="background-image:url(<%=basePath %>images/index/newbt.jpg); width:900px; height:27px; padding-left:10px;
	padding-top:5px;margin-left:20px;">禁毒在线</div>
	
	      <div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/01.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
		<div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/02.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
		<div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/03.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
		<div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/05.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
					
	</div>
	<div style=" width:1008px; height:300px; float:left;">
	<div style="background-image:url(<%=basePath %>images/index/newbt.jpg); width:900px; height:27px; padding-left:10px;
	padding-top:5px;margin-left:20px;">法律法规</div>
	
	      <div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/01.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
		<div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/02.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
		<div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/03.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
		<div style="height:200x; width:180px; margin-left:40px; margin-top:10px;float:left;">
		 	    <img  style="height:180px; width:180px;" src="<%=basePath %>images/newspic/05.jpg"/>
		<div style="text-align:center; ">成功抓获10人犯罪团伙</div>		
		</div>
					
	</div>
		
</div>

    
    <script type="text/javascript">
	$(document).ready(function() {
	    projekktor('#player_a'); // instantiation
	});
    </script>

<%@include file="../foot.jsp" %>

</body>
</html>
