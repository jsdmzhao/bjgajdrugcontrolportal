<%@page import="com.unis.app.userinfo.service.UserInfoSvc"%>
<%@page import="com.unis.app.duty.service.KqZbSvc"%>
<%@page import="com.unis.app.limit.service.ClxxSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String userId=session.getAttribute("userId")+"";
if("null".equals(userId)){
	userId="0";
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>北京禁毒信息系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/newCss.css"/>
	<link rel="stylesheet" rev="text/css" href="<%=basePath%>css/comic.css" type="text/css" media="all" />
	
	 <link rel="stylesheet" type="text/css" href="<%=basePath%>css/szxue.css">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/nav.css">
	<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/szxue.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/menu.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/date.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/tab.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/maquee.js"></script>

	<style type="text/css">
		body { padding:0px; margin:0px; }
		.demo { width:549px; height:auto; display:block; overflow:hidden; zoom:=1;
		}
		.STYLE1 {
			font-size: 24px;
			font-weight: bold;
		}
		.STYLE2 {color: #999999}
		
		.ny2010{ width:970px; margin:0 auto;}
		.ny2010 a{ text-decoration:none; color:#333333; font-size:12px;}
		.ny2010 td img{ width:220px; height:36px; display:block; margin:0 5px 2px 0; padding:1px; border:1px solid #CCCCCC;}
				
	</style>
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

<style type="text/css">
	body {
		font-size: 14px;
		background-image: url('<%=basePath%>images/bg11.jpg');
		background-repeat: repeat;
	}
</style>

<script type="text/javascript">
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
  
  <body> 
  	<iframe style="display: none;" src="<%=basePath%>login.jsp?temp_r=zl"></iframe>
  	
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
	<%--<%@include file="head.jsp"%>--%>

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
		function fontbutton(index,mag){
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

	
</script>
	<iframe style="display: none;" src="<%=basePath%>login.jsp?temp_r=zl"></iframe>

<%if(!"0".equals(userId)){ %>

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
								<a href="<%=basePath%>temp/blog.jsp"
									onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">工作日志</a>
							</div>
						</div>
						<!-- 
						<div class="topdiv">
							<div class="imgdiv"><img class="imgdiv" src="<!%=basePath%>images/5.png"/></div >
							<div class="font1" align="center"><a href="#" onclick='Box("msg5",900,600,parahtml(900,600),fontbutton(5,1));'>工作计划</a></div>
						</div>
					 	-->
						<div class="topdiv">
							<div class="imgdiv">
								<img class="imgdiv" src="<%=basePath%>images/6.png  " />
							</div>
							<div class="font1" align="center">
								<a href="<%=basePath%>temp/message.jsp"
									onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">内部消息</a>
							</div>
						</div>



						<div class="topdiv">
							<div class="imgdiv">
								<img class="imgdiv" src="<%=basePath%>images/7.png  " />
							</div>
							<div class="font1" align="center">
								<a href="<%=basePath%>temp/mobile.jsp"
									onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">手机短息</a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class=none>
				<A id=foldin href="javascript:;">收起</A>
			</div>
		</div>
	</div>
	<div class=header>
		<div class=area>
			<div class=r>
				<div class="topCtiy clear">
					<UL>
						<LI class=i2 id=changeCity>我的办公区</LI>
					</UL>
				</div>
			</div>
		</div>
	</div>
  	<%} %>
  	
  <%--<%@include  file="../head.jsp" %>--%>
	<div id="container">
		<div id="banner_top">
			<div style="margin-left: 450px; padding-top:40px;">
		      <object
		        classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
		        codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
		        id="banner_t"
		        width="278" height="34"
		      >
		        <param name="movie" value="flash/banner_t.swf">
		        <param name="bgcolor" value="#FFFFFF">
		        <param name="quality" value="high">
		        <param name="seamlesstabbing" value="false">
		        <param name="allowscriptaccess" value="samedomain">
		        <embed
		          type="application/x-shockwave-flash"
		          pluginspage="http://www.adobe.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"
		          name="banner_t"
		          width="278" height="34"
		          src="flash/banner_t.swf"
		          bgcolor="#FFFFFF"
		          quality="high"
		        >
		          <noembed>
		          </noembed>
		        </embed>
		      </object>
		    </div>
		  <div id="favor">
		  	<img src="newimages/4.png" width="15" height="12" />
		  	<a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath%>');" ><font color="white">设为首页</font></a>&nbsp;
		  	<img src="newimages/2.png" width="18" height="14" />&nbsp;
		  	<a href="#" onclick="javascript:window.external.AddFavorite('<%=basePath%>', '北京禁毒信息网');" ><font color="white">加入收藏</font></a>
		  </div>
		 
		</div>
	  		
	    <div id="banner_bottom"  style="margin-left:2px;">
		  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="978" height="152">
	        <param name="movie" value="flash/Banner.swf" />
	        <param name="quality" value="high" />
	        <embed src="flash/Banner.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="978" height="152"></embed>
	      </object>
	   </div>

	    <div class="menu">
		    <a href="<%=basePath%>" target="_blank">首页</a>
		    <a href="http://www.xxzx.bj" target="_blank">信息查询</a> 
		    <a href="http://www.anquan.zx.bj" target="_blank">信息安全</a> 
		    <a href="newsCenterList?news.c_lm=1239&pageNo=1" target="_blank">视频在线</a> 
		    <a href="ftp://ftp.jdc.bj" target="_blank">工作交流</a> 
		    <a href="newsCenterList?news.c_lm=1291&pageNo=1" target="_blank">光荣榜</a> 
		    <a href="newsCenterList?news.c_lm=1297&pageNo=1" target="_blank">学习专栏</a>
		    <a href="newsCenterList?news.c_lm=1214&pageNo=1" onMouseOver="mouseover(this, 1)" onmouseout="mouseout()" target="_blank">法律法规</a> 
		    <a href="newsCenterList?news.c_lm=1286&pageNo=1" target="_blank">纪检监察</a> 
		</div>
		
		<div class="menu-list" id="menu1" onmouseover="_mouseover()" onmouseout="_mouseout()">
		  <ul>
		      <li><a href="newsCenterList?news.c_lm=1305&pageNo=1" target="_blank"><span>法律汇编</span></a> </li>
		      <li><a href="newsCenterList?news.c_lm=1209&pageNo=1" target="_blank"><span>法规汇编</span></a> </li>
		      <li><a href="newsCenterList?news.c_lm=1307&pageNo=1" target="_blank"><span>规章汇编</span></a></li> 
		      <li><a href="newsCenterList?news.c_lm=1312&pageNo=1" target="_blank"><span>规范性文件</span></a></li>
		  </ul>
		</div>
		
		
		<div id="search_bar">
			<div style="float:left; padding-top:5px;margin-left:20px;">
				<img src="newimages/3.png" width="16" height="16" />&nbsp;<strong>&nbsp;今天是：</strong>
				<script type="text/javascript">
					WriteFullDate();
				</script>
			</div>
			<div style="float:left; padding-top:5px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="newimages/12312.jpg"
					width="14" height="13" />&nbsp;&nbsp;<strong>车辆限行尾号：</strong>
					<%
					ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
					ClxxSvc clxxSvc= (ClxxSvc) ctx.getBean("clxxSvc");
					out.print(clxxSvc.getWh());
					%>
			</div>
			<div style="float:right; width:270px;">
				<div style="float:left;">
					<form id="searchForm" action="newsCenterList?pageNo=1" method="post" >
						<input onFocus="if (value =='请输入您想搜索的内容'){value =''}" onblur="if (value ==''){value='请输入您想搜索的内容'}"
							value="请输入您想搜索的内容" type="text" name="news.c_bt"
							style="background-image:url(newimages/ss.png); border:0px; padding-left:35px; background-repeat:no-repeat; padding-top:5px;BORDER: #A9cfe5 1px solid;  height:24px; width:162px; " />
						<input type="button" onclick="search();" style="border:0px; margin-left:10px; height:24px; width:52px;background-image:url(newimages/ssb.png); padding-top:4px; " />
					</form>
					
					
					<script type="text/javascript">
						function search(){
							if(document.all["news.c_bt"].value != '请输入您想搜索的内容'){
								document.getElementById("searchForm").submit();
							}else{
								alert('请输入查询关键字');
								return false;
							}
						}
					</script>
					
				</div>
			</div>
		</div>
		<div id="bts" style="display: none;">
			
			<s:iterator value="resMap.hdpList" var="news">
				<s:property value="#news.c_bt"/>|
			</s:iterator>
			
		</div>
		<div id="ljs" style="display: none;">
			<s:iterator value="resMap.hdpList" var="news">
				newsDetail?news.n_xh=<s:property value="#news.n_xh"/>|
			</s:iterator>
		</div>
		<div id="tps" style="display: none;">
			<s:iterator value="resMap.hdpList" var="news">
				<s:property value="#news.c_tpljdz"/>|
			</s:iterator>
		</div>
		<div id="dt_news">
			<div id="focus_news">
				<div>
					<div class="demo">
						<SCRIPT type=text/javascript>
							var focus_width = 549;
							//图片宽
							var focus_height = 375;
							//图片高
							var text_height = 40;
							//设置显示文字标题高度,最佳为20（如果不显示标题值设为0即可）
							var swf_height = focus_height + text_height;
							
							var pics = '';
							var links = '';
							var texts = '';
							pics = document.getElementById("tps").innerHTML;
							links = document.getElementById("ljs").innerHTML;
							//alert(links);
							texts = document.getElementById("bts").innerHTML;
							//alert(typeof(document.getElementById("tps").innerHTML));
							pics = pics.substring(0,pics.length-2);
							links = links.substring(0,pics.length-2);
							
							document.write('<object ID="focus_flash" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
							document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="newimages/adplay.swf"><param name="quality" value="high"><param name="bgcolor" value=#F0F7FB">');
							document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
							document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
							document.write('<embed ID="focus_flash" src="newimages/adplay.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F7FB" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
							document.write('</object>');
						</SCRIPT>
					</div>
				</div>
			</div>
			<div id="lddt_news">
				<div id="lddt_news_title">
					<div id="focus_news_title_left">
						<div id="focus_news_title_left_img"><img src="newimages/arrow_lddt.png"/></div>
						工作要闻
					</div>
					<div id="lddt_news_title_right">
					<a href="newsCenterList?news.c_lm=1081&pageNo=1" target="_blank">更多&gt;&gt;</a>
					</div>
				</div>
				<div id="red_lddt_title_div">
				
					<div id="red_lddt_title">
						<s:iterator value="resMap.lddtList" var="news" begin="0" end="0">
							<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
							 <font color="red"><s:property value="#news.c_bt"/></font>
							</a>
						</s:iterator>
					</div>
					
				</div>
				
				<s:iterator value="resMap.lddtList" var="news" begin="1">
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:280px;">
							<img src="newimages/dote.gif" style="margin-top:6px;"/> 
							<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
								<s:property value="#news.c_bt"/>
							</a>
						</div>
						<div id="lddt_news_list_d">
							<!--  
							<s:if test="#news.c_tpljdz != '' ">
								<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" />
							</s:if>
							<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								<img src="newimages/new.gif" style="margin-top: 6px;"/>
							</s:if>
							-->
							<s:property value="#news.d_fbsj.substring(0,10)"/>
						</div>
					</div>
				</s:iterator>
				
			</div>
		</div>
		<div id="pic_link_1">
			<div id="pic_link_1_list">
				<ul>
					<li><a href='newsCenterList?news.c_lm=1108&pageNo=1' target="_blank"><img src="newimages/list_1.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1100&pageNo=1' target="_blank"><img src="newimages/list_2.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1101&pageNo=1' target="_blank"><img src="newimages/list_3.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1102&pageNo=1' target="_blank"><img src=newimages/list_4.png /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1103&pageNo=1' target="_blank"><img src="newimages/list_6.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1104&pageNo=1' target="_blank"><img src="newimages/list_7.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1267&pageNo=1' target="_blank"><img src="newimages/list_8.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1105&pageNo=1' target="_blank"><img src="newimages/list_9.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1188&pageNo=1' target="_blank"><img src="newimages/list_10.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1106&pageNo=1' target="_blank"><img src="newimages/list_11.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1107&pageNo=1' target="_blank"><img src="newimages/list_5.png" /></a></li>
				</ul>
			</div>
		</div>
		<div id="pic_link_2">
		  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="976" height="80">
	        <param name="movie" value="images/end.swf" />
	        <param name="quality" value="high" />
	        <embed src="images/end.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="976" height="80"></embed>
	      </object>
		</div>
		<div id="jwgk_title"></div>
		<div id="jwgk_content">
			<div id="jwgk_content_left">
				<div class="jrzb_div" style="height:105px;">
					<div class="jrzb_title">
						<div class="jrzb_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">今日值班</div>
						</div>
					</div>
					<div style="padding: 2px;">
					<% 
					KqZbSvc kqZbSvc= (KqZbSvc) ctx.getBean("kqZbSvc");
					out.print(kqZbSvc.getZb());
					
					%>
					</div>
				</div>
				<div class="jrzb_div" style="height:105px;">
					<div class="jrzb_title">
						<div class="jrzb_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">生日祝福</div>
						</div>
						
					</div>
						<div style="padding: 2px;">
					<% 
					UserInfoSvc userInfoSvc= (UserInfoSvc) ctx.getBean("userInfoSvc");
					out.print(userInfoSvc.getSr());
					
					%>
					</div>
				</div>
				<div class="jrzb_div">
					<div class="jrzb_title">
						<div class="jrzb_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">应用导航</div>
						</div>
					</div>				
					<div class="yydh_content_list">
						<ul>
							<li><a href="http://10.8.58.21:9080/jindu"><img src="newimages/jdajglxt.png" /></a></li>
						</ul>
						<ul>
							<li><a href="http://10.8.58.21:9080/xdry"><img src="newimages/xdrydtgkxt.png" /></a></li>
						</ul>
						<ul>
							<li><a href=""><img src="newimages/gabjdqbypxt.png" /></a></li>
						</ul>
					</div>
				</div>
				<div id="wsbg">
						<img src="newimages/wsbg.png" />
				</div>
			</div>
			<div id="jwgk_content_center">
				<div class="jwgk_content_center_title">
					<div class="jwgk_content_center_title_font">通知通报</div>
					<div class="jwgk_content_center_title_more">
						<a href="newsCenterList?news.c_lm=1194&pageNo=1" target="_blank">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="jwgk_content_center_content">
					
					<s:iterator value="resMap.tztbList" var="news">
						<div id="lddt_news_list">
							<div id="lddt_news_list_c" style="width:390px;">
								<img src="newimages/dote.gif" style="margin-top:6px;"/>
								<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
									<s:property value="#news.c_bt"/>
								</a>
							</div>
							<div id="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
	
				</div>
				<div class="jwgk_content_center_title">
					<div class="jwgk_content_center_title_font">党建队建</div>
					<div class="jwgk_content_center_title_more">
						<a href="newsCenterList?news.c_lm=1196&pageNo=1" target="_blank">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="jwgk_content_center_content">
					
					<s:iterator value="resMap.dwjsList" var="news">
						<div id="lddt_news_list">
							<div id="lddt_news_list_c" style="width:390px;">
								<img src="newimages/dote.gif" style="margin-top:6px;"/>
								<a title="<s:property value="#news.c_bt"/>"href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
									<s:property value="#news.c_bt"/>
								</a>
							</div>
							<div id="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
	
				</div>
			</div>
			<div id="jwgk_content_right">
				<div class="ggl_div">
					<div class="ggl_title">
						<div class="ggl_title_content">						
							<div class="ggl_title_font">公告栏</div>
							<div class="jwgk_content_center_title_more">
								<a href="newsCenterList?news.c_lm=1200&pageNo=1" target="_blank">更多&gt;&gt;</a>
							</div>
						</div>					
					</div>
					<div>
						<marquee direction="up" height="163px;" onmouseover='this.stop()' onmouseout='this.start()'>
							<s:iterator value="resMap.gglList" var="news">
								<div id="lddt_news_list_ggl" style="width:200px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>"href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:property value="#news.c_bt"/>
									</a>
								</div>
							</s:iterator>
						</marquee>
					</div>
				</div>
				<div class="wldh_div">
					<div class="jrzb_title">
						<div class="jrzb_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">网络导航</div>
						</div>
					</div>
					<div class="yydh_content_list">
					<div style="width:193px; height:150px; margin:0px auto;">
					<DIV class="menuNav">
					      <DIV id="SNmenuNav" class="navlist">
					        <DL style="background-image:url(newimages/qgdh.png) ; margin-top:5px;">
					       
					          <DD class="menv03">
							  
					            <UL class="sideleft">
					              <H3>全国导航</H3>
					              <LI class="noline">
					                <DIV>
					                	<s:iterator value="resMap.qgdhList" var="news">
					                		<A style="width: 75px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
					                			<s:property value="#news.c_bt"/>
					                		</A> 
					                	</s:iterator>
					    			</DIV>
					                <SPAN class="clear"></SPAN>
					               </LI>
					              
					            </UL>
					        
					          </DD>
					        </DL>
							
					        <DL style="background-image:url(newimages/sjdh.png); margin-top:5px;"><DD class="menv04">
					          <UL class="sideleft">
					            <H3>市局导航</H3>
					            <LI class="noline">
					              <DIV>
				              		<s:iterator value="resMap.sjdhList" var="news">
				                		<A style="width: 120px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
				                			<s:property value="#news.c_bt"/>
				                		</A> 
				                	</s:iterator>
					              </DIV>
					              <SPAN class="clear"></SPAN></LI>
					          </UL>
					           
					          </DD>
					        </DL>
					        <DL style="background-image:url(newimages/fjdh.png) ; margin-top:5px;"><DD class="menv05">
					          <UL class="sideleft">
					            <H3>分县局导航</H3>
					            <LI class="noline">
					              <DIV>
				              		<s:iterator value="resMap.fxjdhList" var="news">
				                		<A style="width: 75px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
				                			<s:property value="#news.c_bt"/>
				                		</A> 
				                	</s:iterator>
					              </DIV>
					              <SPAN class="clear"></SPAN></LI>
					          </UL>
					          
					          </DD>
					        </DL>
					        <DL style="background-image:url(newimages/jddh.png) ; margin-top:5px;">
					          <DD class="menv05">
					            <UL class="sideleft">
					              <H3>禁毒导航</H3>
					              <LI class="noline">
					                  <DIV>
					              		<s:iterator value="resMap.jddhList" var="news">
					                		<A style="width: 80px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
					                			<s:property value="#news.c_bt"/>
					                		</A> 
					                	</s:iterator>
						              </DIV>
					                <SPAN class="clear"></SPAN></LI>
					            </UL>
					          </DD>
					        </DL>
					 
					    </DIV>
					  </DIV>
					</div>
					</div>
				</div>
			</div>
			<div style="padding-top:3px; padding-left:-10px;width: 740px;">
				<img src="newimages/wjfb_hy_qw_jh.png" usemap="#planetmap"/>
				<map name="planetmap" id="planetmap"> 
					<area shape="rect" coords="0,0,106,78" href="newsCenterList?news.c_lm=1140&pageNo=1" alt="文件发布"  target="_blank"/>
					<area shape="rect" coords="106,0,216,78" href="newsCenterList?news.c_lm=1141&pageNo=1" alt="会议提示"  target="_blank"/>
					<area shape="rect" coords="216,0,331,78" href="newsCenterList?news.c_lm=1142&pageNo=1" alt="勤务安排"  target="_blank"/>
					<area shape="rect" coords="331,0,464,78" href="newsCenterList?news.c_lm=1186&pageNo=1" alt="文件交换"  target="_blank"/>
					<area shape="rect" coords="464,0,588,78" href="newsCenterList?news.c_lm=1143&pageNo=1" alt="电视电话会议"  target="_blank"/>
					<area shape="rect" coords="588,0,731,78" href="newsCenterList?news.c_lm=1144&pageNo=1" alt="会议室管理"  target="_blank"/>
				</map> 
			</div>
		</div>
		<div id="ztzl_title"></div>
		<div id="ztzl_content">
			<div id="ztzl_content_left">
				<div class="ztzl_img_div"><a href="newsCenterList?news.c_lm=1145&pageNo=1" target="_blank"><img src="newimages/zdzxx.png" /></a></div>
				<div class="ztzl_img_div"><a href="<%=basePath%>admin" target="_blank"><img src="newimages/bgpt.png" /></a></div>
				<div class="xxph_div">
						<div class="xxph_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">信息排行</div>
							<div class="jwgk_content_center_title_more">更多&gt;&gt;</div>
						</div>
						<div class="main-cons" style="height: 270px;">
							<div id="tabph">
								<div id="wrap">
									<div id="list">
										<div class="item">
											<div class="tab">
												<h5>
													<a href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>">排行</a>
												</h5>
												<ul>
													<li class="tabcurrent">总队各单位</li>
													<li>各区县分局</li>
												</ul>
												<div style="display:none;">
													<span class="switchBtn"><a href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" class="prevNot">左</a><a
														href="#" class="next">右</a>
													</span>
												</div>
											</div>
											<ul class="items" style="display:block;">
											
												<s:iterator value="resMap.xxphList" id="news" var="news">
													<li style="margin-top: -3px;">
														<div style="float:left; width:90px;">
															<a href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>"><s:property value="#news.c_yhzid"/></a>
														</div>
														<div style="float:left; width:40px; margin-left:20px;">
															<a href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>"><s:property value="#news.n_xxxh"/>条</a>
														</div>
													</li>
												</s:iterator>
											</ul>
											<ul class="items">
												<li>
													<div style="float:left; width:60px;">
														<a href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>">东城分局</a>
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
										</div>
									</div>
									<!--/list-->
								</div>
							</div>
						</div>
				</div>
			</div>
			<div id="ztzl_content_center">
				<div class="ztzl_content_center_title">
					<div class="ztzl_content_center_title_font">禁毒动态</div>
					<div class="ztzl_content_center_title_more">
						<a href="newsCenterList?news.c_lm=1193&pageNo=1" target="_blank">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content">
					<s:iterator value="resMap.jddtList" var="news">
						<div id="lddt_news_list">
							<div id="lddt_news_list_c" style="width:260px;">
								<img src="newimages/dote.gif" style="margin-top:6px;"/> 
								<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
									<s:property value="#news.c_bt"/>
								</a>
							</div>
							<div id="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="ztzl_content_center_title" style="margin-top:20px;">
					<div class="ztzl_content_center_title_font">禁毒文件</div>
					<div class="ztzl_content_center_title_more">
						<a href="newsCenterList?news.c_lm=1197&pageNo=1" target="_blank">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content">
					<s:iterator value="resMap.jdwjList" var="news">
						<div id="lddt_news_list">
							<div id="lddt_news_list_c" style="width:260px;">
								<img src="newimages/dote.gif" style="margin-top:6px;"/> 
								<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
									<s:property value="#news.c_bt"/>
								</a>
							</div>
							<div id="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
			
			<div id="ztzl_content_right">
				<div class="ztzl_content_right_title">
					<div class="ztzl_content_rigth_title_font">区县禁毒</div>
					<div class="ztzl_content_center_title_more">
						<a href="newsCenterList?news.c_lm=1199&pageNo=1" target="_blank">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content">
					<s:iterator value="resMap.qxjxList" var="news">
						<div id="lddt_news_list">
							<div id="lddt_news_list_c" style="width:220px;">
								<img src="newimages/dote.gif" style="margin-top:6px;"/> 
								<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
									<s:property value="#news.c_bt"/>
								</a>
							</div>
							<div id="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="ztzl_content_right_title" style="margin-top:20px;">
					<div class="ztzl_content_rigth_title_font">媒体关注</div>
					<div class="ztzl_content_center_title_more">
						<a href="newsCenterList?news.c_lm=1198&pageNo=1" target="_blank">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content">
					<s:iterator value="resMap.mtgzList" var="news">
						<div id="lddt_news_list">
							<div id="lddt_news_list_c" style="width:220px;">
								<img src="newimages/dote.gif" style="margin-top:6px;"/> 
								<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
									<s:property value="#news.c_bt"/>
								</a>
							</div>
							<div id="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
		</div>
		<div id="roll_image">
		
		
			<div class="ny2010">
				<div id="demo" style="overflow:hidden; width:976px; color:#333333; height:45px; display:inline; float:right;"
					onMouseMove="MoveDiv(event);" onMouseOut="MoveOutDiv();">
					<div id="demo1" style="width:100%;">
						<table cellspacing="0" cellpadding="0" width="100%">
							<tbody  width="100%">
								<tr valign="top">
									<td valign="top" nowrap>
										<table>
											<tr>
												<s:iterator value="resMap.ztzlList" var="news">
													<td>
														<a href="<s:property value="#news.c_lj"/>" target="_blank">
															<img src="<s:property value="#news.c_tpljdz"/>" border="0" alt="<s:property value="#news.c_bt"/>"/>
														</a>
													</td>
												</s:iterator>
												
											</tr>
										</table></td>
									<td width="0">
										<div id="demo2" style="width:100%;"></div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		<script type="text/javascript"> 
			document.getElementById("demo2").innerHTML = document.getElementById("demo1").innerHTML;
			MyMar=setInterval(Marquee,speed);
		</script>

		
		</div>
		 
		<div id="bottom_blue_line"></div>
		<div id="bottom">
			<div id="bottom_left">
				北京市公安局禁毒总队办公室维护<br />
				推荐使用Internet Explorer 7.0 版本Web浏览器，1024*768分辨率 浏览本站<br />
				Copyright © 2002-2012 北京市公安局禁毒总队 版权所有<br />
			</div>
			<div id="bottom_right" style="text-align: left;">
				<!-- 在线人数：2<br /> 信息总数：46033<br /> 总访问次数：10325 -->
			</div>
		</div>
	</div>
  </body>
</html>
