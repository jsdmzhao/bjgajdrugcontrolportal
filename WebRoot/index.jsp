<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/index.css" />
		<LINK href="<%=basePath%>/css/css.css" type=text/css rel=stylesheet />
	</head>
	<body style="font-size:14px;">
<!-- 跳转 -->	


<script type="text/javascript" src="<%=basePath%>/js/lightBox.js"></script>
<SCRIPT src="<%=basePath%>/js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery-ui.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
	});
</script>
<script type="text/javascript">


/*弹出内容*/
function parahtml(url,width,height)
{
var htmls= '<iframe src="'+url+'" width='+width+' height='+height+' frameborder="0"></iframe>';
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




		$(document).ready(function(){
			$("#three-pass-one").click(function(){
				$("#three-pass-one").removeClass("three-pass");
				$("#three-pass-one").addClass("three-pass-hover");
				
				$("#three-pass-two").removeClass("three-pass-hover");
				$("#three-pass-two").addClass("three-pass");
				
				$("#three-pass-three").removeClass("three-pass-hover");
				$("#three-pass-three").addClass("three-pass");
				
				$(".pass-cont-one").show();
				$(".pass-cont-two").hide();
				$(".pass-cont-three").hide();
			});
			
			$("#three-pass-two").click(function(){
				
				$("#three-pass-two").removeClass("three-pass");
				$("#three-pass-two").addClass("three-pass-hover");
				
				$("#three-pass-one").removeClass("three-pass-hover");
				$("#three-pass-one").addClass("three-pass");
				
				$("#three-pass-three").removeClass("three-pass-hover");
				$("#three-pass-three").addClass("three-pass");
				
				$(".pass-cont-one").hide();
				$(".pass-cont-two").show();
				$(".pass-cont-three").hide();
			});
			
			$("#three-pass-three").click(function(){
				
				$("#three-pass-three").removeClass("three-pass");
				$("#three-pass-three").addClass("three-pass-hover");
				
				$("#three-pass-two").removeClass("three-pass-hover");
				$("#three-pass-two").addClass("three-pass");
				
				$("#three-pass-one").removeClass("three-pass-hover");
				$("#three-pass-one").addClass("three-pass");
				
				$(".pass-cont-one").hide();
				$(".pass-cont-two").hide();
				$(".pass-cont-three").show();
			});
		});
	</script>		
<%@include  file="head.jsp" %>

				<div id="container2">
			<div class="clearfloat"></div>
			<div id="maincontent">
				<div id="main"> 
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
					
							<s:iterator   value="resMap.Rows"  id="news" var="news">
							<s:property value="#news.n_xh"/>
						
							</s:iterator>
								<li><a href="../news_detail.jsp">江苏进一步提高见义勇为...</a></li>
								<li><a href="../news_detail.jsp">省公安厅党委代表10万民...</a></li>
								<li><a href="../news_detail.jsp">北京警方全力确保清明期...</a></li>
								<li><a href="../news_detail.jsp">北京警方开展金银珠宝营...</a></li>
								<li><a href="../news_detail.jsp">江苏进一步提高见义勇为...</a></li>
								<li><a href="../news_detail.jsp">省公安厅党委代表10万民...</a></li>
								<li><a href="../news_detail.jsp">北京警方全力确保清明期...</a></li>
								<li><a href="../news_detail.jsp">北京警方开展金银珠宝营...</a></li>
								<li><a href="../news_detail.jsp">江苏进一步提高见义勇为...</a></li>
							</ul>
							<div style="text-align: right;padding:20px 20px 10px 0px;font-size: 14px;">
								<a href="#">更多信息>></a>
							</div>
							<div style="background: url('<%=basePath%>/images/index/birth-bg.png') no-repeat;width: 227px;height:107px;position: relative;left: -12px;top: 10px;">
								<div style="padding: 40px 0 0 20px;">
									严静，李小璐
								</div>
								<div style="text-align: right;padding: 20px 10px 0 0;">
									<a href="#" style="color: #ff0000;">点击领取总党委和全体民警祝福 >></a>
								</div>
							</div>
						</div>
					</div>
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">信息采用总队排行</span>	
						<div class="main-con" style="height: 200px;">
							<ul class="index-ul">
							<li class="one"><a href="#">办公室</a></li>
								<li class="two"><a href="#">协指</a></li>
								<li class="three"><a href="#">情报</a></li>
								<li class="four"><a href="#">法制</a></li>
								<li class="five"><a href="#">侦查</a></li>
								<li class="six"><a href="#">查禁</a></li>
								<li class="serv"><a href="#">两品</a></li>
							</ul> 
							<div style="text-align: right;padding: 10px 20px 0 0;">
								<a href="#">更多信息 >></a>
							</div>
						</div>
					</div>
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">信息采用各区县分局排行</span>	
						<div class="main-con" style="height: 285px;">
							<ul class="index-ul">
								<li class="one"><a href="#">东城分局</a></li>
								<li class="two"><a href="#">西城分局</a></li>
								<li class="three"><a href="#">崇文分局</a></li>
								<li class="four"><a href="#">宣武分局</a></li>
								<li class="five"><a href="#">朝阳分局</a></li>
								<li class="six"><a href="#">丰台分局</a></li>
								<li class="serv"><a href="#">石景山分局</a></li>
								<li class="eight"><a href="#">海淀分局</a></li>
								<li class="nine"><a href="#">门头沟分局</a></li>
								<li class="ten"><a href="#">房山分局</a></li>	
							</ul> 
							<div style="text-align: right;padding: 10px 20px 0 0;">
							<a href="#">更多信息 >></a>
							</div>
						</div>
					</div>
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">专栏连接</span>	
						<div class="main-con" style="height: 435px;">
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/1.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/2.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/3.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/4.png" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/5.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/6.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/7.gif" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/8.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/9.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/10.jpg" width="196" />	</div>
							<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/11.jpg" width="196" />	</div>				
								<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/12.jpg" width="196" />	</div>							
									<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/13.jpg" width="196" />	</div>		
									<div  style="padding:2px;"> <img src="<%=basePath%>/images/index/14.jpg" width="196" />	</div>	
						</div>
					</div>
					
				</div>
				<div id="side">
					<div class="search-box">
						<div style="float: right;padding-right: 30px;">  
							<label>请选择搜索类别：</label>
							<select><option>请按日期搜索</option></select>
							<input type="text" value="请输入搜索关键字" style="width: 120px;"/>
							<input id="submit" type="button"/>
						</div>
						<div class="clearfloat"></div>
					</div>
					<div  style="height:30px; padding-left:12px; padding-top:5px;" >
						<div   style="float:left;"><span class="STYLE1">会议/勤务提醒：</span>下午3点总队会议室开会	</div>	
								<div style="margin-right:30px;float:right;" ><a href="#">查看更多会议>></a></div>			
					</div>
					<div class="side-box" style="margin-bottom: 4px;">
						<div class="side-title"></div>
						<div class="side-con" style="height: 86px;">
							<div style="float: left;padding-left: 10px;">
								 <img src="<%=basePath%>/images/index/index2_03.png"/>
							</div>
							<div style="float: right;width: 690px;height:85px;margin-right:10px;">
							 	
							 	<ul class="index-ul main-top-ul">
							 		<%for(int i=0;i<9;i++){
							 			%> 
							 		<li><a href="../news_detail.jsp">警营开放日民警进村讲</a></li>	
							 			<%
							 		} %> 
							 	</ul>
							 	<div style="text-align: right;padding: 10px 20px 0 0;">
									<a href="#">更多信息 >></a>
								</div>  
							</div>	  
							<div class="clearfloat"></div>
						</div>
					</div>
					<div class="side-box" style="margin-bottom: 4px;">
						<div class="side-title"></div>
						<div class="side-con" style="height: 86px;">
							<div style="float: left;padding-left: 10px;">
								 <img src="<%=basePath%>/images/index/today.png"/>
							</div>
							<div style="float: right;width: 690px;height:85px;margin-right:10px;">
							 	
							 	<ul class="index-ul main-top-ul">
							 		<%for(int i=0;i<9;i++){
							 			%> 
							 		<li><a href="../news_detail.jsp">警营开放日民警进村讲害</a></li>	
							 			<%
							 		} %> 
							 	</ul>
							 	
							 	<div style="text-align: right;padding: 10px 20px 0 0;">
									<a href="#">更多信息 >></a>
								</div> 
							</div>  
							<div class="clearfloat"></div>
							
						</div>
					</div>
					<div class="side-box" style="margin-bottom: 4px;">
						<div class="side-title"></div>
						<div class="side-con" style="height: 235px;text-align: center;">
							  
							<div id="featured" >
<ul class="ui-tabs-nav">
<li class="ui-tabs-nav-item ui-tabs-selected" id="nav-fragment-1"><a href="#fragment-1"><img src="<%=basePath%>/images/hdm/1.jpg" height="45px;" width="80px;" alt="" /></a></li>
<li class="ui-tabs-nav-item" id="nav-fragment-2"><a href="#fragment-2"><img src="<%=basePath%>/images/hdm/2.jpg" height="45px;"  width="80px;"alt="" /></a></li>
<li class="ui-tabs-nav-item" id="nav-fragment-3"><a href="#fragment-3"><img src="<%=basePath%>/images/hdm/3.jpg" height="45px;" width="80px;" alt="" /></a></li>
<li class="ui-tabs-nav-item" id="nav-fragment-4"><a href="#fragment-4"><img src="<%=basePath%>/images/hdm/4.jpg" height="45px;"  width="80px;"alt="" /></a></li>
 </ul>
 <!-- First Content -->
<div id="fragment-1" class="ui-tabs-panel" style="">
<img src="<%=basePath%>/images/hdm/1.jpg" alt="" width="626" height="228" />
 <div class="info" >
<h2><a href="http://www.duice.net/html/list_620.html" >张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a></h2>
<p> 会上，禁毒总队汇报了6月份全面禁毒宣传月准备情况、市禁毒委领导出席宣传活动安排<a href="http://www.duice.net/html/list_620.html" >阅读全文</a></p>
</div>
</div>

 <!-- Second Content -->
<div id="fragment-2" class="ui-tabs-panel ui-tabs-hide" style="">
<img src="<%=basePath%>/images/hdm/2.jpg" alt=""  width="626" height="228" />
<div class="info" >
<h2><a href="http://www.duice.net/html/list_620.html" >张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a></h2>
<p> 会上，禁毒总队汇报了6月份全面禁毒宣传月准备情况、市禁毒委领导出席宣传活动安排<a href="http://www.duice.net/html/list_620.html" >阅读全文</a></p>
</div>
</div>

 <!-- Third Content -->
<div id="fragment-3" class="ui-tabs-panel ui-tabs-hide" style="">
<img src="<%=basePath%>/images/hdm/3.jpg" alt="" width="626" height="228"  />
<div class="info" >
<h2><a href="http://www.duice.net/html/list_620.html" >张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a></h2>
<p> 会上，禁毒总队汇报了6月份全面禁毒宣传月准备情况、市禁毒委领导出席宣传活动安排<a href="http://www.duice.net/html/list_620.html" >阅读全文</a></p>
</div>
</div>

<!-- Fourth Content -->
<div id="fragment-4" class="ui-tabs-panel ui-tabs-hide" style="">
<img src="<%=basePath%>/images/hdm/4.jpg" alt="" width="626" height="228"  />
<div class="info" >
<h2><a href="http://www.duice.net/html/list_620.html" >张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a></h2>
<p><a href="http://www.duice.net/html/list_620.html" >阅读全文</a></p>
</div>
</div>

</div>
						</div>
					</div>
					<div class="news"> 
						<div style="background: url('<%=basePath%>/images/index/news-ico.png') no-repeat;width: 92px;height: 96px;position: absolute;margin-left:660px;margin-top: -7px;"></div> 
						<div class="news-title">
							2012年全国禁毒宣传教育工作要点 青少年与合成毒品仍是重点
						</div>
						<div style="padding: 10px 40px 10px 30px; height: 180px;">
							<div style="float: left;width: 320px">
								<ul class="index-ul">
									<li><div style="float: left;"><a href="../news_detail.jsp"  class="awidth">北京警方1月以来破获毒品案30 </a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">北京警方破获特大团伙贩毒案</a></div><div  style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">北京警方1月以来破获毒品案3</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">北京警方破获特大团伙贩</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
								<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">北京警方破获特大团伙贩毒案</a></div><div style="float: right;"><span class="time">2012-04-12</span></li>
								
								</ul> 
							</div>
							<div style="float: right;width: 320px">
								<ul class="index-ul">
									<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">北京禁毒流动大课堂取得效果</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">阳光致远禁毒志愿者大队开展锋</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">阳光致远禁毒志愿者大队开雷锋</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">北京禁毒流动大课堂取得效果</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
								<li><div style="float: left;"><a href="../news_detail.jsp" class="awidth">北京禁毒流动大课堂取得良好效果</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
								</ul>
							</div>
							<div class="clearfloat"></div>
						</div>
						<div style="text-align: right;padding: 20px 20px 0 0;">
							<a href="#">更多信息 >></a>
						</div>
					</div>
					<div style="height: 94px;margin-bottom: 4px;">
						<img src="<%=basePath%>/images/guanggao.png"/>						
					</div>
					<div style="margin-bottom: 4px;">
						<div class="six-left">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">工作动态</span>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
											<li><a href="../news_detail.jsp">北京警方发布预警提示防范社保卡类电信诈骗</a></li>
											<li><a href="../news_detail.jsp">傅政华出席市公安局 “缅怀公安英烈铸就忠诚警魂...</a></li>
											<li><a href="../news_detail.jsp">市公安局圆满完成清明节安保任务</a></li>
											<li><a href="../news_detail.jsp">傅政华带领首都民警为绿色北京植树添绿</a></li>
											<li><a href="../news_detail.jsp">傅政华出席未来科技城治安警务站揭牌仪式</a></li>
											<li><a href="../news_detail.jsp">北京警方“春风行动”严打涉网犯罪互联网上治安环...</a></li>
										</ul> 
									</div>
									<div style="text-align: right;padding: 10px 20px 0 0;">
										<a href="#">更多信息 >></a>
									</div>
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="six-right">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">通知通报</span>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
											<li><a href="../news_detail.jsp">北京警方发布预警提示防范社保卡类电信诈骗</a></li>
											<li><a href="../news_detail.jsp">傅政华出席市公安局 “缅怀公安英烈铸就忠诚警魂...</a></li>
											<li><a href="../news_detail.jsp">市公安局圆满完成清明节安保任务</a></li>
											<li><a href="../news_detail.jsp">傅政华带领首都民警为绿色北京植树添绿</a></li>
											<li><a href="../news_detail.jsp">傅政华出席未来科技城治安警务站揭牌仪式</a></li>
											<li><a href="../news_detail.jsp">北京警方“春风行动”严打涉网犯罪互联网上治安环...</a></li>
										</ul> 
									</div>
									<div style="text-align: right;padding: 10px 20px 0 0;">
										<a href="#">更多信息 >></a>
									</div>
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="clearfloat"></div>
					</div>
					<div style="margin-bottom: 4px;">
						<div class="six-left">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">队伍建设</span>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
											<li><a href="../news_detail.jsp">北京警方发布预警提示防范社保卡类电信诈骗</a></li>
											<li><a href="../news_detail.jsp">傅政华出席市公安局 “缅怀公安英烈铸就忠诚警魂...</a></li>
											<li><a href="../news_detail.jsp">市公安局圆满完成清明节安保任务</a></li>
											<li><a href="../news_detail.jsp">傅政华带领首都民警为绿色北京植树添绿</a></li>
											<li><a href="../news_detail.jsp">傅政华出席未来科技城治安警务站揭牌仪式</a></li>
											<li><a href="../news_detail.jsp">北京警方“春风行动”严打涉网犯罪互联网上治安环...</a></li>
										</ul> 
									</div>
									<div style="text-align: right;padding: 10px 20px 0 0;">
										<a href="#">更多信息 >></a>
									</div>
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="six-right">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">文件阅览</span>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
											<li><a href="../news_detail.jsp">北京警方发布预警提示防范社保卡类电信诈骗</a></li>
											<li><a href="../news_detail.jsp">傅政华出席市公安局 “缅怀公安英烈铸就忠诚警魂...</a></li>
											<li><a href="../news_detail.jsp">市公安局圆满完成清明节安保任务</a></li>
											<li><a href="../news_detail.jsp">傅政华带领首都民警为绿色北京植树添绿</a></li>
											<li><a href="../news_detail.jsp">傅政华出席未来科技城治安警务站揭牌仪式</a></li>
											<li><a href="../news_detail.jsp">北京警方“春风行动”严打涉网犯罪互联网上治安环...</a></li>
										</ul> 
									</div>
									<div style="text-align: right;padding: 10px 20px 0 0;">
										<a href="#">更多信息 >></a>
									</div>
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="clearfloat"></div>
					</div>
					<div style="margin-bottom: 4px;">
						<div class="six-left">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">媒体关注</span>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
											<li><a href="../news_detail.jsp">北京警方发布预警提示防范社保卡类电信诈骗</a></li>
											<li><a href="../news_detail.jsp">傅政华出席市公安局 “缅怀公安英烈铸就忠诚警魂...</a></li>
											<li><a href="../news_detail.jsp">市公安局圆满完成清明节安保任务</a></li>
											<li><a href="../news_detail.jsp">傅政华带领首都民警为绿色北京植树添绿</a></li>
											<li><a href="../news_detail.jsp">傅政华出席未来科技城治安警务站揭牌仪式</a></li>
											<li><a href="../news_detail.jsp">北京警方“春风行动”严打涉网犯罪互联网上治安环...</a></li>
										</ul> 
									</div>
									<div style="text-align: right;padding: 10px 20px 0 0;">
										<a href="#">更多信息 >></a>
									</div>
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="six-right">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">民警风采</span>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
											<li><a href="../news_detail.jsp">北京警方发布预警提示防范社保卡类电信诈骗</a></li>
											<li><a href="../news_detail.jsp">傅政华出席市公安局 “缅怀公安英烈铸就忠诚警魂...</a></li>
											<li><a href="../news_detail.jsp">市公安局圆满完成清明节安保任务</a></li>
											<li><a href="../news_detail.jsp">傅政华带领首都民警为绿色北京植树添绿</a></li>
											<li><a href="../news_detail.jsp">傅政华出席未来科技城治安警务站揭牌仪式</a></li>
											<li><a href="../news_detail.jsp">北京警方“春风行动”严打涉网犯罪互联网上治安环...</a></li>
										</ul> 
									</div>
									<div style="text-align: right;padding: 10px 20px 0 0;">
										<a href="#">更多信息 >></a>
									</div>
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="clearfloat"></div>
					</div>
					<div style="margin-bottom: 4px;">
						<img src="<%=basePath%>/images/temp2.png"/>
					</div>
					<div style="height: 184px;margin-bottom: 4px;">
					
							
						<div style="background: url('images/index/bg-6.png') no-repeat;width: 747px;height: 184px;">
							<div>
								<div id="three-pass-one" class="three-pass">
									应用系统导航
								</div>
								<div id="three-pass-two" class="three-pass">
									常用网址导航
								</div>
								<div id="three-pass-three" class="three-pass-hover">
									使用工具导航
								</div>
								<div class="clearfloat"></div>
							</div>
							<div class="pass-cont-one">
								one
							</div>
							<div class="pass-cont-two">
								two
							</div>
							<div class="pass-cont-three">
								<ul>
									<li><a href="../news_detail.jsp"><img src="<%=basePath%>/images/index/one.png"/></a></li>
									<li><a href="../news_detail.jsp"><img src="<%=basePath%>/images/index/two.png"/></a></li>
									<li><a href="../news_detail.jsp"><img src="<%=basePath%>/images/index/three.png"/></a></li>
									<li><a href="../news_detail.jsp"><img src="<%=basePath%>/images/index/four.png"/></a></li>
									<li><a href="../news_detail.jsp"><img src="<%=basePath%>/images/index/five.png"/></a></li>
									<li><a href="../news_detail.jsp"><img src="<%=basePath%>/images/index/six.png"/></a></li>
								</ul>
								<div class="clearfloat"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
				<%@include file="foot.jsp"  %>
	

	</body>
</html>
