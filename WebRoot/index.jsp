<%@page import="com.unis.app.duty.service.KqZbSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


ApplicationContext ctx = WebApplicationContextUtils .getWebApplicationContext(request.getSession() .getServletContext());
KqZbSvc kqZbSvc = (KqZbSvc) ctx.getBean("kqZbSvc");



%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>北京禁毒信息网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/newCss.css"/>
	<link rel="stylesheet" rev="text/css" href="<%=basePath%>css/comic.css" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/szxue.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/nav.css">
	<link rel="stylesheet" href="<%=basePath%>css/sexylightbox.css" type="text/css" media="all" />
	<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/szxue.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/menu.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/date.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/tab.js"></script>
	<%--<script type="text/javascript" src="<%=basePath%>js/maquee.js"></script>--%>

	<script type="text/javascript" src="<%=basePath%>js/swfobject.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/sexylightbox.v2.3.jquery.min.js"></script>
	
	<script type="text/javascript" src="<%=basePath%>js/lightBox.js"></script>

	<style type="text/css">
		body { padding:0px; margin:0px; }
		.demo { width:519px; height:auto; display:block; overflow:hidden; zoom:=1;
		}
		.STYLE1 {
			font-size: 24px;
			font-weight: bold;
		}
		.STYLE2 {color: #999999}
		
		.ny2010{ width:970px; margin:0 auto;}
		.ny2010 a{ text-decoration:none; color:#333333; font-size:12px;}
		.ny2010 td img{ width:220px; height:36px; display:block; margin:0 5px 2px 0; padding:1px; border:1px solid #CCCCCC;}
		
		#link_logo{ border-left: solid 1px #a9cfe5; border-right: solid 1px #a9cfe5;border-bottom: solid 1px #a9cfe5;height:190px; width:208px; overflow:hidden;list-style:none;}
		#link_logo li{height:30px;width:190px; padding-left:5px;line-height:30px; border-bottom:1px dotted #ddd;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}
		
	</style>

	<script type="text/javascript">
	
		/*gzy*/
		$(document).ready(function(){
	      SexyLightbox.initialize({color:'white', dir: 'sexyimages'});
	    });
		
		function showDiv(id_num,num){
			for(var i=1;i<=3;i++){
				
				if(GetObj("showDivTitle_"+id_num+i)){
					GetObj("showDivTitle_"+id_num+i).className='';
				}
				if(GetObj("showDivContent_"+id_num+i)){
					GetObj("showDivContent_"+id_num+i).style.display='none';
					GetObj("showDivMore_"+id_num+i).style.display='none';
				}
				
			}
			if(GetObj("showDivTitle_"+id_num+num)){
				/**
				if(""+id_num+num == '52'){
					GetObj("showDivTitle_"+id_num+num).className='select2';
				} else {
					GetObj("showDivTitle_"+id_num+num).className='select';
				}
				**/
				GetObj("showDivTitle_"+id_num+num).className='select';
				
			}
			if(GetObj("showDivContent_"+id_num+num)){
				GetObj("showDivContent_"+id_num+num).style.display='block';
				GetObj("showDivMore_"+id_num+num).style.display='block';
			}
			
		}
		
		function GetObj(objName){
			
			if(document.getElementById){
				return eval('document.getElementById("'+objName+'")');		
			}else {
				return eval('document.all.'+objName);		
			}
		}
		
	  function f_open(url, title, icon) {
	    	
	        window.open (url, title, 'height=600, width=1000, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=no, status=no');
	    }
	</script>
	
	<script>
function MM_over(mmObj) {
	var mSubObj = mmObj.getElementsByTagName("div")[0];
	mSubObj.style.display = "block";
	mSubObj.style.backgroundColor = "#FFFFFF";
}
function MM_out(mmObj) {
	var mSubObj = mmObj.getElementsByTagName("div")[0];
	mSubObj.style.display = "none";
	
}
</script>
  </head>
  
  <body> 
  	<s:if test="resMap.srtsStr != null and resMap.srtsStr != '' ">
	  	<script type="text/javascript">
	  	 window.open("birthday.jsp?TB_iframe=true&height=500&width=800");
	  	</script>
	</s:if>
  	<iframe style="display: none;" src="<%=basePath%>login.jsp?temp_r=zl"></iframe>

	<div id="container">
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
		  	<a href="#" onclick="window.external.AddFavorite('<%=basePath%>', '北京禁毒信息网');" ><font color="white">加入收藏</font></a>
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
		    <a href="<%=basePath%>columnIndexView?column.c_lmdm=1355">总队简介</a>
		    <a href="http://www.xxzx.bj" target="_blank">信息查询</a> 
		    <a href="http://anquan.zx.bj" target="_blank">信息安全</a> 
		    <a href="newsCenterList?news.c_lm=12390&pageNo=1">视频在线</a> 
		    <a href="ftp://ftp.jdc.bj" target="_blank">工作交流</a> 
		    <a href="newsCenterList?news.c_lm=1291&pageNo=1">光荣榜</a> 
		    <a href="newsCenterList?news.c_lm=1214&pageNo=1" onMouseOver="mouseover(this, 1)" onmouseout="mouseout()">法律法规</a> 
		    <a href="newsCenterList?news.c_lm=1282&pageNo=1">毒品知识</a> 
		    <a href="newsCenterList?news.c_lm=1286&pageNo=1">纪检监察</a> 
		    <a href="http://www.jdc.bj:9001" target="_blank">旧站入口</a> 
		</div>
		
		<div class="menu-list" id="menu1" onmouseover="_mouseover()" onmouseout="_mouseout()">
		  <ul>
		      <li><a href="newsCenterList?news.c_lm=1305&pageNo=1"><span>法律汇编</span></a> </li>
		      <li><a href="newsCenterList?news.c_lm=1209&pageNo=1"><span>法规汇编</span></a> </li>
		      <li><a href="newsCenterList?news.c_lm=1307&pageNo=1"><span>规章汇编</span></a></li> 
		      <li><a href="newsCenterList?news.c_lm=1200&pageNo=1"><span>办案流程</span></a></li> 
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
					<s:property value="resMap.clxxStr"/>
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
							var focus_width = 519;
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
					<a href="newsCenterList?news.c_lm=1081&pageNo=1">更多&gt;&gt;</a>
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
					<div class="lddt_news_list">
						<div class="lddt_news_list_c" style="width:345px;">
							<div class="lddt_news_list_c_l" style="width:315px;">
								<img src="newimages/dote.gif" style="margin-top:6px;"/> 
								<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
									<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
										<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
									</s:if>
									<s:property value="#news.c_bt"/>
								</a>
							</div>
							<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
							  <img src="newimages/new.gif" style="margin-top: 1px;"/>
							</s:if>
						</div>
						<div class="lddt_news_list_d">
							<s:property value="#news.d_fbsj.substring(0,10)"/>
						</div>
					</div>
				</s:iterator>
				
			</div>
		</div>
		<%-- 
		<div id="pic_link_1">
			<div id="pic_link_1_list">
			
				<ul>
					<li><a href='newsCenterList?news.c_lm=1101&pageNo=1'><img src="newimages/list_3.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1105&pageNo=1'><img src="newimages/list_9.png" /></a></li>
				</ul>			
				<ul>
					<li><a href='newsCenterList?news.c_lm=1102&pageNo=1'><img src=newimages/list_4.png /></a></li>
				</ul>
				
				<ul>
					<li><a href='newsCenterList?news.c_lm=1107&pageNo=1'><img src="newimages/list_5.png" /></a></li>
				</ul>

				<ul>
					<li><a href='newsCenterList?news.c_lm=1103&pageNo=1'><img src="newimages/list_6.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1267&pageNo=1'><img src="newimages/list_8.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1106&pageNo=1'><img src="newimages/list_11.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1188&pageNo=1'><img src="newimages/list_10.png" /></a></li>
				</ul>
				
				
				<!-- 
				<ul>
					<li><a href='newsCenterList?news.c_lm=1190&pageNo=1'><img src="newimages/list_12.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1108&pageNo=1'><img src="newimages/list_1.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1100&pageNo=1'><img src="newimages/list_2.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1104&pageNo=1'><img src="newimages/list_7.png" /></a></li>
				</ul>

				<ul>
					<li><a href='newsCenterList?news.c_lm=1192&pageNo=1'><img src="newimages/list_13.png" /></a></li>
				</ul>
				<ul>
					<li><a href='newsCenterList?news.c_lm=1191&pageNo=1'><img src="newimages/list_14.png" /></a></li>
				</ul>

			</div>
		</div>
		--%>
		 
		<div id="jwgk_title"></div>
		<div id="jwgk_content">
			<div id="jwgk_content_left">
				<div class="jrzb_div" style="height:190px;">
					<div class="jrzb_title">
						<div class="jrzb_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">今日值班</div>
						</div>
					</div>
					<div style="padding-left: 10px; text-align: left;">
						<div style="line-height:20px; padding-top: 5px; vertical-align: top; ">
					
					<div onmouseover="MM_over(this)" onmouseout="MM_out(this)" style="position:relative;">
					
							<s:if test="resMap.zbbStr != null and resMap.zbbStr != '' ">
								<!-- <strong>值班信息：</strong>  -->
								<s:property escape="false" value="resMap.zbbStr"/>
							</s:if>
							<s:else>
								<strong>暂无值班信息</strong></br>
							</s:else>
							<div style="width:190px;height:200px;display:none;position:absolute;left:203;top:0px;z-inde:0;border-color: #A9CFE5;border-style: solid;border-width: 1px;">
							
							<% out.print(kqZbSvc.getJrZb());%>
							</div>
							</div>
						</div>
						<div style="margin-top: 5px; vertical-align: bottom;">
							<img alt="下载值班表" src="newimages/download.png" width="30" height="30">
							<a href="download.jsp" target="_blank" style=" height: 30px;padding-top: 8px;">点击下载值班表</a>
						</div>
					</div>
				</div>
				<%-- 
				<div class="jrzb_div" style="height:105px; background: url('newimages/birthday.png');">
					<div class="jrzb_title">
						<div class="jrzb_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">生日祝福</div>
						</div>
					</div>
					<div style="padding-left: 10px; padding-top: 15px; text-align: left;">
						<div>
						<s:if test="resMap.srtsStr != null and resMap.srtsStr != '' ">
							<strong>今日生日：</strong> 
							<s:property value="resMap.srtsStr"/>
						</s:if>
						<s:else>
							<strong>暂无生日祝福</strong>
						</s:else>
						</div>
						<s:if test="resMap.srtsStr != null and resMap.srtsStr != '' ">
						<div style="margin-top: 5px; vertical-align: center;">
							<img alt="生日祝福" src="newimages/download.png" width="30" height="30">
							<a href="birthday.jsp?TB_iframe=true&height=500&width=800" rel="sexylightbox[12]" title="祝：<s:property value='resMap.srtsStr'/>，生日快乐！" style="height: 30px;padding-top: 10px;"><font color="red" size="2px;">总队全体同仁祝你生日快乐</font></a>
						</div>
						</s:if>
						
					</div>
				</div>
				 --%>
				<div style="margin-top: 10px;">
					<div class="ztzl_img_div">
						<a href="newsCenterList?news.c_lm=1145&pageNo=1">
							<img src="newimages/zdzxx.png" />
						</a>
					</div>
					<div class="ztzl_img_div">
					<% 
					if(session.getAttribute("userId") != null && !"0".equals(session.getAttribute("userId"))){
					%>
						<a href="<%=basePath%>desktop/index.jsp?TB_iframe=true&height=400&width=600" rel="sexylightbox[22]" title="我的工作区（点击我的工作区以外的区域关闭窗口）">
							<img src="newimages/bgpt.png" />
						</a>
					<%
					} else {
					%>
						<img src="newimages/bgpt.png" />
					<%	
					}
					%>
				    </div>
				    <div class="ztzl_img_div"><a href="newsCenterList?news.c_lm=1272&pageNo=1" target="_blank"><img src="newimages/jywh.png" /></a></div>
					
				</div>
				
				
			</div>
			<div id="jwgk_content_center">
			
				<div class="jwgk_content_center_title">
					<div  class="select" id="showDivTitle_21" onmouseover="javascript:showDiv(2,1)">通知通报</div>
					<div id="showDivTitle_22" onmouseover="javascript:showDiv(2,2)">禁毒文件</div>

					<div class="more" id="showDivMore_21">
						<a href="newsCenterList?news.c_lm=1194&pageNo=1">更多&gt;&gt;</a>
					</div>
					
					<div class="more" id="showDivMore_22" style="display: none;">
						<a href="newsCenterList?news.c_lm=1197&pageNo=1">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="jwgk_content_center_content" id="showDivContent_21">
					
					<s:iterator value="resMap.tztbList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:415px;">
								<div class="lddt_news_list_c_l" style="width:380px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/>
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
	
				</div>
				
				<div class="jwgk_content_center_content" id="showDivContent_22" style="display: none;">
					
					<s:iterator value="resMap.jdwjList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:415px;">
								<div class="lddt_news_list_c_l" style="width:380px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/>
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
	
				</div>
			
				<div class="jwgk_content_center_title">
					<div class="select" id="showDivTitle_11"  onmouseover="javascript:showDiv(1,1)">队伍建设</div>
					<div id="showDivTitle_12" onmouseover="javascript:showDiv(1,2)">学习十八大</div>
					<div class="more" id="showDivMore_11">
						<a href="newsCenterList?news.c_lm=1196&pageNo=1">更多&gt;&gt;</a>
					</div>
					
					<div class="more" id="showDivMore_12" style="display: none;">
						<a href="newsCenterList?news.c_lm=1140&pageNo=1">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="jwgk_content_center_content" id="showDivContent_11">
					
					<s:iterator value="resMap.dwjsList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:415px;">
								<div class="lddt_news_list_c_l" style="width:380px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/>
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
	
				</div>
				
				<div class="jwgk_content_center_content" id="showDivContent_12" style="display: none;">
					
					<s:iterator value="resMap.xxsbdList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:415px;">
								<div class="lddt_news_list_c_l" style="width:380px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/>
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
	
				</div>
				
			</div>
			<div class="jwgk_content_right">
				<div class="ggl_div">
					<div class="ggl_title">
						<div class="ggl_title_content">						
							<div class="ggl_title_font">公告栏</div>
							<div class="jwgk_content_center_title_more">
								<a href="newsCenterList?news.c_lm=1200&pageNo=1">更多&gt;&gt;</a>
							</div>
						</div>					
					</div>
					<div id="link_logo" style="OVERFLOW: hidden; height:190px; width:208px; ">
					  <div id="link_logo1" style="OVERFLOW: hidden">
						
						 <s:iterator value="resMap.gglList" var="news">
							<li style="text-align: left; padding-top: 10px;">
								<a title="<s:property value="#news.c_bt"/>"href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank" style="text-align: left;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/>
									<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
										<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
									</s:if>
									<s:property value="#news.c_bt"/>
								</a>
							</li>
						</s:iterator>
						
					</div>
					<div id="link_logo2" style="height: 100%;"></div>
					  <script type="text/javascript">
						document.getElementById("link_logo2").innerHTML=document.getElementById("link_logo1").innerHTML;
					    function Marquee2(){
						  if(document.getElementById("link_logo2").offsetTop-document.getElementById("link_logo").scrollTop<=0){
							  document.getElementById("link_logo").scrollTop-=document.getElementById("link_logo1").offsetHeight;
						  }else{
							  document.getElementById("link_logo").scrollTop++;
						  }
						}
				        var MyMar2=setInterval(Marquee2,20);
					    document.getElementById("link_logo").onmouseover=function() {clearInterval(MyMar2)}
				        document.getElementById("link_logo").onmouseout=function() {MyMar2=setInterval(Marquee2,20)}
					  </script>
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
					<div style="width:193px; margin:0px auto;">
					<DIV class="menuNav">
					      <DIV id="SNmenuNav" class="navlist">
					        <DL style="background-image:url(newimages/qgdh.png) ; margin-top:4px;">
					       
					          <DD class="menv03">
							  
					            <UL class="sideleft">
					              <H3>全国导航</H3>
					              <LI class="noline">
					                <DIV>
					                	<s:iterator value="resMap.qgdhList" var="website">
					                		<A style="width: 120px;" title="<s:property value="#website.c_bt"/>" href="<s:property value="#website.c_lj"/>" target="_blank">
					                			<s:property value="#website.c_bt"/>
					                		</A> 
					                	</s:iterator>
					    			</DIV>
					                <SPAN class="clear"></SPAN>
					               </LI>
					              
					            </UL>
					        
					          </DD>
					        </DL>
							
					        <DL style="background-image:url(newimages/sjdh.png); margin-top:4px;"><DD class="menv04">
					          <UL class="sideleft">
					            <H3>市局导航</H3>
					            <LI class="noline">
					              <DIV>
				              		<s:iterator value="resMap.sjdhList" var="website">
				                		<A style="width: 120px;" title="<s:property value="#website.c_bt"/>" href="<s:property value="#website.c_lj"/>" target="_blank">
				                			<s:property value="#website.c_bt"/>
				                		</A> 
				                	</s:iterator>
					              </DIV>
					              <SPAN class="clear"></SPAN></LI>
					          </UL>
					           
					          </DD>
					        </DL>
					        <DL style="background-image:url(newimages/fjdh.png) ; margin-top:4px;"><DD class="menv05">
					          <UL class="sideleft">
					            <H3>分县局导航</H3>
					            <LI class="noline">
					              <DIV>
				              		<s:iterator value="resMap.fxjdhList" var="website">
				                		<A style="width: 120px;" title="<s:property value="#website.c_bt"/>" href="<s:property value="#website.c_lj"/>" target="_blank">
				                			<s:property value="#website.c_bt"/>
				                		</A> 
				                	</s:iterator>
					              </DIV>
					              <SPAN class="clear"></SPAN></LI>
					          </UL>
					          
					          </DD>
					        </DL>
					        <DL style="background-image:url(newimages/jddh.png) ; margin-top:4px;">
					          <DD class="menv05">
					            <UL class="sideleft">
					              <H3>禁毒导航</H3>
					              <LI class="noline">
					                  <DIV>
					              		<s:iterator value="resMap.jddhList" var="website">
					                		<A style="width: 120px;" title="<s:property value="#website.c_bt"/>" href="<s:property value="#website.c_lj"/>" target="_blank">
					                			<s:property value="#website.c_bt"/>
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
		</div>
		
		<div id="pic_link_2">
			<div id="swfContent"></div>
			<script type="text/javascript"> 
				var xmlData="<list><item><img>newimages/01.png</img><url></url></item><item><img>newimages/02.png</img><url></url></item><item><img>newimages/03.png</img><url></url></item></list>";
				var flashvars = {xmlData:xmlData};
				var params = {menu:false,wmode:"opaque"};
				var attributes = {};
				swfobject.embedSWF("flash/lanren.swf", "swfContent", "978", "70", "9","expressInstall.swf", flashvars, params, attributes);
			</script>
		</div>
		
		<div id="ztzl_title"></div>
		<div id="ztzl_content">
			
			<div id="ztzl_content_left">
			<div class="jrzb_div">
				<div class="jrzb_title">
					<div class="jrzb_title_content">
						<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
						<div class="jrzb_title_font">应用导航</div>
					</div>
				</div>				
				<div class="yydh_content_list">
					<ul>
						<li><a href="http://jdxt.jd.ga" target="_blank"><img src="newimages/dpaj.png" /></a></li>
					</ul>
					<ul>
						<li><a href="http://10.160.5.202" target="_blank"><img src="newimages/dyjl.png" /></a></li>
					</ul>
					<ul>
						<li><a href="http://10.5.72.20:8088/poppy"><img src="newimages/mbaj.png" /></a></li>
					</ul>
					<ul>
						<li><a href="http://10.8.58.39:9080/yzd" target="_blank"><img src="newimages/yzd.png" /></a></li>
					</ul>
					<ul>
						<li><a href="http://qbyp.jd.ga"><img src="newimages/qbyp.png" /></a></li>
					</ul>
				</div>
			</div>
				<div class="xxph_div" style="margin-top: 25px;">
						<div class="xxph_title_content">
							<div class="jrzb_title_img"><img src="newimages/content_title_img.png" /></div>
							<div class="jrzb_title_font">信息排行</div>
							<div class="jwgk_content_center_title_more"></div>
						</div>
						<div class="main-cons" style="height: 270px;">
							<div id="tabph">
								<div id="wrap">
									<div id="list">
										<div class="item">
											<div class="tab">
												<h5>
													<a href="<%=basePath%>newsSort" target="_blank">排行</a>
												</h5>
												<ul>
													<li class="tabcurrent">各区县分局</li>
													<li>总队各单位</li>
												</ul>
												<div style="display:none;">
													<span class="switchBtn"><a href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" class="prevNot">左</a><a
														href="#" class="next">右</a>
													</span>
												</div>
											</div>
											
											<ul class="items" style="display:block;">
											
											
												<s:iterator value="resMap.qxphList" id="news" var="news" status="status" begin="0" end="6">
													<li>
														<div style="float:left; margin-top: 3px; margin-left: 0px;">
															<img alt="" src="newimages/num<s:property value='#status.index+1'/>.png">
														</div>
														<div style="float:left; width:60px;">
															<a href="#"><s:property value="#news.c_fbdw"/>
															</a>
														</div>
														<div style="float:left; width:60px; margin-left:30px;">
															<a href="#"/>
															<s:property value="#news.n_xxxh"/>条
															</a>
														</div>
													</li>
												</s:iterator>
											<!-- 
												<li style="margin-top: -3px;">
													<div style="float:left; width:16px; margin-left: 0px;">
														<img alt="" src="newimages/num1.png">
													</div>
													<div style="float:left; width:60px;">
														<a href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>">东城分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">
														0条
														</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:16px; margin-left: 0px;">
														<img alt="" src="newimages/num2.png">
													</div>
													<div style="float:left; width:60px;">
														<a href="#">西城分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">朝阳分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">丰台分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">石景山分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">海淀分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>	
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">门头沟分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">燕山分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												 -->
												<!-- 
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">房山分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">通州分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">顺义分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">昌平分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">大兴分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">怀柔分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">平谷分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">密云分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												<li style="margin-top: -3px;">
													<div style="float:left; width:60px;">
														<a href="#">延庆分局</a>
													</div>
													<div style="float:left; width:60px; margin-left:30px;">
														<a href="#">0条</a>
													</div>
												</li>
												 -->
											</ul>
											
											<ul class="items">
												<s:iterator value="resMap.sjphList" id="news" var="news" status="status">
													<li>
														<div style="float:left; margin-top: 3px; margin-left: 0px;">
															<img alt="" src="newimages/num<s:property value='#status.index+1'/>.png">
														</div>
														<div style="float:left; width:80px;">
															<a href="#"><s:property value="#news.c_fbdw"/>
															</a>
														</div>
														<div style="float:left; width:40px; margin-left:30px;">
															<a href="#"/>
															<s:property value="#news.n_xxxh"/>条
															</a>
														</div>
													</li>
												</s:iterator>
											</ul>
											<ul><li style="text-align: right; margin-right: 5px;"><a  href="<%=basePath%>newsSort" >更多&gt;&gt;</a></li></ul>
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
					<div  class="select" id="showDivTitle_31" onmouseover="javascript:showDiv(3,1)">每日警情</div>
					<div id="showDivTitle_32" style="margin-left: 0px;" onmouseover="javascript:showDiv(3,2)">区县动态</div>

					<div class="more" id="showDivMore_31">
						<a href="newsCenterList?news.c_lm=1350&pageNo=1">更多&gt;&gt;</a>
					</div>
					
					<div class="more" id="showDivMore_32" style="display: none;">
						<a href="newsCenterList?news.c_lm=1351&pageNo=1">更多&gt;&gt;</a>
					</div>
					<!-- 
					<div class="ztzl_content_center_title_more">
						<a href="newsCenterList?news.c_lm=1193&pageNo=1">更多&gt;&gt;</a>
					</div>
					-->
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_31" >
					<s:iterator value="resMap.mrjqList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_center_content" id="showDivContent_32" style="display: none;" >
					<s:iterator value="resMap.qxdtList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_center_title" style="margin-top:2px;">
					<div class="select" id="showDivTitle_41" onmouseover="javascript:showDiv(4,1)">动态管控</div>
					<div id="showDivTitle_42" style="margin-left: 0px;" onmouseover="javascript:showDiv(4,2)">预防教育</div>
					<div class="more" id="showDivMore_41">
						<a href="newsCenterList?news.c_lm=1267&pageNo=1">更多&gt;&gt;</a>
					</div>
					<div class="more" id="showDivMore_42" style="display: none;">
						<a href="newsCenterList?news.c_lm=1188&pageNo=1">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_41">
					<s:iterator value="resMap.dtgkList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_center_content" id="showDivContent_42" style="display: none;">
					<s:iterator value="resMap.yfjyList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_center_title" style="margin-top:0px;">
					<div class="select" id="showDivTitle_71" onmouseover="javascript:showDiv(7,1)">场所管理</div>
					<div id="showDivTitle_72" style="margin-left: 0px;" onmouseover="javascript:showDiv(7,2)">两品管理</div>
					<div class="more" id="showDivMore_71">
						<a href="newsCenterList?news.c_lm=1146&pageNo=1">更多&gt;&gt;</a>
					</div>

					<div class="more" id="showDivMore_72" style="display: none;">
						<a href="newsCenterList?news.c_lm=1105&pageNo=1">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_71">
					<s:iterator value="resMap.csglList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_center_content" id="showDivContent_72" style="display: none;">
					<s:iterator value="resMap.lpglList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
			</div>
			
			<div id="ztzl_content_right">
				<div class="ztzl_content_right_title">
					<div class="select" id="showDivTitle_51" onmouseover="javascript:showDiv(5,1)">情报信息</div>
					<div id="showDivTitle_52" onmouseover="javascript:showDiv(5,2)">执法规范</div>
					<div id="showDivTitle_53" onmouseover="javascript:showDiv(5,3)">禁毒考核</div>
					<div class="more"  id="showDivMore_51">
						<a href="newsCenterList?news.c_lm=1101&pageNo=1">更多&gt;&gt;</a>
					</div>
					<div class="more" id="showDivMore_52" style="display: none;">
						<a href="newsCenterList?news.c_lm=1107&pageNo=1">更多&gt;&gt;</a>
					</div>
					<div class="more" id="showDivMore_53" style="display: none;">
						<a href="newsCenterList?news.c_lm=1108&pageNo=1">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_51">
					<s:iterator value="resMap.qbxxList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px; margin-left: 0px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px; margin-left: 0px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<div>
									<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
									  <img src="newimages/new.gif" style="margin-top: 3px;" alt="new"/>
									</s:if>
								</div>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_52" style="display: none;">
					<s:iterator value="resMap.zfgfList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px; margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px; margin-left: 0px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<div>
									<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
									  <img src="newimages/new.gif" style="margin-top: 3px;" alt="new"/>
									</s:if>
								</div>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_53" style="display: none;">
					<s:iterator value="resMap.jdkhList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px; margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px; margin-left: 0px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<div>
									<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
									  <img src="newimages/new.gif" style="margin-top: 3px;" alt="new"/>
									</s:if>
								</div>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="ztzl_content_right_title" style="margin-top:2px;">
					<div class="select" id="showDivTitle_61" onmouseover="javascript:showDiv(6,1)">目标案件</div>
					<div id="showDivTitle_62" onmouseover="javascript:showDiv(6,2)">打零收戒</div>
					<div id="showDivTitle_63" onmouseover="javascript:showDiv(6,3)">堵源截流</div>
					<div class="more"  id="showDivMore_61">
						<a href="newsCenterList?news.c_lm=1102&pageNo=1">更多&gt;&gt;</a>
					</div>
					<div class="more" id="showDivMore_62" style="display: none;">
						<a href="newsCenterList?news.c_lm=1103&pageNo=1">更多&gt;&gt;</a>
					</div>
					<div class="more" id="showDivMore_63" style="display: none;">
						<a href="newsCenterList?news.c_lm=1104&pageNo=1">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_61">
					<s:iterator value="resMap.mbajList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_62" style="display: none;">
					<s:iterator value="resMap.dlsjList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_center_content" id="showDivContent_63" style="display: none;">
					<s:iterator value="resMap.dyjlList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_right_title" style="margin-top:0px;">
					<div class="select" id="showDivTitle_81" onmouseover="javascript:showDiv(8,1)">调研交流</div>
					<div id="showDivTitle_82" onmouseover="javascript:showDiv(8,2)">领导讲话</div>
					<div id="showDivTitle_83" onmouseover="javascript:showDiv(8,3)">禁毒视角</div>
					<div class="more"  id="showDivMore_81">
						<a href="newsCenterList?news.c_lm=1352 &pageNo=1">更多&gt;&gt;</a>
					</div>
					<div class="more" id="showDivMore_82" style="display: none;">
						<a href="newsCenterList?news.c_lm=1353&pageNo=1">更多&gt;&gt;</a>
					</div>
					<div class="more" id="showDivMore_83" style="display: none;">
						<a href="newsCenterList?news.c_lm=1354&pageNo=1">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_81">
					<s:iterator value="resMap.dyjl2List" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="ztzl_content_center_content" id="showDivContent_82" style="display: none;">
					<s:iterator value="resMap.ldjhList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
				
				<div class="ztzl_content_center_content" id="showDivContent_83" style="display: none;">
					<s:iterator value="resMap.jdsjList" var="news">
						<div class="lddt_news_list">
							<div class="lddt_news_list_c" style="width:270px;margin-left: 2px;">
								<div class="lddt_news_list_c_l" style="width:240px;">
									<img src="newimages/dote.gif" style="margin-top:6px;"/> 
									<a title="<s:property value="#news.c_bt"/>" href="newsDetail?news.n_xh=<s:property value="#news.n_xh"/>" target="_blank">
										<s:if test="#news.c_tpljdz != null and #news.c_tpljdz != '' ">
											<img src="newimages/pictures.png" style="margin-top: 3px; height: 12px;" alt="图"/>
										</s:if>
										<s:property value="#news.c_bt"/>
									</a>
								</div>
								<s:if test="#news.d_fbsj.substring(0,10) == resMap.sysdate">
								  <img src="newimages/new.gif" style="margin-top: 1px;"/>
								</s:if>
							</div>
							<div class="lddt_news_list_d">
								<s:property value="#news.d_fbsj.substring(0,10)"/>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
			
			
			<div style="width: 962px;height: 82px; margin-buttom: 5px; margin-top: 0px;">

				<div id="wsbg">
					<a href="<%=basePath%>admin" target="_blank"><img src="newimages/wsbg.png" /></a>
				</div>
	
				<div style="margin-left: -10px; width: 740px;">
				<img src="newimages/wjfb_hy_qw_jh.png" usemap="#planetmap"/>
					<map name="planetmap" id="planetmap"> 
						<area shape="rect" coords="0,0,106,78" href="newsCenterList?news.c_lm=1140&pageNo=1" alt="文件发布"/>
						<area shape="rect" coords="106,0,216,78" href="newsCenterList?news.c_lm=1141&pageNo=1" alt="会议提示"/>
						<area shape="rect" coords="216,0,331,78" href="newsCenterList?news.c_lm=1142&pageNo=1" alt="勤务安排"/>
						<area shape="rect" coords="331,0,464,78" href="newsCenterList?news.c_lm=1186&pageNo=1" alt="文件交换"/>
						<area shape="rect" coords="464,0,588,78" href="newsCenterList?news.c_lm=1143&pageNo=1" alt="电视电话会议"/>
						<area shape="rect" coords="588,0,731,78" href="newsCenterList?news.c_lm=1144&pageNo=1" alt="会议室管理"/>
					</map> 
				</div>
		 	</div>
			
		</div>
		<div id="roll_image">

			<div class="ny2010">
				<div id="demo" style="overflow:hidden; width:976px; color:#333333; height:45px; display:inline; float:right;">
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
			
			document.getElementById("demo2").innerHTML=document.getElementById("demo1").innerHTML;
		    function Marquee(){
			  if(document.getElementById("demo2").offsetWidth-document.getElementById("demo").scrollLeft<=0){
				  document.getElementById("demo").scrollLeft-=document.getElementById("demo1").offsetWidth;
			  }else{
				  document.getElementById("demo").scrollLeft++;
			  }
			}
	        var MyMar=setInterval(Marquee,10);
		    document.getElementById("demo").onmouseover=function() {clearInterval(MyMar)}
	        document.getElementById("demo").onmouseout=function() {MyMar=setInterval(Marquee,10)}
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
				在线人数：2<br /> 信息总数：46033<br /> 总访问次数：10325
			</div>
		</div>
	</div>
  </body>
</html>
