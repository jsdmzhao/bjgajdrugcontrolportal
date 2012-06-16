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
		<title><s:property value="news.c_bt"/></title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/layout.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" />
		<LINK href="<%=basePath%>css/css.css" type=text/css rel=stylesheet />
	    <style type="text/css">
<!--
.STYLE3 {
	font-size: 16px;
	font-weight: bold;
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
<%@include  file="head.jsp" %>
<div id="container2" style="height: 100%" >
<div style="float:left;"><div id="main"> 
				
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">公 告 栏</span>	
						<div class="main-con" style="height: 410px;">
							<ul class="index-ul">
								<li><a href="#">北京进一步提高见义勇为人员奖励...</a></li>
								<li><a href="#">省公安厅党委代表10万民警在雨花...</a></li>
								<li><a href="#">北京警方全力确保清明期间治安良...</a></li>
								<li><a href="#">北京警方开展金银珠宝营业场所拉...</a></li>
								<li><a href="#">北京进一步提高见义勇为人员奖励...</a></li>
								<li><a href="#">省公安厅党委代表10万民警在雨花...</a></li>
								<li><a href="#">北京警方全力确保清明期间治安良...</a></li>
								<li><a href="#">北京警方开展金银珠宝营业场所拉...</a></li>
								<li><a href="#">北京进一步提高见义勇为人员奖励...</a></li>
							</ul>
							<div style="text-align: right;padding:20px 20px 10px 0px;font-size: 14px;">
								<a href="#">更多信息》</a>
							</div>
							<div style="background: url('<%=basePath%>images/index/birth-bg.png') no-repeat;width: 227px;height:107px;position: relative;left: -12px;top: 10px;">
								<div style="padding: 40px 0 0 20px;">
									严静，李小璐
								</div>
								<div style="text-align: right;padding: 20px 10px 0 0;">
									<a href="#" style="color: #ff0000;">点击领取总队党委祝福 >></a>
								</div>
							</div>
						</div>
					</div>
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">专栏专项工作</span>	
						<div class="main-con" style="height: 230px;">
							<ul class="index-ul">
								<li><a href="#">北京进一步提高见义勇为人员奖励...</a></li>
								<li><a href="#">省公安厅党委代表10万民警在雨花...</a></li>
								<li><a href="#">北京警方全力确保清明期间治安良...</a></li>
								<li><a href="#">北京警方开展金银珠宝营业场所拉..</a></li>
								<li><a href="#">北京警方引进无人侦察机</a></li>
								<li><a href="#">盱眙城区银行自助服务区专职巡逻...</a></li>
								<li><a href="#">北京警方引进无人侦察机</a></li>
								<li><a href="#">盱眙城区银行自助服务区专职巡逻...</a></li>
							</ul> 
							<div style="text-align: right;padding: 10px 20px 0 0;">
								<a href="#">更多信息 >></a>
							</div>
						</div>
					</div>
					
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">荣誉殿堂</span>	
						<div class="main-con" style="height: 435px;">
							<div>
								<img src="<%=basePath%>images/rongyu.png"/>
							</div>
							<div style="text-align: center;padding: 10px 0;">
								依法禁毒、构建和谐
							</div>
							<ul class="index-ul">
								<li><a href="#">一个女吸毒者的戒毒故事</a></li>
								<li><a href="#">染上了毒，哪儿还有家呀</a></li>
								<li><a href="#">刑警染毒瘾被强制隔离戒毒</a></li>
								<li><a href="#">一位吸毒母亲的忏悔与新生</a></li>
								<li><a href="#">亡羊补牢　为时不晚</a></li>
								<li><a href="#">真心忏悔，才能走出昨天</a></li>
								<li><a href="#">一个女吸毒者的戒毒故事</a></li>
								<li><a href="#">染上了毒，哪儿还有家呀</a></li>
								<li><a href="#">一个女吸毒者的戒毒故事</a></li> 
							</ul> 
							<div style="text-align: right;padding: 10px 20px 0 0;">
								<a href="#">更多信息 >></a>
							</div>
						</div>
					</div>
					<div style="height: 155px;margin-bottom: 4px;background: url('<%=basePath%>images/index/bg-3.png') no-repeat;">
						<div style="padding: 20px 20px 20px 40px;">
							<div style="padding: 0 0 20px;">
								<select>
									<option>吸毒人员库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>	
								</select>
							</div>
							<div style="padding: 0 0 20px;">
								<select>
									<option>法律法规库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>	
								</select>
							</div>
							<div style="padding: 0 0 20px;">
								<select>
									<option>基层党支部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>	
								</select>
							</div>
						</div>
					</div>
				</div></div>
<div style="float:right; width:725px; height:550px; margin-right:20px;">
<div>
<div style=" background-image: url(<%=basePath%>images/head1.png); background-repeat:no-repeat; float:left;
width:17px; height:44px;"></div>
<div style=" background-image: url(<%=basePath%>images/head3.png); float:left;
width:690px; height:44px;">
  <div align="center" class="STYLE3" style="padding-top:12px;"><s:property value="news.c_bt"/></div>
</div>
<div style=" background-image: url(<%=basePath%>images/head2.png); background-repeat:no-repeat; float:left;
width:17px; height:44px;"></div>

<!--
<div style=" background-image: url(<%=basePath%>images/cenner2.png);background-repeat:repeat-y; float:left;
width:14px; height:7px;"></div>
<div style=" background-color:#F5F5F5;width:686px; height:7px; float:left;">

</div>
<div style=" background-image: url(<%=basePath%>images/cenner.png); background-repeat:repeat-y; float:left;
width:23px; height:7px;"></div>
-->
</div>
<div >
<div style=" margin-left:1px; padding-left:20px; padding-right:20px;  background-image:url(<%=basePath%>images/cn.png);
width:683px; height:100%;">

<div style="height:5px; width:100%; margin-top:10px; margin-bottom:20px;float: left;">
  <div style="float:left;">发布时间：   <s:property value="news.d_fbsj"/></div>
  <div style="float:left; margin-left:50px;">发布人  ：</div>
</div>
<hr style="border-bootom: 1px dashed #000000;"/>


<div style="_height: 1340px;overflow: visible;min-height: 1340px;" id="nr">
   <s:property value="news.c_nr" escape="false"/>


</div>

</div>

</div>

<div >
<div style="  background-image: url(<%=basePath%>images/foot2.png); background-repeat:no-repeat; float:left;
width:15px; height:57px;"></div>
<div style=" background-image: url(<%=basePath%>images/foot3.png); float:left;
width:691px; height:57px;"></div>
<div style=" background-image: url(<%=basePath%>images/foot1.png); background-repeat:no-repeat; float:left;
width:17px; height:57px;"></div>
</div>
				<div style="margin-top: 10px;float:right; width: 1000px;">
<%@include file="foot.jsp"  %>
</div>
</div>





</div>



<SCRIPT type=text/javascript>
jQuery(function(){

	$("#changeCity").click(function(a){$("#allCity").slideDown(300);
	a.stopPropagation();$(this).blur()});
	$("#allCity").click(function(a){a.stopPropagation()});
	//$(document).click(function(a){a.button!=2&&$("#allCity").slideUp(300)});
	$("#foldin").click(function(){$("#allCity").slideUp(300)})
    });

</SCRIPT>
      <script language="javascript">
      $(document).ready(function (){
        var nScrollHight = 0; 
        var nScrollTop = 0;  
        var nDivHight = $("#div1").height();
        $("#div1").scroll(function(){
          nScrollHight = $(this)[0].scrollHeight;
          nScrollTop = $(this)[0].scrollTop;
          if(nScrollTop + nDivHight >= nScrollHight)
           
          });
      });
 </script>
 </body>
 </html>