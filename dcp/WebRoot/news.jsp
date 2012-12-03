<%@page import="com.unis.app.limit.service.ClxxSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="org.apache.commons.lang.xwork.StringUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String c_lm = (String)request.getParameter("news.c_lm");
if(c_lm == null){
	c_lm = "";
}

String c_bt = (String)request.getParameter("news.c_bt");
if(c_bt == null){
	c_bt = "";
}

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>北京禁毒信息网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/newCss.css"/>
	<LINK rel=stylesheet type=text/css href="css/szxue.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/nav.css">
	<link rel="stylesheet" rev="stylesheet" href="css/comic.css" type="text/css" media="all" />
	<script type="text/javascript" src="<%=basePath%>js/date.js"></script>
	
	<script type="text/javascript" src="<%=basePath%>js/menu.js"></script>
	
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
	<script type="text/javascript">
	
		function search(){
			if(document.all["news.c_bt"].value != '请输入您想搜索的内容' && document.all["news.c_bt"].value != ''){
				var searchForm=document.getElementById("searchForm");
				
				with(searchForm){
					action="newsCenterList?pageNo=1";
					submit();
				}
			}else{
				alert('请输入查询关键字');
				return false;
			}
		}
		
		function searchSubmit(pageNo){
			var searchForm=document.getElementById("searchForm");
			
			with(searchForm){
				action="newsCenterList?news.c_lm=<%=c_lm%>&pageNo="+pageNo;
				submit();
			}
		}
	</script>

  </head>
  
  <body>
<div id="container_news">
	<div id="banner_top">
		<div style="margin-left: 375px; padding-top:40px;">
	      <object type="application/x-shockwave-flash" data="flash/banner_t.swf" width="278" height="34">
			<param name="movie" value="flash/banner_t.swf" />
			<param name="wmode" value="transparent" />
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
     <object type="application/x-shockwave-flash" data="flash/Banner.swf" width="978" height="152">
		<param name="movie" value="flash/Banner.swf" />
		<param name="wmode" value="transparent" />
	 </object>
   </div>
   
  <div class="menu">
	    <a href="<%=basePath%>">首页</a>
	    <a href="">总队简介</a>
	    <a href="http://www.xxzx.bj" target="_blank">信息查询</a> 
	    <a href="http://anquan.zx.bj" target="_blank">信息安全</a> 
	    <a href="newsCenterList?news.c_lm=1239&pageNo=1">视频在线</a> 
	    <a href="ftp://ftp.jdc.bj" target="_blank">工作交流</a> 
	    <a href="newsCenterList?news.c_lm=1291&pageNo=1">光荣榜</a> 
	    <a href="newsCenterList?news.c_lm=1214&pageNo=1" onMouseOver="mouseover(this, 1)" onmouseout="mouseout()">法律法规</a> 
	    <a href="newsCenterList?news.c_lm=1286&pageNo=1">纪检监察</a>
		<a href="http://www.jdc.bj:9001" target="_blank">旧站入口</a> 
	</div>
		
	<div class="menu-list" id="menu1" onmouseover="_mouseover()" onmouseout="_mouseout()">
	  <ul>
	      <li><a href="newsCenterList?news.c_lm=1305&pageNo=1"><span>法律汇编</span></a> </li>
	      <li><a href="newsCenterList?news.c_lm=1209&pageNo=1"><span>法规汇编</span></a> </li>
	      <li><a href="newsCenterList?news.c_lm=1307&pageNo=1"><span>规章汇编</span></a></li> 
	      <li><a href="newsCenterList?news.c_lm=1312&pageNo=1"><span>规范性文件</span></a></li>
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
			<form id="searchForm"  method="post" >
				<input onFocus="if (value =='请输入您想搜索的内容'){value =''}"
					value="<%=c_bt %>" type="text" name="news.c_bt"  onblur="if (value ==''){value='请输入您想搜索的内容'}"
					style="background-image:url(newimages/ss.png); border:0px; padding-left:35px; background-repeat:no-repeat; padding-top:5px;BORDER: #A9cfe5 1px solid;  height:24px; width:162px; " />
				<input type="button" onclick="search();" style="border:0px; margin-left:10px; height:24px; width:52px;background-image:url(newimages/ssb.png); padding-top:4px; " />
			</form>
			</div>
		</div>
	</div>
	
		<div id="menu_list_left">
			
			<div class="menu_div">
				<div class="menu_title">
				</div>				
				<div class="menu_content_list">
					<ul>
						<li><a href='newsCenterList?news.c_lm=1101&pageNo=1'><img src="newimages/menu_1.png" /></a></li>
					</ul>
					<ul>
						<li><a href='newsCenterList?news.c_lm=1188&pageNo=1'><img src="newimages/menu_2.png" /></a></li>
					</ul>
					<ul>
						<li><a href='newsCenterList?news.c_lm=1102&pageNo=1'><img src="newimages/menu_3.png" /></a></li>
					</ul>
                    <ul>
						<li><a href='newsCenterList?news.c_lm=1103&pageNo=1'><img src="newimages/menu_4.png" /></a></li>
					</ul>
					<ul>
						<li><a href='newsCenterList?news.c_lm=1104&pageNo=1'><img src="newimages/menu_5.png" /></a></li>
					</ul>
                    <ul>
						<li><a href='newsCenterList?news.c_lm=1105&pageNo=1'><img src="newimages/menu_6.png" /></a></li>
					</ul>
					<ul>
						<li><a href='newsCenterList?news.c_lm=1267&pageNo=1'><img src="newimages/menu_7.png" /></a></li>
					</ul>
					<ul>
						<li><a href='newsCenterList?news.c_lm=1107&pageNo=1'><img src="newimages/menu_8.png" /></a></li>
					</ul>
					<ul>
						<li><a href='newsCenterList?news.c_lm=1106&pageNo=1'><img src="newimages/menu_9.png" /></a></li>
					</ul>
				</div>
			</div>
			<div id="ljcsc">
					<a href='newsCenterList?news.c_lm=1108&pageNo=1'><img src="newimages/menu_ljksc.png" /></a>
			</div>
			<div id="gzjdts">
					<a href='newsCenterList?news.c_lm=1100&pageNo=1'><img src="newimages/menu_gzjdts.png" /></a>
			</div>
		</div>
		
		<div id="news_center">
			<div class="news_center_title">
				<div class="news_center_title_font"><s:property value="pageModel.keyWords"/></div>
				<div class="news_center_title_more">
					<font color="#DF7024" size="2">您现在所在的位置： <a href="<%=basePath%>"><font color="#DF7024" size="2">首页</font></a>&nbsp;&gt;&gt;&nbsp;<s:property value="pageModel.keyWords"/></font>
				</div>
			</div>
			<div class="news_content_center_content">
				<s:if test="pageModel.list != null and pageModel.list.size > 0">
					<s:iterator value="pageModel.list" var="news">
						<div class="news_news_list"  style="width:720px; margin: 5px;" >
							<div class="lddt_news_list_c" style="width:580px;" >
								<img src="newimages/dote.gif" style="margin-top:6px;"/> 
								<a title="<s:property value='#news.c_bt'/>" href="newsDetail?news.n_xh=<s:property value='#news.n_xh'/>" target="_blank">
									<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
										<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
									</s:if>
									<s:property value="#news.c_bt"/>
									<s:if test="#news.d_fbsj.substring(0,10) == pageModel.sysdate">
										<img src="newimages/new.gif"/>
									</s:if>
								</a>
							</div>
							<div class="lddt_news_list_d" style="margin-right: 2px; width:70px;">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</s:if>
				<s:else>
				 <div id="news_news_list">
					<div class="lddt_news_list_c" style="width:720px; text-align: center; margin-top: 20px;" >
						暂无记录！
					</div>
				</div>
				</s:else>
                    <br />
                    <div style="display:block;  overflow:hidden; width: 734px; padding-top:20px;">
						<img src="newimages/news_list_line.png"/>
					</div>

					<div style="width: 734px; text-align:center;">
						<div class="digg">
							<span class="disabled"> 
								<a href="javascript:searchSubmit(1)">首页</a>
							</span> 
							<span class="disabled"> 
							<a href="javascript:searchSubmit(<s:property value="pageModel.previousPage"/>)">上一页</a>
							</span>
							<span class="disabled">
							<c:forEach varStatus="i" begin="${pageModel.pageNo}" end="${pageModel.totalPages-pageModel.pageNo>8?pageModel.pageNo+8:pageModel.totalPages}">
								<a href="javascript:searchSubmit(${i.index})">${i.index}</a>
							</c:forEach>
							</span>
							<span class="disabled">
							<a href="javascript:searchSubmit(<s:property value="pageModel.nextPage"/>)">下一页</a>
							</span>
							<span class="disabled">
							<a href="javascript:searchSubmit(<s:property value="pageModel.nextPage"/>)">末页</a>
							</span>
						</div>
					</div>
					
				</div>
			</div>
			<div id="bottom_blue_line"></div>
			<div id="bottom">
				<div id="bottom_left">
					北京市公安局禁毒总队办公室维护<br />
					推荐使用Internet Explorer 7.0 版本Web浏览器，1024*768分辨率 浏览本站<br />
					Copyright © 2002-2012 北京市公安局禁毒总队 版权所有<br />
				</div>
				<div id="bottom_right" style="text-align: left;">
					在线人数：2<br /> 信息总数：46033<br /> 总访问次数：10325
				</div>
			</div>
	</div>
</div>
</body>
</html>
