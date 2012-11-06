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
    <title>北京禁毒信息系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/newCss.css"/>
	<LINK rel=stylesheet type=text/css href="css/szxue.css">
	<link rel="stylesheet" rev="stylesheet" href="css/comic.css" type="text/css" media="all" />
	<SCRIPT language=javascript src="js/jquery.js"></SCRIPT>
	<script type="text/javascript" src="<%=basePath%>js/date.js"></script>
	
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
<div id="container_detail">
	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="984" height=99">
      <param name="movie" value="flash/banner_top.swf" />
      <param name="quality" value="high" />
      <embed src="flash/banner_top.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="984" height="99"></embed>
    </object>
  <!--  
	<div id="banner_top">
	  <div id="favor"><img src="newimages/4.png" width="15" height="12" />设为首页&nbsp;<img src="newimages/2.png" width="18" height="14" />&nbsp;加入收藏</div>
  </div>
  -->
	<div id="banner_bottom">
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
					<img src="newimages/3.png" width="16" height="16" />&nbsp;<strong>&nbsp;今天是：</strong>2012年10月29日&nbsp;&nbsp;&nbsp;&nbsp;星期五
				</div>
				<div style="float:left; padding-top:5px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="newimages/12312.jpg"
						width="14" height="13" />&nbsp;&nbsp;<strong>限行尾号：</strong>&nbsp;&nbsp;****和****
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
	
	<div style="width:980px;">
		<div id="menu_list_left">
			
			<div class="menu_div">
				<div class="menu_title">
				</div>				
				<div class="menu_content_list">
					<ul>
						<li><img src="newimages/menu_1.png" /></li>
					</ul>
					<ul>
						<li><img src="newimages/menu_2.png" /></li>
					</ul>
					<ul>
						<li><img src="newimages/menu_3.png" /></li>
					</ul>
                    <ul>
						<li><img src="newimages/menu_4.png" /></li>
					</ul>
					<ul>
						<li><img src="newimages/menu_5.png" /></li>
					</ul>
                    <ul>
						<li><img src="newimages/menu_6.png" /></li>
					</ul>
					<ul>
						<li><img src="newimages/menu_7.png" /></li>
					</ul>
					<ul>
						<li><img src="newimages/menu_8.png" /></li>
					</ul>
					<ul>
						<li><img src="newimages/menu_9.png" /></li>
					</ul>
				</div>
			</div>
			<div id="ljcsc">
					<img src="newimages/menu_ljksc.png" />
			</div>
			<div id="ljcsc">
					<img src="newimages/menu_gzjdts.png" />
			</div>
			<!-- 
            <div class="tztb_div" style="height:140px;">
				<div class="tztb_title">
					<div class="tztb_title_content">
						<div class="tztb_title_img"><img src="newimages/content_title_img.png" /></div>
						<div class="tztb_title_font">通知通告</div>
					</div>
				</div>
                 <div class="tztb_content_list">
                    <ul>
						<li><img src="newimages/dote.gif" style="margin-top:6px;"/> 全市发展和改革工作</li>
					</ul>
					<ul>
						<li><img src="newimages/dote.gif" style="margin-top:6px;"/> 全市发展和改革工作</li>
					</ul>
                    <ul>
						<li><img src="newimages/dote.gif" style="margin-top:6px;"/> 全市发展和改革工作</li>
					</ul>
					<ul>
						<li><img src="newimages/dote.gif" style="margin-top:6px;"/> 全市发展和改革工作</li>
					</ul>
                 </div>
			</div>
			-->
		</div>
	
		<div id="news_center">
			<div class="news_center_title">
				<div class="news_center_title_font">
					<s:if test="news.c_lm_.indexOf(';') > -1">
						<s:property value="news.c_lm_.substring(0,news.c_lm_.indexOf(';'))"/>
					</s:if>
					<s:else>
						<s:property value="news.c_lm_"/>
					</s:else>
				</div>
				<div class="news_center_title_more">
					<font color="#DF7024" size="2">您现在所在的位置： 首页&nbsp;&gt;&gt;&nbsp;<s:property value="news.c_lm_"/></font>
				</div>
			</div>
			<div class="news_content_center_content" style="padding:10px 0px 10px 20px;">
				<div style="font-size: 24px; font-weight:800; color:#F00; margin-top: 20px;line-height: 50px;"><s:property value="news.c_bt"/></div>
				<hr/>
				<div style="margin-top: 10px;">
					<div style="float: left;"><s:property value="news.c_yhzid"/>&nbsp;&nbsp;<s:property value="news.d_fbsj"/> </div>
					<div style="float: right;">
					      【<A onClick="thetd.style.fontSize='20px';" href="#"><font color="#0000CC">大</font></A> 
					        <A onClick="thetd.style.fontSize='14px';" href="#"><font color="#0000CC">中</font></A> 
					        <A onClick="thetd.style.fontSize='12px';" href="#"><font color="#0000CC">小</font></A>】 
					      【<a onClick="thetd.style.color='ff0000';" href="#"><font color=red>红</font></a> 
					        <a onClick="thetd.style.color='007700';" href="#" ><font color=#007700>绿</font></a> 
					        <a onClick="thetd.style.color='003399';" href="#"><font color=#003399>蓝</font></a> 
					        <a onClick="thetd.style.color='000000';" href="#"><font color=black>黑</font></a>】 
					      【<a href="javascript:window.print()">打印</a>】 
					      【<a href="javascript:window.close()">关闭</a>】
					</div>
				</div>
				<br/>
				<div id="thetd" style="line-height: 22px; width: 710px; text-align: left; margin-top: 50px;"><s:property value="news.c_nr" escape="false"/></div>
			</div>
			
            
		</div>
		
		
	</div>
	<div id="bottom_blue_line"></div>
	<div id="bottom">
		<div id="bottom_left">
			北京市公安局禁毒网由禁毒委员会办公室秘书处维护<br />
			推荐使用Internet Explorer 7.0 版本Web浏览器，1024*768分辨率 浏览本站<br />
			Copyright © 2002-2012 北京市公安局禁毒总队 版权所有<br />
		</div>
		<div id="bottom_right">
		  在线人数：120<br />
 		  信息总数：46033<br />
    	  总访问次数：10325
		</div>
	</div>
</div>
</div>
</body>
</html>
