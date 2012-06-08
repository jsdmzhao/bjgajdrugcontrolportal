<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="css/layout.css" />
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<LINK href="css/css.css" type=text/css rel=stylesheet />
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
<script type="text/javascript" src="js/lightBox.js"></script>
<script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/jquery-ui.min.js" ></script>
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
 footerhtml='<input type="image" alt="Cancel" src="images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';	

}else
{
footerhtml='<input type="image" alt="Cancel" src="images/send_button.gif" class="btn" onclick=alert("Sumbited!"); />';
footerhtml+='<input type="image" alt="Cancel" src="images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';
}
return footerhtml;

}
</script>
<%@include  file="head.jsp" %>
<div id="container2">
<div style="float:left; width:725px; height:550px; margin-right:20px;">
<div>
<div style=" background-image: url(images/head1.png); background-repeat:no-repeat; float:left;
width:17px; height:44px;"></div>
<div style=" background-image: url(images/head3.png); float:left;
width:690px; height:44px;">
  <div align="center" class="STYLE3" style="padding-top:12px;">北京警方开展金银珠宝营业场所拉</div>
</div>
<div style=" background-image: url(images/head2.png); background-repeat:no-repeat; float:left;
width:17px; height:44px;"></div>

<!--
<div style=" background-image: url(images/cenner2.png);background-repeat:repeat-y; float:left;
width:14px; height:7px;"></div>
<div style=" background-color:#F5F5F5;width:686px; height:7px; float:left;">

</div>
<div style=" background-image: url(images/cenner.png); background-repeat:repeat-y; float:left;
width:23px; height:7px;"></div>
-->
</div>
<div >
<div style=" margin-left:1px; padding-left:20px; padding-right:20px; background-image:url(images/cn.png);
width:683px; height:100%;">

<div style="height:5px; width:100%; margin-top:10px; margin-bottom:20px;float: left;">
  <div style="float:left;">发布时间：2011-01-02</div>
  <div style="float:left; margin-left:50px;">发布人  ：严建</div>
</div>
<hr style="border-bootom: 1px dashed #000000;"/>


<div >
新华网南京6月3日电 3日5时20分至5时40分，沈海高速盐城段因突发团雾发生机动车追尾事故，截至14时20分，已造成11人死亡，19人受伤，其中5人重伤。

此次事故发生在沈海高速盐城段K1013至1017区间，因突发团雾，双向相继发生7起多辆机动车追尾事故，共造成11人死亡，19人受伤，其中5人重伤，受伤人员均得到有效救治。此外有19辆机动车受损，其中一辆运输苯酚车辆发生微量泄漏，现已处置完毕，经环保部门现场检测未造成环境污染。

事故发生后，江苏省委书记罗志军、省长李学勇要求全力抢救伤员，最大程度减少伤亡，并做好善后工作，深入开展交通安全检查，强化交通安全措施应对特殊天气影响。副省长史和平指导救援工作，盐城市委书记赵鹏、市长魏国强及时赶赴现场，省政府副秘书长王志忠、省公安厅、卫生厅、安监局负责同志赴现场组织事故处置工作。截至发稿时，现场处置基本结束，道路恢复通行。



</div>
</div>

</div>

<div >
<div style="  background-image: url(images/foot2.png); background-repeat:no-repeat; float:left;
width:15px; height:57px;"></div>
<div style=" background-image: url(images/foot3.png); float:left;
width:691px; height:57px;"></div>
<div style=" background-image: url(images/foot1.png); background-repeat:no-repeat; float:left;
width:17px; height:57px;"></div>
</div>
</div>

<div style="float:left;"><div id="main"> 
					<div class="main-top-box" style="margin-bottom: 4px;">
						<h2><strong>今日值班</strong></h2>	
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
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">公 告 栏</span>	
						<div class="main-con" style="height: 410px;">
							<ul class="index-ul">
								<li><a href="#">江苏进一步提高见义勇为人员奖励...</a></li>
								<li><a href="#">省公安厅党委代表10万民警在雨花...</a></li>
								<li><a href="#">北京警方全力确保清明期间治安良...</a></li>
								<li><a href="#">北京警方开展金银珠宝营业场所拉...</a></li>
								<li><a href="#">江苏进一步提高见义勇为人员奖励...</a></li>
								<li><a href="#">省公安厅党委代表10万民警在雨花...</a></li>
								<li><a href="#">北京警方全力确保清明期间治安良...</a></li>
								<li><a href="#">北京警方开展金银珠宝营业场所拉...</a></li>
								<li><a href="#">江苏进一步提高见义勇为人员奖励...</a></li>
							</ul>
							<div style="text-align: right;padding:20px 20px 10px 0px;font-size: 14px;">
								<a href="#">更多信息》</a>
							</div>
							<div style="background: url('images/index/birth-bg.png') no-repeat;width: 227px;height:107px;position: relative;left: -12px;top: 10px;">
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
								<li><a href="#">江苏进一步提高见义勇为人员奖励...</a></li>
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
						<span class="title1">信息采用排行</span>	
						<div class="main-con" style="height: 265px;">
							<ul class="index-ul">
								<li class="one"><a href="#">湘潭：湘乡市召开市长办公会议...</a></li>
								<li class="two"><a href="#">湘潭：岳塘区红旗农场开展“禁...</a></li>
								<li class="three"><a href="#">湘潭：一女子毒瘾发作报假警</a></li>
								<li class="four"><a href="#">永州：宁远县公安局禁毒大队结...</a></li>
								<li class="five"><a href="#">永州：道县积极开展“珍爱生命...</a></li>
								<li class="six"><a href="#">娄底:涟源市安平镇创新禁毒宣...</a></li>
								<li class="serv"><a href="#">湘潭：岳塘分局禁毒大队走访慰...</a></li>
								<li class="eight"><a href="#">湘潭：雨湖分局民警走进社区大...</a></li>
								<li class="nine"><a href="#">湘潭：湘潭县禁毒大队召开娱乐...</a></li>
								<li class="ten"><a href="#">湘潭：湘乡深化“蓝结行动”开...</a></li> 
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
								<img src="images/rongyu.png"/>
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
					<div style="height: 155px;margin-bottom: 4px;background: url('images/index/bg-3.png') no-repeat;">
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


</div>


<%@include file="foot.jsp"  %>
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