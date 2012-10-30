<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<link rel="stylesheet" rev="stylesheet" href="<%=basePath%>css/comic.css" type="text/css" media="all" />
	<LINK rel=stylesheet type=text/css href="<%=basePath%>css/szxue.css">
	<script language=javascript src="<%=basePath%>js/jquery.js"/></SCRIPT>
	<script language=javascript src="<%=basePath%>js/szxue.js"/></SCRIPT>
	
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
	
	<style type="text/css">
		body { padding:0px; margin:0px; }
		.demo { width:549px; height:auto; display:block; overflow:hidden; zoom:=1;
		}
		.STYLE1 {
			font-size: 24px;
			font-weight: bold;
		}
		.STYLE2 {color: #999999}
	</style>

  </head>
  
  <body> 
<div id="container">
	
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="984" height=99">
        <param name="movie" value="flash/banner_top.swf" />
        <param name="quality" value="high" />
        <embed src="flash/banner_top.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="984" height="99"></embed>
      </object>
<!--
<div id="banner_top">
	  <div id="favor"><img src="newimages/4.png" width="15" height="12" />设为首页&nbsp;<img src="newimages/2.png" width="18" height="14" />&nbsp;加入收藏</div></div>-->
  
	<div id="banner_bottom"  style="margin-left:2px;">
	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="980" height="152">
        <param name="movie" value="flash/Banner.swf" />
        <param name="quality" value="high" />
        <embed src="flash/Banner.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="980" height="152"></embed>
      </object>
  </div>
	<div>
	  <div class="channel-nav">
        <ul>
          <li ><a href='<%=basePath%>'><span>首页</span></a></li>
          <li><a href='http://www.xxzx.bj'><span>信息查询</span></a></li>
          <li><a href='http://www.anquan.zx.bj'><span>信息安全</span></a></li>
          <li><a href='newsCenterList?news.c_lm=1239&pageNo=1'><span>视频在线</span></a></li>
          <li><a href='ftp://ftp.jdc.bj'><span>工作交流</span></a></li>
          <li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><span>光荣榜</span></a></li>
          <li><a href='newsCenterList?news.c_lm=1297&pageNo=1'><span>学习专栏</span></a></li>
          <li><a href='newsCenterList?news.c_lm=1214&pageNo=1'><span>法律法规</span></a></li>
		  <li><a href='newsCenterList?news.c_lm=1286&pageNo=1'><span>警钟长鸣</span></a></li>
        </ul>
      </div>
			<div id="search_bar">
				<div style="float:left; padding-top:5px;margin-left:20px;">
					<img src="newimages/3.png" width="16" height="16" />&nbsp;<strong>&nbsp;今天是：</strong>
					<SCRIPT language=JavaScript>
						var enabled = 0;
						today = new Date();
						if(today.getDay()==0) day = "星期日"
						if(today.getDay()==1) day = "星期一"
						if(today.getDay()==2) day = "星期二"
						if(today.getDay()==4) day = "星期四"
						if(today.getDay()==5) day = "星期五"
						if(today.getDay()==6) day = "星期六"
						date = ""+(today.getYear())  + "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日&nbsp;" + day;
						document.write(date);
					</SCRIPT>
				</div>
				<div style="float:left; padding-top:5px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="newimages/12312.jpg"
						width="14" height="13" />&nbsp;&nbsp;<strong>限行尾号：</strong>&nbsp;&nbsp; 7 和 2 
				</div>
				<div style="float:right; width:270px;">
					<div style="float:left;">
						<form>
							<input onclick="if(this.value=='请输入您想搜索的内容')this.value=''"
								value="请输入您想搜索的内容" type="text"
								style="background-image:url(newimages/ss.png); border:0px; padding-left:35px; background-repeat:no-repeat; padding-top:5px;BORDER: #A9cfe5 1px solid;  height:24px; width:162px; " /><input
								type="button"
								style="border:0px; margin-left:10px; height:24px; width:52px;background-image:url(newimages/ssb.png); padding-top:4px; " />

						</form>
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
			<s:property value="#news.c_tpljdz.substring(1,#news.c_tpljdz.length())"/>|
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
				<a href="newsCenterList?news.c_lm=1195&pageNo=1">更多&gt;&gt;</a>
				</div>
			</div>
			<div id="red_lddt_title_div">
			
				<div id="red_lddt_title">
					<s:iterator value="resMap.lddtList" var="news" begin="0" end="0">
						<s:property value="#news.c_bt"/>
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
						<s:property value="#news.d_fbsj.substring(0,10)"/>
					</div>
				</div>
			</s:iterator>
			
		</div>
	</div>
	<div id="pic_link_1">
		<div id="pic_link_1_list">
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/lkjsc.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/zgjdtsc.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/qbxx.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/ddgj.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/dlsj.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/dyjl.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/dtgk.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/lpgl.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/yfjy.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/jwbz.png" /></a></li>
			</ul>
			<ul>
				<li><a href='newsCenterList?news.c_lm=1291&pageNo=1'><img src="newimages/zfgf.png" /></a></li>
			</ul>
		</div>
	</div>
	<div id="pic_link_2">
	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="980" height="80">
        <param name="movie" value="images/end.swf" />
        <param name="quality" value="high" />
        <embed src="images/end.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="980" height="80"></embed>
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
			</div>
			<div class="jrzb_div" style="height:105px;">
				<div class="jrzb_title">
					<div class="jrzb_title_content">
						<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
						<div class="jrzb_title_font">生日祝福</div>
					</div>
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
					<a href="newsCenterList?news.c_lm=1194&pageNo=1">更多&gt;&gt;</a>
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
				<div class="jwgk_content_center_title_font">队伍建设</div>
				<div class="jwgk_content_center_title_more">
					<a href="newsCenterList?news.c_lm=1196&pageNo=1">更多&gt;&gt;</a>
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
							<a href="newsCenterList?news.c_lm=1200&pageNo=1">更多&gt;&gt;</a>
						</div>
					</div>					
				</div>
				<div>
					<marquee direction="up" height="163px;">
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
				<DIV class=menuNav>
				      <DIV id=SNmenuNav class=navlist>
				        <DL style="background-image:url(newimages/qgdh.png) ; margin-top:5px;">
				       
				          <DD class=menv03>
						  
				            <UL class=sideleft>
				              <H3>全国导航</H3>
				              <LI class=noline>
				                <DIV>
				                	<s:iterator value="resMap.qgdhList" var="news">
				                		<A style="width: 75px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
				                			<s:property value="#news.c_bt"/>
				                		</A> 
				                	</s:iterator>
				    			</DIV>
				                <SPAN class=clear></SPAN>
				               </LI>
				              
				            </UL>
				        
				          </DD>
				        </DL>
						
				        <DL style="background-image:url(newimages/sjdh.png); margin-top:5px;"><DD class=menv04>
				          <UL class=sideleft>
				            <H3>市局导航</H3>
				            <LI class=noline>
				              <DIV>
			              		<s:iterator value="resMap.sjdhList" var="news">
			                		<A style="width: 120px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
			                			<s:property value="#news.c_bt"/>
			                		</A> 
			                	</s:iterator>
				              </DIV>
				              <SPAN class=clear></SPAN></LI>
				          </UL>
				           
				          </DD>
				        </DL>
				        <DL style="background-image:url(newimages/fjdh.png) ; margin-top:5px;"><DD class=menv05>
				          <UL class=sideleft>
				            <H3>分县局导航</H3>
				            <LI class=noline>
				              <DIV>
			              		<s:iterator value="resMap.fxjdhList" var="news">
			                		<A style="width: 75px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
			                			<s:property value="#news.c_bt"/>
			                		</A> 
			                	</s:iterator>
				              </DIV>
				              <SPAN class=clear></SPAN></LI>
				          </UL>
				          
				          </DD>
				        </DL>
				        <DL style="background-image:url(newimages/jddh.png) ; margin-top:5px;">
				          <DD class=menv05>
				            <UL class=sideleft>
				              <H3>禁毒导航</H3>
				              <LI class=noline>
				                  <DIV>
				              		<s:iterator value="resMap.jddhList" var="news">
				                		<A style="width: 80px;" title="<s:property value="#news.c_bt"/>" href="<s:property value="#news.c_lj"/>" target="_blank">
				                			<s:property value="#news.c_bt"/>
				                		</A> 
				                	</s:iterator>
					              </DIV>
				                <SPAN class=clear></SPAN></LI>
				            </UL>
				          </DD>
				        </DL>
				 
				    </DIV>
				  </DIV>
				</div>
				</div>
			</div>
		</div>
		<div>
		<img src="newimages/wjfb_hy_qw_jh.png" />
		</div>
	</div>
	<div id="ztzl_title"></div>
	<div id="ztzl_content">
		<div id="ztzl_content_left">
			<div class="ztzl_img_div"><img src="newimages/zdzxx.png" /></div>
			<div class="ztzl_img_div"><a href="<%=basePath%>admin"><img src="newimages/bgpt.png" /></a></div>
			<div class="xxph_div">
					<div class="xxph_title_content">
						<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
						<div class="jrzb_title_font">信息排行</div>
						<div class="jwgk_content_center_title_more">更多>></div>
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
					<a href="newsCenterList?news.c_lm=1193&pageNo=1">更多&gt;&gt;</a>
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
					<a href="newsCenterList?news.c_lm=1197&pageNo=1">更多&gt;&gt;</a>
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
				<div class="ztzl_content_rigth_title_font">区县警讯</div>
				<div class="ztzl_content_center_title_more">
					<a href="newsCenterList?news.c_lm=1199&pageNo=1">更多&gt;&gt;</a>
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
					<a href="newsCenterList?news.c_lm=1198&pageNo=1">更多&gt;&gt;</a>
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
	<div id="roll_image"></div>
	<div id="bottom_blue_line"></div>
	<div id="bottom">
		<div id="bottom_left">
		北京市公安局禁毒总队办公室维护<br />
推荐使用Internet Explorer 7.0 版本Web浏览器，1024*768分辨率 浏览本站<br />
Copyright © 2002-2012 北京市公安局禁毒总队 版权所有<br />
		</div>
		<div id="bottom_right">
		在线人数：2<br />
  信息总数：46033<br />
    总访问次数：10325
		</div>
	</div>
</div>
</div>
</body>
</html>
