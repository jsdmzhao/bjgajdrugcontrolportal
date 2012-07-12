<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<s:if test="resMap==null">
<c:redirect url="login/view"></c:redirect>
</s:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/layout.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" />
		<link href="<%=basePath%>css/css.css"  rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/base.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=basePath%>highslide/highslide-with-html.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>highslide/highslide.css" />
		<link href="<%=basePath%>css/Wygkcn_home.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/Wygkcn_Index.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=basePath%>js/lightBox.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery-ui.min.js" ></script>

<script>
var fgm = {
 $: function(id) {
  return typeof id === "object" ? id : document.getElementById(id);
 },
 $$: function(tagName, oParent) {
  return (oParent || document).getElementsByTagName(tagName);
 },
 $$$: function(className, element, tagName) {
  var i = 0, aClass = [], reClass = new RegExp("(^|\\s)" + className + "(\\s|$)"), aElement = fgm.$$(tagName || "*", element || document);
  for (i = 0; i < aElement.length; i++) reClass.test(aElement[i].className) && aClass.push(aElement[i]);
  return aClass;
 },
 index: function(element) {
  var aChildren = element.parentNode.children, i;
  for(i = 0; i < aChildren.length; i++) if(aChildren[i] === element) return i;
  return -1;
 },
 on: function(element, type, handler) {
  return element.addEventListener ? element.addEventListener(type, handler, !1) : element.attachEvent("on" + type, handler); 
 },
 bind: function(object, handler) {
  return function() {
   return handler.apply(object, arguments);
  }; 
 }
};
function Tab(id) {
 var that = this;
 this.obj = fgm.$(id);
 this.oTab = fgm.$$$("tab", this.obj)[0];
 this.aTab = fgm.$$("li", this.oTab);
 this.oSwitch = fgm.$$$("switchBtn", this.oTab)[0];
 this.oPrev = fgm.$$("a", this.oSwitch)[0];
 this.oNext = fgm.$$("a", this.oSwitch)[1];
 this.aItems = fgm.$$$("items", this.obj);
 this.iNow = 0;  
 fgm.on(this.oSwitch, "click", fgm.bind(this, this.fnClick));
 fgm.on(this.oTab, "mouseover", fgm.bind(this, this.fnMouseOver));
}
Tab.prototype = {
 fnMouseOver: function(ev) {
  var oEv = ev || event,
  oTarget = oEv.target || oEv.srcElement;
  oTarget.tagName.toUpperCase() === "LI" && (this.iNow = fgm.index(oTarget));
  this.fnSwitch();
 },
 fnClick: function(ev) {
  var oEv = ev || event,
  oTarget = oEv.target || oEv.srcElement,
  i;
  switch(fgm.index(oTarget)) {
   case 0:
    if(oTarget.className == "prev") {
     this.aTab[this.iNow].style.display = "block";
     this.iNow--; 
    };
    break;
   case 1:
    if(oTarget.className == "next") {     
     for(i = 0; i < this.iNow; i++) this.aTab[i].style.display = "none";
     this.iNow++; 
    };
    break;
  };
  this.aTab[this.iNow].style.display = "block";  
  this.fnSwitch(); 
 },
 fnSwitch: function() {
  for(var i = 0; i < this.aTab.length; i++) (this.aTab[i].className = "", this.aItems[i].style.display = "none"); 
  this.aTab[this.iNow].className = "tabcurrent";
  this.aItems[this.iNow].style.display = "block";
  this.oPrev.className = this.iNow == 0 ? "prevNot" : "prev";
  this.oNext.className = this.iNow == this.aTab.length - 1 ? "nextNot" : "next";
 }
};
//应用
fgm.on(window, "load", function() {
 var aItem = fgm.$$$("item"),
 i = 0;
 for(; i < aItem.length; i++) new Tab(aItem[i]);
});
</script>

	</head>
	<body style="font-size:14px; background-image: url('<%=basePath%>images/bg11.jpg'); background-repeat: repeat;">




<script type="text/javascript">


	hs.graphicsDir = '<%=basePath%>highslide/graphics/';
	hs.outlineType = 'rounded-white';
	hs.wrapperClassName = 'draggable-header';


		function Show_SubLmy(id_num,num){
			for(var i=0;i<=9;i++){
				
				if(GetObj("S_MenuMy_"+id_num+i)){
					GetObj("S_MenuMy_"+id_num+i).className='';
					
				}
				if(GetObj("S_ContMy_"+id_num+i)){
					GetObj("S_ContMy_"+id_num+i).style.display='none';
					
				}
				
			}
			if(GetObj("S_MenuMy_"+id_num+num)){
				GetObj("S_MenuMy_"+id_num+num).className='selectd';
				
			}
			if(GetObj("S_ContMy_"+id_num+num)){
				GetObj("S_ContMy_"+id_num+num).style.display='block';
				
			}
			
		}
		function GetObj(objName){
			
			if(document.getElementById){
				
				return eval('document.getElementById("'+objName+'")');		
				
			}else {
				
				return eval('document.all.'+objName);		
				
			}
			
		}




		$(document).ready(function(){
			$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
			
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
						<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">今日值班</span>
						<div class="main-top-con" style="height: 220px;font-size:14px; ">
							<ul class="index-ul">
								<li>领　导：易阳</li>
								<li>办公室：李可俭、张世强<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 薛状、董永蕙</li>
								    <br/>  
								<li>协　指：陈述</li>
								<li>情　报：王琪、郝铁彬</li>
								<li>侦　查：姚庆生、张静、李志新</li>
								<li>查　禁：梁冲、王飞</li>
								<li>缉　控：田亮、车佳音</li>
								<li>两品办：王官龙</li>
							</ul>
						</div>
					</div>
					<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">公 告 栏</span>	
						<div class="main-con2" style="height: 410px;">
						
							<ul class="index-ul">
					
							
							<div align="center" id="demo" style="overflow:hidden;height:268px;width:248px;font-size:14px;
							line-height:22px;text-align:left;padding:5px">
                       <div id="demo1" style="font-size: 12px;">
                            <div style="white-space:normal; width:200px; overflow:auto; padding: 0px;
                           ">
                       
                       				<s:iterator   value="resMap.Rows3"  id="news" var="news" >
									
									
									  <div style="float: left;padding-left: 6px;margin-bottom: 10px;
                         background:url('<%=basePath%>images/index/li.png') 0 8px no-repeat;
                          border-bottom: 1px dashed #CCCCCC;">
                          <a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
								    <s:property value="#news.c_bt"/>
								    </a>	
								   &nbsp;&nbsp;&nbsp;<img src="<%=basePath%>images/new.gif"/>&nbsp;&nbsp;&nbsp;
                        </div>
									
									
								</s:iterator>
                         
                        
                       </div>
                           
								 </div>
				    <div id="demo2" style="font-size: 12px;"></div>
				</div>
							<script language="javascript" type="text/javascript"> 
							<!--
							var demo = document.getElementById("demo");
							var demo1 = document.getElementById("demo1");
							var demo2 = document.getElementById("demo2");
							var speed=50;    //滚动速度值，值越大速度越慢
							var nnn=200/demo1.offsetHeight;
							for(i=0;i<nnn;i++){demo1.innerHTML+="<br />"+ demo1.innerHTML}
							demo2.innerHTML = demo1.innerHTML    //克隆demo2为demo1
							function Marquee(){
							    if(demo2.offsetTop-demo.scrollTop<=0)    //当滚动至demo1与demo2交界时
							        demo.scrollTop-=demo1.offsetHeight    //demo跳到最顶端
							    else{
							        demo.scrollTop++     //如果是横向的 将 所有的 height top 改成 width left
							    }
							}
							var MyMar = setInterval(Marquee,speed);        //设置定时器
							demo.onmouseover = function(){clearInterval(MyMar)}    //鼠标经过时清除定时器达到滚动停止的目的
							demo.onmouseout = function(){MyMar = setInterval(Marquee,speed)}    //鼠标移开时重设定时器
							-->
							</script>
							
							<div style=" background: url('<%=basePath%>images/index/birth-bg.png') no-repeat;width: 227px;height:107px;position: relative;left: -12px;top: 10px;">
								<div style="padding: 40px 0 0 20px; ">
									
								</div>
								<div style="text-align: right;padding: 20px 10px 0 0;">
									<a href="#" style="color: #ff0000;font-size: 12px;">点击领取总党委和全体民警祝福 >></a>
								</div>
							</div>
						</div>
					</div>
				<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">专栏专项工作</span>
						<div class="main-con" style="padding: 11px;">
							<a href="http://10.8.2.52:8030/"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">
								<img src="<%=basePath%>images/tb/12.png" />
							</a>
							<a href="http://10.8.2.84"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">
								<img src="<%=basePath%>images/tb/2.png" />
							</a>
							<a href="http://www.sdjwspzx.bj/"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
								<img src="<%=basePath%>images/tb/3.png" />
							</a>
							<a href="http://www.zz.bj/project/20091112/index.jsp/"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
								<img src="<%=basePath%>images/tb/5.png" />
							</a>
							<a href="http://10.8.2.195:91/"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
								<img src="<%=basePath%>images/tb/6.png" />
							</a>
							<a href="http://www.jdc.bj/list.php?id=233"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
								<img src="<%=basePath%>images/tb/9.png" />
							</a>
							<a href="http://10.8.2.195:96/"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
								<img src="<%=basePath%>images/tb/10.png" />
							</a>
							<a href="http://www.jdc.bj/list/list.php?id=110"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
								<img src="<%=basePath%>images/tb/1.png" />
							</a>
						</div>
					</div>
					<div class="main-box" style="margin-bottom: 5px;">
						<span class="titles">信息采用排行</span>	
							<div class="main-cons" style="height: 315px;">
						<div id="tabph">
<div id="wrap">
  <div id="list">
        <div class="item">
            <div class="tab">
                <h5><a href="#">排行</a></h5>
                <ul>
                    <li class="tabcurrent">总队各单位</li>
                    <li>各区县分局</li>
                   
                </ul>
                <div style="display:none;">
                <span class="switchBtn" ><a href="#" class="prevNot">左</a><a href="#" class="next">右</a></span>
            </div>
            </div>
            <ul class="items" style="display:block;">
             <li><div style="float:left; width:60px;"><a href="#" >办公室</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
               <li><div style="float:left; width:60px;"><a href="#" >协指</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
                <li><div style="float:left; width:60px;"><a href="#" >情报</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
                <li><div style="float:left; width:60px;"><a href="#" >法制</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
                <li><div style="float:left; width:60px;"><a href="#" >侦查</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
                <li><div style="float:left; width:60px;"><a href="#" >查禁</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
				   <li><div style="float:left; width:60px;"><a href="#" >缉控</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
				<li><div style="float:left; width:60px;"><a href="#" >两品</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
            </ul>
            <ul class="items">
                	<li><div style="float:left; width:60px;"><a href="#" >东城分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
               	<li><div style="float:left; width:60px;"><a href="#" >西城分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
                	<li><div style="float:left; width:60px;"><a href="#" >崇文分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
               	<li><div style="float:left; width:60px;"><a href="#" >宣武分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
                	<li><div style="float:left; width:60px;"><a href="#" >朝阳分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
              	<li><div style="float:left; width:60px;"><a href="#" >丰台分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
				<li><div style="float:left; width:60px;"><a href="#" >石景山分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
				</li>
				   	<li><div style="float:left; width:60px;"><a href="#" >海淀分局</a></div>
				    <div style="float:left; width:60px; margin-left:30px;">  <a  href="#">0条</a></div>
            </ul>
        
            <div  style="float:right; margin-right:20px; padding-top:3px;"> <a href="#">更多信息>></a></div>
        </div>
  </div>
    <!--/list-->
</div>
</div>
</div>
					</div>
	
				<!-- 
				<div class="wrap">
					<div class="leftzone">

						<div class="sidecontent">
							<div class="my_left_category">
								<div class="my_left_cat_list">

									<div class="h2_cat"
										onmouseover="this.className='h2_cat active_cat'"
										onmouseout="this.className='h2_cat'">
										<h3>
											<a href="http://www.duice.net/html/list_622.html">总队属各单位</a>
										</h3>
										<div class="h3_cat">
											<div class="shadow">
												<div class="shadow_border">
													<ul class="index-ul">
														<li class="one"><a href="#">办公室</a> <span
															style="margin-left: 50px;">12条</span></li>
														<li class="two"><a href="#">协指</a><span
															style="margin-left: 50px;">8条</span></li>
														<li class="three"><a href="#">情报</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="four"><a href="#">法制</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="five"><a href="#">侦查</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="six"><a href="#">查禁</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="serv"><a href="#">缉控</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="eight"><a href="#">两品</a><span
															style="margin-left: 50px;">0条</span></li>

													</ul>
												</div>
											</div>
										</div>
									</div>

									<div class="h2_cat"
										onmouseover="this.className='h2_cat active_cat'"
										onmouseout="this.className='h2_cat'">
										<h3>
											<a href="http://www.duice.net/html/list_622.html">各分县局</a>
										</h3>
										<div class="h3_cat">
											<div class="shadow">
												<div class="shadow_border">
													<ul class="index-ul">
														<li class="one"><a href="#">东城分局</a><span
															style="margin-left: 50px;">20条</span></li>
														<li class="two"><a href="#">西城分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="three"><a href="#">崇文分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="four"><a href="#">宣武分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="five"><a href="#">朝阳分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="six"><a href="#">丰台分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="serv"><a href="#">石景山分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="eight"><a href="#">海淀分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="nine"><a href="#">门头沟分局</a><span
															style="margin-left: 50px;">0条</span></li>
														<li class="ten"><a href="#">房山分局</a><span
															style="margin-left: 50px;">0条</span></li>
													</ul>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>

					</div>
				</div>
 -->
				

				<div class="main-box" style="margin-bottom: 4px;">
						<span class="title1">禁吸戒毒</span>	
						<div class="main-con" style="height: 365px;">
							<ul class="index-ul">
												<s:iterator   value="resMap.Rows8"  id="news" var="news" >
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=15"> 
									<s:property value="#news.c_bt.substring(0,15)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator></ul> 
							<div style="text-align: right;padding: 10px 20px 0 0;">
							<a href="<%=basePath%>news/list?news.c_lm=1189">更多信息 &gt;&gt;</a>
							</div>
						</div>
					</div>
				
					
				</div>
				<div id="side">
					<div class="search-box">
						<div style="float: right;padding-right: 70px;padding-bottom: 5px;">
							<form action="#" name="search" style="margin-top: 10px;">
								<table border="0" cellpadding="0" cellspacing="0"
									class="tab_search">
									<tr>
										<td>
											<input type="text" name="q" title="Search"
												class="searchinput" id="searchinput"
												onkeydown="if (event.keyCode==13) {}"
												onblur="if(this.value=='')value='请输入要搜索的内容..';"
												onfocus="if(this.value=='请输入要搜索的内容..')value='';"
												value="请输入要搜索的内容.." size="10" />
										</td>
										<td>
											<input type="image" width="21" height="17"
												class="searchaction"
												onclick="if(document.forms['search'].searchinput.value=='- Search Products -')document.forms['search'].searchinput.value='';"
												alt="Search" src="<%=basePath%>images/magglass.gif"
												border="0" hspace="2" />
										</td>
									</tr>
								</table>
							</form>


						</div>
						<div class="clearfloat"></div>
					</div>
					<div  style="height:30px; padding-left:12px; padding-top:5px;" >
						<div   style="float:left;">
						<div style="float: left;"><img src="<%=basePath%>images/tb/11.png"/></div>
						<div style="float: left; padding-top: 3px;">
						<span style="font-size:18px;padding-bottom: 2px;font-weight: bold;color:#FF0000" >
						<b>暂无会议</b>
						</span>	
						</div>
						</div>	
										
					</div>
					<div class="side-box" style="margin-bottom: 4px;">
						<div class="side-title"></div>
						<div class="side-con" style="height: 86px;">
							<div style="float: left;padding-left: 10px;">
								 <img src="<%=basePath%>images/index/index2_03.png"/>
							</div>
							<div style="float: right;width: 690px;height:85px;margin-right:10px;">
							 	
							 	<ul class="index-ul main-top-ul">
							 	<!-- 跳转 -->	
				
							 	
								<s:iterator   value="resMap.Rows1"  id="news" var="news" begin="0" end="8">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=15"> 
									<s:property value="#news.c_bt.substring(0,15)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator>
	
							 	</ul>
							 	
							</div>	  
							<div class="clearfloat"></div>
						</div>
					</div>
					<div class="side-box" style="margin-bottom: 4px;">
						<div class="side-title"></div>
						<div class="side-con" style="height: 86px;">
							<div style="float: left;padding-left: 10px;">
								 <img src="<%=basePath%>images/index/today.png"/>
							</div>
							<div style="float: right;width: 690px;height:85px;margin-right:10px;">
							 	
							 	<ul class="index-ul main-top-ul">
											<s:iterator   value="resMap.Rows2"  id="news" var="news" begin="0" end="8">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=15"> 
									<s:property value="#news.c_bt.substring(0,15)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator>
										</ul> 
							 	
							 	<div style="text-align: right;padding: 10px 20px 0 0;">
									<a href="#">更多信息 &gt;&gt;</a>
								</div> 
							</div>  
							<div class="clearfloat"></div>
							
						</div>
					</div>
					<div class="side-box" style="margin-bottom: 4px;">
						<div class="side-title"></div>
						<div class="side-con" style="height: 235px;text-align: center;">

						<div id="featured">
							<ul class="ui-tabs-nav">
								<li class="ui-tabs-nav-item ui-tabs-selected"
									id="nav-fragment-1"><a href="#fragment-1"><img
										src="<%=basePath%>images/hdm/1.jpg" height="45px;"
										width="80px;" alt="" />
								</a>
								</li>
								<li class="ui-tabs-nav-item" id="nav-fragment-2"><a
									href="#fragment-2"><img src="<%=basePath%>images/hdm/2.jpg"
										height="45px;" width="80px;" alt="" />
								</a>
								</li>
								<li class="ui-tabs-nav-item" id="nav-fragment-3"><a
									href="#fragment-3"><img src="<%=basePath%>images/hdm/3.jpg"
										height="45px;" width="80px;" alt="" />
								</a>
								</li>
								<li class="ui-tabs-nav-item" id="nav-fragment-4"><a
									href="#fragment-4"><img src="<%=basePath%>images/hdm/4.jpg"
										height="45px;" width="80px;" alt="" />
								</a>
								</li>
							</ul>
							<!-- First Content -->
							<div id="fragment-1" class="ui-tabs-panel" style="">
								<img src="<%=basePath%>images/hdm/1.jpg" alt="" width="626"
									height="228" />
								<div class="info">
									<h3>
										<a href="http://www.duice.net/html/list_620.html">张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a>
										</h2>
										<a href="http://www.duice.net/html/list_620.html">阅读全文</a>
										</p>
								</div>
							</div>

							<!-- Second Content -->
							<div id="fragment-2" class="ui-tabs-panel ui-tabs-hide" style="">
								<img src="<%=basePath%>images/hdm/2.jpg" alt="" width="626"
									height="228" />
								<div class="info">
									<h3>
										<a href="http://www.duice.net/html/list_620.html">张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a>
										</h2>
										<a href="http://www.duice.net/html/list_620.html">阅读全文</a>
										</p>
								</div>
							</div>

							<!-- Third Content -->
							<div id="fragment-3" class="ui-tabs-panel ui-tabs-hide" style="">
								<img src="<%=basePath%>images/hdm/3.jpg" alt="" width="626"
									height="228" />
								<div class="info">
									<h3>
										<a href="http://www.duice.net/html/list_620.html">张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a>
										</h2>
										<a href="http://www.duice.net/html/list_620.html">阅读全文</a>
										</p>
								</div>
							</div>

							<!-- Fourth Content -->
							<div id="fragment-4" class="ui-tabs-panel ui-tabs-hide" style="">
								<img src="<%=basePath%>images/hdm/4.jpg" alt="" width="626"
									height="228" />
								<div class="info">
									<h3>
										<a href="http://www.duice.net/html/list_620.html">张兵副局长召集禁毒总队党委班子成员，研究了近期禁毒工作</a>
										</h2>
										<p>
											<a href="http://www.duice.net/html/list_620.html">阅读全文</a>
										</p>
								</div>
							</div>

						</div>
					</div>
					</div>
					<div class="news"> 
						<div style="background: url('<%=basePath%>images/index/news-ico.png') no-repeat;width: 92px;height: 96px;position: absolute;margin-left:660px;margin-top: -7px;"></div> 
						<div class="news-title">
							2012年全国禁毒宣传教育工作要点 青少年与合成毒品仍是重点
						</div>
						<div style="padding: 10px 40px 10px 30px; height: 180px;">
							<div style="float: left;width: 320px">
								<ul class="index-ul">
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"  class="awidth">北京警方1月以来破获毒品案30 </a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">北京警方破获特大团伙贩毒案</a></div><div  style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">北京警方1月以来破获毒品案3</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">北京警方破获特大团伙贩</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
								<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">北京警方破获特大团伙贩毒案</a></div><div style="float: right;"><span class="time">2012-04-12</span></li>
								
								</ul> 
							</div>
							<div style="float: right;width: 320px">
								<ul class="index-ul">
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">北京禁毒流动大课堂取得效果</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">阳光致远禁毒志愿者大队开展锋</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">阳光致远禁毒志愿者大队开雷锋</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
									<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">北京禁毒流动大课堂取得效果</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
								<li><div style="float: left;"><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>" class="awidth">北京禁毒流动大课堂取得良好效果</a></div><div style="float: right;"><span class="time">2012-04-12</span></div></li>
								</ul>
							</div>
							<div class="clearfloat"></div>
						</div>
						<div style="text-align: right;padding: 20px 20px 0 0;">
							<a href="#">更多信息 &gt;&gt;</a>
						</div>
					</div>
					<div style="height: 94px;margin-bottom: 4px;">
						<img src="<%=basePath%>images/guanggao.png"/>						
					</div>
					<div style="margin-bottom: 4px;">
						<div class="six-left">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">工作动态</span>
									<div style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
										<a href="<%=basePath%>news/list?news.c_lm=1221">更多信息 &gt;&gt;</a>
									</div>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
											<s:iterator   value="resMap.Rows2"  id="news" var="news" begin="0" end="5">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=25"> 
									<s:property value="#news.c_bt.substring(0,25)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator>
										</ul> 
									</div>
									
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="six-right">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">通知通报</span>
									<div style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
										<a href="<%=basePath%>news/list?news.c_lm=1196">更多信息 &gt;&gt;</a>
									</div>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
										<s:iterator   value="resMap.Rows3"  id="news" var="news" begin="0" end="5">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=25"> 
									<s:property value="#news.c_bt.substring(0,25)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator>
									</ul> 
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
									<div style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
										<a href="<%=basePath%>news/list?news.c_lm=1197">更多信息 &gt;&gt;</a>
									</div>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
															<s:iterator   value="resMap.Rows4"  id="news" var="news" begin="0" end="5">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=25"> 
									<s:property value="#news.c_bt.substring(0,25)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator></ul> 
									</div>
									
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="six-right">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">文件阅览</span>
									<div style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
										<a href="<%=basePath%>news/list?news.c_lm=1198">更多信息 &gt;&gt;</a>
									</div>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
													<s:iterator   value="resMap.Rows5"  id="news" var="news" begin="0" end="5">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=25"> 
									<s:property value="#news.c_bt.substring(0,25)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator>	</ul> 
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
									<div style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
										<a href="<%=basePath%>news/list?news.c_lm=1199">更多信息 &gt;&gt;</a>
									</div>
									<div style="padding-top: 10px;">
										<ul class="index-ul">
															<s:iterator   value="resMap.Rows6"  id="news" var="news" begin="0" end="5">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">	
									
									<s:if test="#news.c_bt.length()>=25"> 
									<s:property value="#news.c_bt.substring(0,25)+'...'"/>	
									</s:if>
								    <s:else>
								    <s:property value="#news.c_bt"/>
								    </s:else>
									
									</a></li>	
								</s:iterator>	</ul> 
									</div>
									
								</div>
								<div class="six-bottom"></div>
							</div>
						</div>
						<div class="six-right">
							<div class="six-box">
								<div class="six-con">
									<span class="six-title">民警风采</span>
									<div style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
										<a href="<%=basePath%>news/list?news.c_lm=1191">更多信息 &gt;&gt;</a>
									</div>
								<div style="padding-top: 10px;">
									<ul class="index-ul">
										<s:iterator value="resMap.Rows7" id="news" var="news"
											begin="0" end="5">
											<li><a
												href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

													<s:if test="#news.c_bt.length()>=25">
														<s:property value="#news.c_bt.substring(0,25)+'...'" />
													</s:if> <s:else>
														<s:property value="#news.c_bt" />
													</s:else> </a>
											</li>
										</s:iterator>
									</ul>
								</div>

							</div>
							<div class="six-bottom"></div>
							</div>
						</div>
						<div class="clearfloat"></div>
					</div>
					<div style="margin-bottom: 4px;">
						<img src="<%=basePath%>images/temp2.png"/>
					</div>
					<div style="height: 184px;margin-bottom: 4px;">
					
							
						<div style="background: url('images/index/bg-6.png') no-repeat;width: 747px;height: 184px;">
							<div>
							
								<div id="three-pass-two" class="three-pass">
									常用网站导航
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
							<div style="width: 700px;padding: 5px; ">
								<div><div style="float: left;margin-left: 10px;width: 40px; ">市局</div></div>
								
									<div><div style="float: left;margin-left: 10px; ">
								<s:iterator   value="resMap.Rows11"  var="website" begin="0" end="8">
								  
								   
									<a href="<s:property value="#website.c_lj"/>">	
								    <s:property value="#website.c_bt"/>
									</a>
									
								</s:iterator>
								</div></div>
						
						   </div>
						   <div style="width: 700px; float: left;padding: 5px;">
						   		<div><div style="float: left;margin-left: 10px;width: 40px; ">区县</div></div>
									<div><div style="float: left;margin-left: 10px; ">
								<s:iterator   value="resMap.Rows12"  var="website" begin="0" end="8">
								  
								   
									<a href="<s:property value="#website.c_lj"/>">	
								    <s:property value="#website.c_bt"/>
									</a>
									
								</s:iterator>
								</div></div>
						   </div>
						    <div style="width: 700px; float: left;padding: 5px;">
						   		<div><div style="float: left;margin-left: 10px;width: 40px; ">全国</div></div>
										<div><div style="float: left;margin-left: 10px; ">
								<s:iterator   value="resMap.Rows13"  var="website" begin="0" end="16">
								  
								   
									<a href="<s:property value="#website.c_lj"/>">	
								    <s:property value="#website.c_bt"/>
									</a>
									
								</s:iterator>
								</div></div>
						   </div>
						    <div style="width: 700px; float: left;padding: 5px;">
						   		<div><div style="float: left;margin-left: 10px;width: 40px; ">其他</div></div>
										<div><div style="float: left;margin-left: 10px; ">
								<s:iterator   value="resMap.Rows14"  var="website" begin="0" end="4">
								  
								   
									<a href="<s:property value="#website.c_lj"/>">	
								    <s:property value="#website.c_bt"/>
									</a>
									
								</s:iterator>
								</div></div>
						   </div>
						    <div style="width: 700px; float: left;padding: 5px;">
						   		<div><div style="float: left;margin-left: 10px; width: 40px;">禁毒</div></div>
									<div><div style="float: left;margin-left: 10px; ">
								<s:iterator   value="resMap.Rows15"  var="website" begin="0" end="8">
								  
								   
									<a href="<s:property value="#website.c_lj"/>">	
								    <s:property value="#website.c_bt"/>
									</a>
									
								</s:iterator>
								</div></div>
						   </div>
						 
							</div>
							
							<div class="pass-cont-three">
								<ul>
									<li><a href="http://jdcjsr-zyk.zx.ga/" target="_blank"><img src="<%=basePath%>images/index/one.png"/></a></li>
									<li><a href="http://www.js/site/boot/wnl.htm" target="_blank"><img src="<%=basePath%>images/index/two.png"/></a></li>
									<li><a href="http://10.6.1.37:8001/beeaweb/ "target="_blank"><img src="<%=basePath%>images/index/three.png"/></a></li>
									<li><a href="http://jy-zyk.zx.ga/" target="_black" ><img src="<%=basePath%>images/index/four.png"/></a></li>
									<li><a href="http://10.48.6.9/ip4/index.asp" target="_blank"><img src="<%=basePath%>images/index/five.png"/></a></li>
									<li><a href="http://10.12.62.149/article/cxdh.htm" target="_blank"><img src="<%=basePath%>images/index/six.png"/></a></li>
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
