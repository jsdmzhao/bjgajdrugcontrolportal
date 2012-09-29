<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<s:if test="resMap==null">
	<c:redirect url="login/view"></c:redirect>
</s:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>北京公安局禁毒总队</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/layout.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" />
<link href="<%=basePath%>css/css.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/base.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>highslide/highslide-with-html.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>highslide/highslide.css" />
<link href="<%=basePath%>css/Wygkcn_home.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/Wygkcn_Index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/lightBox.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-ui.min.js"></script>

<!-- 弹出窗 -->
<script type="text/javascript" src="<%=basePath%>highslide/highslide-with-html.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>highslide/highslide.css" />
<!-- 弹出窗 -->

<script type="text/javascript">
hs.graphicsDir = '../highslide/graphics/';
hs.outlineType = 'rounded-white';
hs.wrapperClassName = 'draggable-header';
</script>

<style>
body {
	font-size: 14px;
	background-image: url('<%=basePath%>images/bg11.jpg');
	background-repeat: repeat;
}
</style>
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
<body style="font-size:14px;">
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
			
		
			$("#three-pass-two").click(function(){
				
				$("#three-pass-two").removeClass("three-pass");
				$("#three-pass-two").addClass("three-pass-hover");
				
				$("#three-pass-three").removeClass("three-pass-hover");
				$("#three-pass-three").addClass("three-pass");
				
				$(".pass-cont-three").hide();
				$(".pass-cont-two").show();
			});
			
			$("#three-pass-three").click(function(){
				
				$("#three-pass-three").removeClass("three-pass");
				$("#three-pass-three").addClass("three-pass-hover");
				
				$("#three-pass-two").removeClass("three-pass-hover");
				$("#three-pass-two").addClass("three-pass");
				
				
				$(".pass-cont-two").hide();
				$(".pass-cont-three").show();
			});
		});
	</script>
	
	<!-- HEAD.JSP BEGIN -->
	<%-- <%@include file="head.jsp"--%> 
	
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
		footerhtml+='<input type="image" alt="Cancel" src="<%=basePath%>images/cancel_button.gif" class="btn" id="msg'+ index + 'cancel" />';
	}
		return footerhtml;

	}

</script>
<%
	GregorianCalendar d = new GregorianCalendar();
	int week = d.get(Calendar.DAY_OF_WEEK);
	String wh = "";
	if (week == 1) {
		wh = "3和8";
	} else if (week == 2) {
		wh = "4和9";
	} else if (week == 3) {
		wh = "5和0";
	} else if (week == 4) {
		wh = "1和6";
	} else if (week == 5) {
		wh = "2和7";
	} else {
		wh = "无停驶尾号";
	}
%>
<script language="javascript">
	jQuery(function() {
		$("#changeCity").click(function(a) {
			$("#allCity").slideDown(300);
			a.stopPropagation();
			$(this).blur()
		});
		$("#allCity").click(function(a) {
			a.stopPropagation()
		});
		//$(document).click(function(a){a.button!=2&&$("#allCity").slideUp(300)});
		$("#foldin").click(function() {
			$("#allCity").slideUp(300)
		})
	});
	$(document).ready(function() {
		var nScrollHight = 0;
		var nScrollTop = 0;
		var nDivHight = $("#div1").height();
		$("#div1").scroll(function() {
			nScrollHight = $(this)[0].scrollHeight;
			nScrollTop = $(this)[0].scrollTop;
			if (nScrollTop + nDivHight >= nScrollHight) {
				;
			}
		});

	});

	var t = null;
	t = setTimeout(time, 1000);
	function time() {
		var enabled = 0;

		today = new Date();

		if (today.getDay() == 0)
			day = "星期日"

		if (today.getDay() == 1)
			day = "星期一"

		if (today.getDay() == 2)
			day = "星期二"

		if (today.getDay() == 3)
			day = "星期三"

		if (today.getDay() == 4)
			day = "星期四"

		if (today.getDay() == 5)
			day = "星期五"

		if (today.getDay() == 6)
			day = "星期六"

		date = (today.getYear()) + "年" + (today.getMonth() + 1)
				+ "月" + today.getDate() + "日&nbsp;" + day;

		document.getElementById("timeShow").innerHTML = date;

	}
</script>
<iframe  style="display: none;" src="<%=basePath%>login.jsp?temp_r=zl"></iframe>


<DIV class=selCity id=allCity style="display:none">
	<DIV class=area>
		<div class=bodydiv>
			<div class=headdiv>
				<div id="div1" class="headdivcenter">


					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/1.png  " />
						</div>
						<div class="font1" align="center">
							<a href="#"
								onclick='Box("msg1",900,600,parahtml("<%=basePath%>desktop/index.jsp",900,600),fontbutton(1,1))'>我的桌面</a>
						</div>
					</div>

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/9.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePath%>temp/news.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">新闻管理</a>
						</div>
					</div>


					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/3.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePath%>temp/car.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">车辆管理</a>
						</div>
					</div>

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/8.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePath%>temp/email.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">内部邮件</a>
						</div>
					</div>

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/2.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePath%>temp/duty.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">考勤情况</a>
						</div>
					</div>


					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/4.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePath%>temp/blog.jsp" onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">工作日志</a>
						</div>
					</div>
					<!-- 
					<div class="topdiv">
					<div class="imgdiv"  >
					<img  class="imgdiv"   src="<!%=basePath%>images/5.png  "/></div >
					<div   class="font1"  align="center"><a href="#" onclick='Box("msg5",900,600,parahtml(900,600),fontbutton(5,1));'>工作计划</a></div>
					</div>
					 -->

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/6.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePath%>temp/message.jsp" onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">内部消息</a>
						</div>
					</div>



					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePath%>images/7.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePath%>temp/mobile.jsp" onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">手机短息</a>
						</div>
					</div>


				</div>
			</div>
		</div>

		<DIV class=none>
			<A id=foldin href="javascript:;">收起</A>
		</DIV>
	</DIV>
</DIV>
<DIV class=header>
	<DIV class=area>
		<DIV class=r>
			<DIV class="topCtiy clear">
				<UL>
					<LI class=i2 id=changeCity>我的办公区</LI>
				</UL>
			</DIV>
		</DIV>
	</DIV>
</DIV>
<div id="container" style="margin-top: 10px">
	<div
		style="width:1001px; height:25px; background-image:url(<%=basePath%>images/headbg.jpg)">
		<div style="float:left; padding-top:4px; padding-left:20px;">
			<div id="timeShow"></div>
		</div>
		<div style="float:left; padding-top:4px; padding-left:20px;">
			限行尾号：<%=wh%></div>
		<div style="float:right; padding-top:4px; padding-right:10px;">
			<a href="#"
				onclick='Box("msg3",259,90,parahtml2(259,90),fontbutton(3,1));'>联系我们</a>
		</div>
		<div style="float:right; padding-top:8px; padding-right:2px;">
			<IMG src="<%=basePath%>images/2.jpg" />
		</div>
		<div style="float:right; padding-top:4px;padding-right:10px;">
			<a
				onClick="window.external.AddFavorite(location.href,document.title)"
				style="cursor:hand;">收藏本站</a>
		</div>
		<div style="float:right; padding-top:7px; padding-right:2px;">
			<IMG src="<%=basePath%>images/1.jpg" />
		</div>
		<div style="float:right; padding-top:4px;padding-right:10px;">
			<a href=#
				onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath%>');">设为主页</a>
		</div>
		<div style="float:right; padding-top:7px; padding-right:2px;">
			<IMG src="<%=basePath%>images/3.jpg" />
		</div>
	</div>
	<div id="header">


		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="1000" height="126">
			<param name="movie" value="<%=basePath%>images/top.swf" />
			<param name="quality" value="high" />
			<param name="wmode" value="opaque">
			<embed src="<%=basePath%>images/top.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1000" height="126" wmode="opaque"></embed>
		</object>

	</div>
	<div class="clearfloat"></div>
	<div id="nav"
		style="background: url('<%=basePath%>images/index/nav-bg.png') 0 -12px repeat-x;">
		<div style="padding: 0 20px;">
			<ul class="nav-ul">
				<li>
					<a href="<%=basePath%>index.jsp" class="current">首 页</a>
				</li>
				<li class="middle">
					<a href="http://www.xxzx.bj/" target="_blank">信息查询</a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>news/news.jsp">新闻中心</a>
				</li>
				<li class="middle">
					<a href="http://10.8.1.135/" target="_blank">文件交换</a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>media/deploy/Video.jsp">视频在线</a>
				</li>
				<li class="middle">
					<a href="http://anquan.zx.bj" target="_blank">信息安全</a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>admin/index.jsp">内部专区</a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>news/list?news.c_lm=1286">警钟长鸣</a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>rydt.jsp">荣誉殿堂</a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>news/list?news.c_lm=12">禁毒情报</a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>news/list?news.c_lm=13">侦查破案 </a>
				</li>
				<li class="middle">
					<a href="<%=basePath%>news/list?news.c_lm=1296"">学习园地</a>
				</li>

			</ul>
			<div class="clearfloat"></div>
		</div>
		<div style="background: url('<%=basePath%>images/index/nav-bottom.png') 0 bottom repeat-x;height: 10px;"> </div>
	</div>
</div>
	
	<!-- HEAD.JSP END  -->

	<div id="container2">
		<div class="clearfloat"></div>
		<div id="maincontent">
			<div id="main">
				<div class="main-box" style="margin-bottom: 4px;">
					<span class="title1">今日值班</span>
					<div class="main-top-con" style="height: 220px;font-size:14px; ">
						<ul class="index-ul">
							<li>领 导：柳毅</li>
							<li>办公室：车克俭、张建群</li>
							<li>协 指：钟平</li>
							<li>情 报：严建、文武</li>
							<li>侦 查：姚庆生、张静</li>
							<li>查 禁：姜新春</li>
							<li>缉 控：高立国、熊良</li>
							<li>两品办：顾猛、陈志文</li>
						</ul>
					</div>
				</div>
				<div class="main-box" style="margin-bottom: 4px;">
					<span class="title1">公 告 栏</span>
					<div class="main-con2" style="height: 410px;">

						<ul class="index-ul">

							<div align="center" id="demo"
								style="overflow:hidden;height:268px;width:248px;font-size:14px;
							line-height:22px;text-align:left;padding:5px">
								<div id="demo1" style="font-size: 14px;">
									<div style="white-space:normal; width:200px; overflow:auto; padding: 0px; ">

										<s:iterator value="resMap.Rows3" id="news" var="news">

											<div style="float: left;padding-left: 6px;margin-bottom: 10px; background:url('<%=basePath%>images/index/li.png') 0 8px no-repeat;border-bottom: 1px dashed #CCCCCC;">
												<a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">
													<s:property value="#news.c_bt" /> </a> &nbsp;&nbsp;&nbsp;
													<img src="<%=basePath%>images/new.gif" />&nbsp;&nbsp;&nbsp;
											</div>
										</s:iterator>
									</div>
								</div>
								<div id="demo2" style="font-size: 12px;"></div>
							</div>
							<script language="javascript" type="text/javascript">							
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
							
							</script>

							<div
								style=" background: url('<%=basePath%>images/index/birth-bg.png') no-repeat;width: 227px;height:107px;position: relative;left: -12px;top: 10px;">
								<div style="padding: 40px 0 0 20px; "></div>
								<div style="text-align: right;padding: 20px 10px 0 0;">
									<a href="#" style="color: #ff0000;font-size: 12px;">点击领取总党委和全体民警祝福>></a>
								</div>
							</div>
					</div>
				</div>
				<div class="main-box" style="margin-bottom: 4px;">
					<span class="title1">专栏专项工作</span>
					<div class="main-con" style="padding: 11px;">
						<a href="http://10.8.2.52:8030/" onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">
							<img src="<%=basePath%>images/tb/12.png" /> 
						</a> 
						<a href="http://10.8.2.84" onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">
							<img src="<%=basePath%>images/tb/2.png" />
					    </a> 
						<a href="http://www.sdjwspzx.bj/" onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
							<img src="<%=basePath%>images/tb/3.png" />
					   </a> 
					   <a href="http://www.zz.bj/project/20091112/index.jsp/" onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
							<img src="<%=basePath%>images/tb/5.png" /> 
					   </a> 
					   <a href="http://10.8.2.195:91/" onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
							<img src="<%=basePath%>images/tb/6.png" />
					   </a> 
					   <a href="http://www.jdc.bj/list.php?id=233" onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
							<img src="<%=basePath%>images/tb/9.png" /> 
					   </a>
					   <a href="http://10.8.2.195:96/" onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
							<img src="<%=basePath%>images/tb/10.png" /> 
					   </a> 
					   <a href="http://www.jdc.bj/list/list.php?id=110" onclick="return hs.htmlExpand(this, { objectType: 'iframe'} )">
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
											<h5>
												<a href="#">排行</a>
											</h5>
											<ul>
												<li class="tabcurrent">总队各单位</li>
												<li>各区县分局</li>

											</ul>
											<div style="display:none;">
												<span class="switchBtn"><a href="#" class="prevNot">左</a><a
													href="#" class="next">右</a>
												</span>
											</div>
										</div>
										<ul class="items" style="display:block;">
											<s:iterator value="resMap.RowsSort" id="news" var="news" begin="0" end="resMap.RowsSort。size()<7?resMap.RowsSort。size():7">
											<li>
												<div style="float:left; width:90px;">
													<a href="#"><s:property value="#news.c_yhzid"/></a>
												</div>
												<div style="float:left; width:40px; margin-left:20px;">
													<a href="#"><s:property value="#news.n_xxxh"/>条</a>
												</div>
											</li>
											</s:iterator>
											<!-- 
											<li>
												<div style="float:left; width:60px;">
													<a href="#">协指</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">情报</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">法制</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">侦查</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">查禁</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">缉控</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">两品</a>
												</div>
												<div
													style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											 -->
										</ul>
										<ul class="items">
											<li>
												<div style="float:left; width:60px;">
													<a href="#">东城分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">西城分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">崇文分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">宣武分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">朝阳分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">丰台分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>	
											<li>
												<div style="float:left; width:60px;">
													<a href="#">石景山分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
											<li>
												<div style="float:left; width:60px;">
													<a href="#">海淀分局</a>
												</div>
												<div style="float:left; width:60px; margin-left:30px;">
													<a href="#">0条</a>
												</div>
											</li>
										</ul>

										<div style="float:right; margin-right:20px; padding-top:3px;">
											<a href="#">更多&gt;&gt;</a>
										</div>
									</div>
								</div>
								<!--/list-->
							</div>
						</div>
					</div>
				</div>


				<div class="main-box" style="margin-bottom: 4px;">
					<span class="title1">禁毒情报</span>
					<div class="main-con" style="height: 365px;">
						<ul class="index-ul">
							<s:iterator value="resMap.Rows9" id="news" var="news" begin="0" end="12">
								<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

										<s:if test="#news.c_bt.length()>=13">
											<s:property value="#news.c_bt.substring(0,13)+'...'" />
										</s:if> <s:else>
											<s:property value="#news.c_bt" />
										</s:else> 
										</a>
								</li>
							</s:iterator>
						</ul>
						<div style="text-align: right;padding: 10px 20px 0 0;">
							<a href="<%=basePath%>news/list?news.c_lm=1189">更多 &gt;&gt;</a>
						</div>
					</div>
				</div>


			</div>
			
			<div id="side">
				<div class="search-box">
					<div style="float: right;padding-right: 70px;padding-bottom: 5px;">

						<form action="" id="searchForm" name="searchForm" style="margin-top: 10px;">
							<table border="0" cellpadding="0" cellspacing="0"
								class="tab_search" >

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
				</div>
				<script>
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
				
				
				<div style="height:30px; padding-left:12px; padding-top:5px;">
					<div style="float:left;">
						<div style="float: left;">
							<img src="<%=basePath%>images/tb/11.png" />
						</div>
						<div style="float: left; padding-top: 3px;">
							<span
								style="font-size:18px;padding-bottom: 2px;font-weight: bold;color:#FF0000">
								<b>暂无会议</b> </span>
						</div>
					</div>

				</div>
				<div class="side-box" style="margin-bottom: 4px;">
					<div class="side-title"></div>
					<div class="side-con" style="height: 86px;">
						<div style="float: left;padding-left: 10px;">
							<img src="<%=basePath%>images/index/index2_03.png" />
						</div>
						<div
							style="float: right;width: 690px;height:85px;margin-right:10px;">

							<ul class="index-ul main-top-ul">
								<!-- 跳转 -->
								<s:iterator value="resMap.Rows1" id="news" var="news" begin="0" end="8">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

											<s:if test="#news.c_bt.length()>=13">
												<s:property value="#news.c_bt.substring(0,13)+'...'" />
											</s:if> <s:else>
												<s:property value="#news.c_bt" />
											</s:else> </a>
									</li>
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
							<img src="<%=basePath%>images/index/today.png" />
						</div>
						<div style="float: right;width: 690px;height:85px;margin-right:10px;">
							<ul class="index-ul main-top-ul">
								<s:iterator value="resMap.Rows2" id="news" var="news" begin="0" end="8">
									<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

											<s:if test="#news.c_bt.length()>=13">
												<s:property value="#news.c_bt.substring(0,13)+'...'" />
											</s:if> <s:else>
												<s:property value="#news.c_bt" />
											</s:else> </a>
									</li>
								</s:iterator>
							</ul>
						</div>
						<div class="clearfloat"></div>

					</div>
				</div>
				<div class="side-box" style="margin-bottom: 4px;">
					<div class="side-title"></div>
					<div class="side-con" style="height: 235px;text-align: center;">

						<div id="featured">
							<ul class="ui-tabs-nav">
								<s:iterator value="resMap.RowsPic" id="news" var="news" begin="0" end="3" status="status">
									<li class="ui-tabs-nav-item ui-tabs-selected" id="nav-fragment-<s:property value='#status.count'/>">
										<a href="#fragment-<s:property value='#status.count'/>">
											<img src="<%=basePath%><s:property value='#news.c_tpljdz'/>" height="45px;" width="80px;" alt="" /> 
										</a>
									</li>
								</s:iterator>
								<%-- 
									<li class="ui-tabs-nav-item" id="nav-fragment-2">
										<a href="#fragment-2">
											<img src="<%=basePath%>images/hdm/2.jpg" height="45px;" width="80px;" alt="" /> 
										</a>
									</li>
									<li class="ui-tabs-nav-item" id="nav-fragment-3">
										<a href="#fragment-3">
											<img src="<%=basePath%>images/hdm/3.jpg" height="45px;" width="80px;" alt="" /> 
										</a>
									</li>
									<li class="ui-tabs-nav-item" id="nav-fragment-4">
										<a href="#fragment-4">
											<img src="<%=basePath%>images/hdm/4.jpg" height="45px;" width="80px;" alt="" /> 
										</a>
									</li>
								--%>
							</ul>
							
							<s:iterator value="resMap.RowsPic" id="news" var="news" begin="0" end="3" status="status">
								<!-- First Content -->
								<div id="fragment-<s:property value='#status.count'/>" class="ui-tabs-panel" style="">
									<img src="<%=basePath%><s:property value='#news.c_tpljdz'/>" alt="" width="626" height="228" />
									<div class="info">
										<h3>
											<a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">
												<s:property value="#news.c_bt"/>
											</a>
										</h3>
										<a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">阅读全文</a>
										</p>
									</div>
								</div>
							</s:iterator>
							<%--
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

							<-- Third Content -->
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
							 --%>

						</div>
					</div>
				</div>
				<div class="news">
					<div style="background: url('<%=basePath%>images/index/news-ico.png') no-repeat;width: 92px;height: 96px;position: absolute;margin-left:660px;margin-top: -7px;"></div>
					<div class="news-title">2012年全国禁毒宣传教育工作要点 青少年与合成毒品仍是重点</div>
					<div style="padding: 10px 40px 10px 30px; height: 180px;">
						<div style="float: left;width: 320px">
							<ul class="index-ul">
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京警方1月以来破获毒品案30 </a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京警方破获特大团伙贩毒案</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京警方1月以来破获毒品案3</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京警方破获特大团伙贩</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京警方破获特大团伙贩毒案</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
								</li>

							</ul>
						</div>
						<div style="float: right;width: 320px">
							<ul class="index-ul">
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京禁毒流动大课堂取得效果</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">阳光致远禁毒志愿者大队开展锋</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">阳光致远禁毒志愿者大队开雷锋</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京禁毒流动大课堂取得效果</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
								<li><div style="float: left;">
										<a
											href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>"
											class="awidth">北京禁毒流动大课堂取得良好效果</a>
									</div>
									<div style="float: right;">
										<span class="time">2012-04-12</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="clearfloat"></div>
					</div>
					<div style="text-align: right;padding: 20px 20px 0 0;">
						<a href="#">更多 &gt;&gt;</a>
					</div>
				</div>
				<div style="height: 60px;margin-bottom: 4px;">
					<!--  <img src="<%=basePath%>images/guanggao.png" />-->
					
					<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="745" height="60">
			<param name="movie" value="<%=basePath%>images/end.swf" />
			<param name="quality" value="high" />
			<param name="wmode" value="opaque">
			<embed src="<%=basePath%>images/end.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="745" height="60" wmode="opaque"></embed>
		</object>
				</div>
				<div style="margin-bottom: 4px;">
					<div class="six-left">
						<div class="six-box">
							<div class="six-con">
							<span class="six-title">禁毒动态</span>
								<div style="text-align: right;float: right;margin-left: 60px; margin-right: 10px;padding-top: 4px;">
									<a href="<%=basePath%>news/list?news.c_lm=1193">更多
										&gt;&gt;</a>
								</div>
								<div style="padding-top: 10px;">
									<ul class="index-ul">
										<s:iterator value="resMap.Rows2" id="news" var="news" begin="0" end="5">
											<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

													<s:if test="#news.c_bt.length()>=15">
														<s:property value="#news.c_bt.substring(0,15)+'...'" />
													</s:if> <s:else>
														<s:property value="#news.c_bt" />
													</s:else> 
													&nbsp;&nbsp;<s:property value="#news.d_fbsj.substring(0,10)"/>
											 </a>
											</li>
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
								<div
									style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
									<a href="<%=basePath%>news/list?news.c_lm=1255">更多
										&gt;&gt;</a>
								</div>
								<div style="padding-top: 10px;">
									<ul class="index-ul">
										<s:iterator value="resMap.Rows3" id="news" var="news" begin="0" end="5">
											<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

													<s:if test="#news.c_bt.length()>=15">
														<s:property value="#news.c_bt.substring(0,15)+'...'" />
													</s:if> <s:else>
														<s:property value="#news.c_bt" />
													</s:else> 
													&nbsp;&nbsp;<s:property value="#news.d_fbsj.substring(0,10)"/>
													</a>
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
					<div class="six-left">
						<div class="six-box">
							<div class="six-con">
								<span class="six-title">队伍建设</span>
								<div
									style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
									<a href="<%=basePath%>news/list?news.c_lm=1247">更多
										&gt;&gt;</a>
								</div>
								<div style="padding-top: 10px;">
									<ul class="index-ul">
										<s:iterator value="resMap.Rows4" id="news" var="news"
											begin="0" end="5">
											<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

													<s:if test="#news.c_bt.length()>=15">
														<s:property value="#news.c_bt.substring(0,15)+'...'" />
													</s:if> <s:else>
														<s:property value="#news.c_bt" />
													</s:else> 
													&nbsp;&nbsp;<s:property value="#news.d_fbsj.substring(0,10)"/>
													</a>
											</li>
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
								<span class="six-title">禁毒文件</span>
								<div
									style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
									<a href="<%=basePath%>news/list?news.c_lm=1197">更多
										&gt;&gt;</a>
								</div>
								<div style="padding-top: 10px;">
									<ul class="index-ul">
										<s:iterator value="resMap.Rows5" id="news" var="news"
											begin="0" end="5">
											<li><a
												href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

													<s:if test="#news.c_bt.length()>=15">
														<s:property value="#news.c_bt.substring(0,15)+'...'" />
													</s:if> <s:else>
														<s:property value="#news.c_bt" />
													</s:else> 
													&nbsp;&nbsp;<s:property value="#news.d_fbsj.substring(0,10)"/>
													</a>
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
					<div class="six-left">
						<div class="six-box">
							<div class="six-con">
								<span class="six-title">媒体关注</span>
								<div
									style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
									<a href="<%=basePath%>news/list?news.c_lm=1198">更多
										&gt;&gt;</a>
								</div>
								<div style="padding-top: 10px;">
									<ul class="index-ul">
										<s:iterator value="resMap.Rows6" id="news" var="news"
											begin="0" end="5">
											<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

													<s:if test="#news.c_bt.length()>=15">
														<s:property value="#news.c_bt.substring(0,15)+'...'" />
													</s:if> <s:else>
														<s:property value="#news.c_bt" />
													</s:else> 
													&nbsp;&nbsp;<s:property value="#news.d_fbsj.substring(0,10)"/>
													</a>
											</li>
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
								<span class="six-title">区县警讯</span>
								<div
									style="text-align: right;float: right;margin-left: 60px;
									margin-right: 10px;padding-top: 4px;">
									<a href="<%=basePath%>news/list?news.c_lm=1191">更多&gt;&gt;</a>
								</div>
								<div style="padding-top: 10px;">
									<ul class="index-ul">
										<s:iterator value="resMap.Rows7" id="news" var="news"
											begin="0" end="5">
											<li><a href="<%=basePath%>news/detail?news.n_xh=<s:property value="#news.n_xh"/>">

													<s:if test="#news.c_bt.length()>=15">
														<s:property value="#news.c_bt.substring(0,15)+'...'" />
													</s:if> <s:else>
														<s:property value="#news.c_bt" />
													</s:else> 
													&nbsp;&nbsp;<s:property value="#news.d_fbsj.substring(0,10)"/>
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
					<img src="<%=basePath%>images/1002-200.jpg" width="746px" />
				</div>
				<div style="height: 184px;margin-bottom: 4px;">


					<div
						style="background: url('images/index/bg-6.png') no-repeat;width: 747px;height: 184px;">
						<div>
							<div id="three-pass-two" class="three-pass">常用网站导航</div>
							<div id="three-pass-three" class="three-pass-hover">使用工具导航
							</div>
							<div class="clearfloat"></div>
						</div>
			
						<div class="pass-cont-two">
							<div style="width: 700px;padding: 5px; ">
								<div>
									<div style="float: left;margin-left: 10px;width: 40px; ">市局</div>
								</div>

								<div>
									<div style="float: left;margin-left: 10px; ">
										<s:iterator value="resMap.Rows11" var="website" begin="0"
											end="8">


											<a href="<s:property value="#website.c_lj"/>"> <s:property
													value="#website.c_bt" /> </a>

										</s:iterator>
									</div>
								</div>

							</div>
							<div style="width: 700px; float: left;padding: 5px;">
								<div>
									<div style="float: left;margin-left: 10px;width: 40px; ">区县</div>
								</div>
								<div>
									<div style="float: left;margin-left: 10px; ">
										<s:iterator value="resMap.Rows12" var="website" begin="0"
											end="8">


											<a href="<s:property value="#website.c_lj"/>"> <s:property
													value="#website.c_bt" /> </a>

										</s:iterator>
									</div>
								</div>
							</div>
							<div style="width: 700px; float: left;padding: 5px;">
								<div>
									<div style="float: left;margin-left: 10px;width: 40px; ">全国</div>
								</div>
								<div>
									<div style="float: left;margin-left: 10px; ">
										<s:iterator value="resMap.Rows13" var="website" begin="0" end="16">

											<a href="<s:property value="#website.c_lj"/>"> <s:property value="#website.c_bt" /> </a>

										</s:iterator>
									</div>
								</div>
							</div>
							<div style="width: 700px; float: left;padding: 5px;">
								<div>
									<div style="float: left;margin-left: 10px;width: 40px; ">其他</div>
								</div>
								<div>
									<div style="float: left;margin-left: 10px; ">
										<s:iterator value="resMap.Rows14" var="website" begin="0" end="4">

											<a href="<s:property value="#website.c_lj"/>"> <s:property
													value="#website.c_bt" /> </a>

										</s:iterator>
									</div>
								</div>
							</div>
							
							<div style="width: 700px; float: left;padding: 5px;">
								<div>
									<div style="float: left;margin-left: 10px; width: 40px;">禁毒</div>
								</div>
								<div>
									<div style="float: left;margin-left: 10px; ">
										<s:iterator value="resMap.Rows15" var="website" begin="0" end="8">
											<a href="<s:property value="#website.c_lj"/>"> <s:property
													value="#website.c_bt" /> </a>

										</s:iterator>
									</div>
								</div>
							</div>
							
							
							
							

						</div>

						<div class="pass-cont-three">
							<ul>
								<li><a href="http://jdcjsr-zyk.zx.ga/" target="_blank"><img
										src="<%=basePath%>images/index/one.png" />
								</a>
								</li>
								<li><a href="http://www.js/site/boot/wnl.htm"
									target="_blank"><img
										src="<%=basePath%>images/index/two.png" />
								</a>
								</li>
								<li><a href="http://10.6.1.37:8001/beeaweb/ "
									target="_blank"><img
										src="<%=basePath%>images/index/three.png" />
								</a>
								</li>
								<li><a href="http://jy-zyk.zx.ga/" target="_black"><img
										src="<%=basePath%>images/index/four.png" />
								</a>
								</li>
								<li><a href="http://10.48.6.9/ip4/index.asp"
									target="_blank"><img
										src="<%=basePath%>images/index/five.png" />
								</a>
								</li>
								<li><a href="http://10.12.62.149/article/cxdh.htm"
									target="_blank"><img
										src="<%=basePath%>images/index/six.png" />
								</a>
								</li>
							</ul>
							<div class="clearfloat"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	</div>
	<%@include file="foot.jsp"%>

</body>
</html>
