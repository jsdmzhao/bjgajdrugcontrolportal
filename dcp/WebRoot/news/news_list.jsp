<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/layout.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" />
		<LINK href="<%=basePath%>css/css.css" type=text/css rel=stylesheet />
		<!-- 弹出窗 -->
<script type="text/javascript" src="<%=basePath%>highslide/highslide-with-html.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>highslide/highslide.css" />
<!-- 弹出窗 -->
		
	    <style type="text/css">
<!--
.STYLE3 {
	font-size: 16px;
	font-weight: bold;
	padding-top:5px;
}
#news ul{
}
#news ul li{
	width:630px;
	height:30px;
	padding-left:15px;
	background-image:url(<%=basePath%>images/12312.jpg);
	background-repeat:no-repeat;
	line-height:18px;
	text-align: left;
	padding-top:7px;
	border-bottom-width: 2px;
	border-bottom-style: dotted;
	border-bottom-color: #999999;
	background-position: 1px;
}
#new_list{
width:670px; height:504px; float:left; margin-top:10px;margin-right:10px; border-left: 1px solid  #999999; border-right:1px solid  #999999;border-bottom: 1px solid  #999999;
}
/*CSS Digg style pagination*/

DIV.digg {
	PADDING-RIGHT: 3px; PADDING-LEFT: 3px; PADDING-BOTTOM: 3px; MARGIN: 3px; PADDING-TOP: 3px; TEXT-ALIGN: center
}
DIV.digg A {
	BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 5px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 5px; PADDING-BOTTOM: 2px; MARGIN: 2px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #000099; PADDING-TOP: 2px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none
}
DIV.digg A:hover {
	BORDER-RIGHT: #000099 1px solid; BORDER-TOP: #000099 1px solid; BORDER-LEFT: #000099 1px solid; COLOR: #000; BORDER-BOTTOM: #000099 1px solid
}
DIV.digg A:active {
	BORDER-RIGHT: #000099 1px solid; BORDER-TOP: #000099 1px solid; BORDER-LEFT: #000099 1px solid; COLOR: #000; BORDER-BOTTOM: #000099 1px solid
}
DIV.digg SPAN.current {
	BORDER-RIGHT: #000099 1px solid; PADDING-RIGHT: 5px; BORDER-TOP: #000099 1px solid; PADDING-LEFT: 5px; FONT-WEIGHT: bold; PADDING-BOTTOM: 2px; MARGIN: 2px; BORDER-LEFT: #000099 1px solid; COLOR: #fff; PADDING-TOP: 2px; BORDER-BOTTOM: #000099 1px solid; BACKGROUND-COLOR: #000099
}
DIV.digg SPAN.disabled {
	BORDER-RIGHT: #eee 1px solid; PADDING-RIGHT: 5px; BORDER-TOP: #eee 1px solid; PADDING-LEFT: 5px; PADDING-BOTTOM: 2px; MARGIN: 2px; BORDER-LEFT: #eee 1px solid; COLOR: #ddd; PADDING-TOP: 2px; BORDER-BOTTOM: #eee 1px solid
}
#left_new{
	background-image:url(<%=basePath%>images/zz_0707118.png);
	background-repeat: no-repeat;
	background-position: 0px 0px;
	margin-top:25px;
	height:100%;
}
-->
        </style>
</head>
	<body>
<script type="text/javascript" src="<%=basePath%>js/lightBox.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-ui.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
	});
</script>
<script type="text/javascript">

/*弹出内容*/
function parahtml(width,height)
{
var htmls= '<iframe src="admin/index.jsp" width='+width+' height='+height+' frameborder="0"></iframe>';
return htmls;
}
function parahtml2(width,height)
{
var htmls='<div style="width='+width+' height='+height+'">联系人：黄园<Br />联系电话：<Br />邮箱地址：huangyuanaccp@163.com</div>';
return htmls;
}
/*底部样式*/
function fontbutton(index,mag)
{
var footerhtml
if(mag==1)//选择按钮样式
{
 footerhtml='<input type="image" alt="Cancel" src="<%=basePath%>images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';	

}else
{
footerhtml='<input type="image" alt="Cancel" src="<%=basePath%>images/send_button.gif" class="btn" onclick=alert("Sumbited!"); />';
footerhtml+='<input type="image" alt="Cancel" src="<%=basePath%>images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';
}
return footerhtml;

}
</script>
<%@include  file="../head.jsp" %>
<div id="container2">
<div style=" width:1000px; height:26px; background-image:url(<%=basePath%>images/headbg.jpg)">
<div style="float:left; margin-left:20px;">当前位置>> </div> 
<table border="0" cellpadding="0" cellspacing="0" style="float:right; margin-right:20px;" class="tab_search">
  <tr>
    <td><input type="text" name="q" title="Search" class="searchinput" id="searchinput" onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='请输入要搜索的内容..';" onfocus="if(this.value=='请输入要搜索的内容..')value='';" value="请输入要搜索的内容.." size="10"/>
    </td>
    <td><input name="image" type="image" class="searchaction" onclick="if(document.forms['search'].searchinput.value=='- Search Products -')document.forms['search'].searchinput.value='';" src="<%=basePath%>images/magglass.gif" alt="Search" width="21" height="17" hspace="2" border="0"/>
    </td>
  </tr>
</table>
</div>
<div style=" width:1004px; height:500px; background-color:#FFFFFF; padding-bottom:40px;">
<div style=" width:290px; height:504px; float:left;  margin-right:10px; margin-left:10px; margin-top:10px;
 border-left: 1px solid  #999999; border-right:1px solid  #999999;border-bottom: 1px solid  #999999;
 background-image:url(<%=basePath%>images/blue.png);
 background-repeat:no-repeat;">
 <div id="left_new">
 	
 </div>
 </div>
<div id="new_list">
<div style="background-image:url(<%=basePath%>images/navbg.png); width:670px; height:30px;"></div>
<div  style="width:670px; height:420px; padding-top:5px; margin-left:10px;" id="news" >
<ul>

                                       <s:if test="Querys.size()>=9">
                                 <s:iterator   value="Querys"  id="news" var="news" begin="0" end="9" >
									<li>	
									
									<s:if test="#news.c_bt.length()>=30"> 
									  <div style="float:left; margin-left:20px; margin-right:10px;">
								  
									<a href="view/detail?news.n_xh=<s:property value="#news.n_xh"/>"><s:property value="#news.c_bt.substring(0,30)+'...'"/>	</a>
									 </div>
									 <div style="float:right; margin-left:10px; margin-right:10px;">	<s:property value="#news.d_fbsj"/></div>
  <div style="float:right; margin-left:10px; margin-right:10px;">[签收]</div> 
									</s:if>
								    <s:else>
								   <div style="float:left; margin-left:20px; margin-right:10px;">
								  
								  <a href="view/detail?news.n_xh=<s:property value="#news.n_xh"/>"> 	<s:property value="#news.c_bt"/></a>
								  
								   </div>
 <div style="float:right; margin-left:10px; margin-right:10px;">	<s:property value="#news.d_fbsj"/></div>
  <div style="float:right; margin-left:10px; margin-right:10px;">[签收]</div> 

								    </s:else>
									
									</li>	
								</s:iterator>
                                 
                                 
                                       </s:if>
                                       <s:else>
                                     <s:iterator   value="Querys"  id="news" var="news" begin="0" end="Querys.size()-1" >
									<li>	
									
									<s:if test="#news.c_bt.length()>=30"> 
									  <div style="float:left; margin-left:20px; margin-right:10px;">
								  
									<a href="view/detail?news.n_xh=<s:property value="#news.n_xh"/>"><s:property value="#news.c_bt.substring(0,30)+'...'"/>	</a>
									 </div>
									 <div style="float:right; margin-left:10px; margin-right:10px;">	<s:property value="#news.d_fbsj"/></div>
  <div style="float:right; margin-left:10px; margin-right:10px;">[签收]</div> 
									</s:if>
								    <s:else>
								   <div style="float:left; margin-left:20px; margin-right:10px;">
								  
								  <a href="view/detail?news.n_xh=<s:property value="#news.n_xh"/>"> 	<s:property value="#news.c_bt"/></a>
								  
								   </div>
 <div style="float:right; margin-left:10px; margin-right:10px;">	<s:property value="#news.d_fbsj"/></div>
  <div style="float:right; margin-left:10px; margin-right:10px;">[签收]</div> 

								    </s:else>
									
									</li>	
								</s:iterator>
                                     
                                       
                                       </s:else>
	



</ul>

</div>
<div style="width:670px; height:30px;margin-left:10px;" ><div class="digg"><span class="disabled"> < </span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=4">4</a><a href="#?page=5">5</a><a href="#?page=6">6</a><a href="#?page=7">7</a>...<a href="#?page=199">199</a><a href="#?page=200">200</a><a href="#?page=2"> > </a></div></div>
</div>
</div>
</div>


<%@include file="../foot.jsp"  %>
<SCRIPT type=text/javascript>
jQuery(function(){

	$("#changeCity").click(function(a){$("#allCity").slideDown(300);
	a.stopPropagation();$(this).blur()});
	$("#allCity").click(function(a){a.stopPropagation()});
	//$(document).click(function(a){a.button!=2&&$("#allCity").slideUp(300)});
	$("#foldin").click(function(){$("#allCity").slideUp(300)})
    });

</SCRIPT>
  
 </body>
 </html>