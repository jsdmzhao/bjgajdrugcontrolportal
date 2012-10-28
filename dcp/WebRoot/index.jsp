<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link type="text/css" rel="stylesheet" href="css/newCss.css"/>
	<LINK rel=stylesheet type=text/css href="newimages/szxue.css">
	<link rel="stylesheet" rev="stylesheet" href="css/comic.css" type="text/css" media="all" />
	<SCRIPT language=javascript src="newimages/jquery.js"></SCRIPT>
	<SCRIPT language=javascript src="newimages/szxue.js"></SCRIPT>
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
	<div id="banner_top">
	  <div id="favor"><img src="images/4.png" width="15" height="12" />设为首页&nbsp;<img src="images/2.png" width="18" height="14" />&nbsp;加入收藏</div>
  </div>
	<div id="banner_bottom">
	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="980" height="152">
        <param name="movie" value="flash/Banner.swf" />
        <param name="quality" value="high" />
        <embed src="Banner.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="980" height="152"></embed>
      </object>
  </div>
	<div>
	  <div class="channel-nav">
        <ul>
          <li ><a href='#'><span>首页</span></a></li>
          <li><a href='#'><span>信息查询</span></a></li>
          <li><a href='#'><span>信息安全</span></a></li>
          <li><a href='#'><span>视频在线</span></a></li>
          <li><a href='#'><span>工作交流</span></a></li>
          <li><a href='#'><span>光荣榜</span></a></li>
          <li><a href='#'><span>学习园地</span></a></li>
          <li><a href='#'><span>法律法规</span></a></li>
		         <li><a href='#'><span>警钟长鸣</span></a></li>
        </ul>
      </div>
	  <div id="search_bar" style=" background-image:url(images/focus_news_title_bg.png);"><div style="float:left; padding-top:5px;"><img src="images/3.png" width="16" height="16" />&nbsp;<strong>&nbsp;今天是：</strong>2012年10月29日&nbsp;&nbsp;&nbsp;&nbsp;星期五</div><div style="float:left; padding-top:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/12312.jpg" width="14" height="13" />&nbsp;&nbsp;<strong>限行尾号：</strong>&nbsp;&nbsp;****和****</div>
	<div style="float:right; width:270px;"><div style="float:left;"><form><input 
	onclick="if(this.value=='请输入您想搜索的内容')this.value=''" value="请输入您想搜索的内容"  type="text"  style="background-image:url(images/ss.png); border:0px; padding-left:35px; background-repeat:no-repeat; padding-top:5px;BORDER: #A9cfe5 1px solid;  height:18px; width:162px; "/><input type="button" 
 style="border:0px; margin-left:10px; height:24px; width:52px;background-image:url(images/ssb.png); padding-top:4px; " />
	 
	</form></div>
	</div>
	</div>
	<div id="dt_news">
		<div id="focus_news">
			<div>
			
			
			<div class="demo">
  <SCRIPT type=text/javascript>
        <!--
        var focus_width=549//图片宽
        var focus_height=368//图片高
        var text_height=0//设置显示文字标题高度,最佳为20（如果不显示标题值设为0即可）
        var swf_height = focus_height+text_height
        //var pics=""
        //var links=""
        //var texts=""
	var pics='images/01.jpg|images/02.jpg|images/03.jpg'
	var links='http://www.dw2f.com/|http://www.dw2f.com/|http://www.dw2f.com/'
	var texts='广告|广告|广告'

        document.write('<object ID="focus_flash" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
        document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/adplay.swf"><param name="quality" value="high"><param name="bgcolor" value="#6E0E02">');
        document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
        document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
        document.write('<embed ID="focus_flash" src="images/adplay.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#6E0E02" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');document.write('</object>'); 
        //-->
</SCRIPT>
</div>
			
			
			</div>
			<div id="focus_news_title">
				<div align="center" class="STYLE1 STYLE2" id="news_title1">全民参与禁毒，打击违法贩毒分子</div>
			</div>
		</div>
		<div id="lddt_news">
			<div id="lddt_news_title">
				<div id="focus_news_title_left">
					<div id="focus_news_title_left_img"><img src="images/arrow_lddt.png"/></div>
					领导动态
				</div>
				<div id="lddt_news_title_right">
				更多>>
				</div>
			</div>
			<div id="red_lddt_title_div">
				<div id="red_lddt_title">
					市委常委、市局局长傅政华等领导检查
				</div>
			</div>
			<div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div> 全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div>
			<div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div><div id="lddt_news_list">
				<div id="lddt_news_list_c" style="width:310px;">
					<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
				</div>
				<div id="lddt_news_list_d">
					2012-10-27
				</div>
			</div>
		</div>
	</div>
	<div id="pic_link_1">
		<div id="pic_link_1_list">
			<ul>
				<li><img src="images/lkjsc.png" /></li>
			</ul>
			<ul>
				<li><img src="images/zgjdtsc.png" /></li>
			</ul>
			<ul>
				<li><img src="images/qbxx.png" /></li>
			</ul>
			<ul>
				<li><img src="images/ddgj.png" /></li>
			</ul>
			<ul>
				<li><img src="images/dlsj.png" /></li>
			</ul>
			<ul>
				<li><img src="images/dyjl.png" /></li>
			</ul>
			<ul>
				<li><img src="images/dtgk.png" /></li>
			</ul>
			<ul>
				<li><img src="images/lpgl.png" /></li>
			</ul>
			<ul>
				<li><img src="images/yfjy.png" /></li>
			</ul>
			<ul>
				<li><img src="images/jwbz.png" /></li>
			</ul>
			<ul>
				<li><img src="images/zfgf.png" /></li>
			</ul>
		</div>
	</div>
	<div id="pic_link_2"></div>
	<div id="jwgk_title"></div>
	<div id="jwgk_content">
		<div id="jwgk_content_left">
			<div class="jrzb_div" style="height:105px;">
				<div class="jrzb_title">
					<div class="jrzb_title_content">
						<div class="jrzb_title_img"><img src="images/content_title_img.png" /></div>
						<div class="jrzb_title_font">今日值班</div>
					</div>
				</div>
			</div>
			<div class="jrzb_div" style="height:105px;">
				<div class="jrzb_title">
					<div class="jrzb_title_content">
						<div class="jrzb_title_img"><img src="images/content_title_img.png" /></div>
						<div class="jrzb_title_font">生日祝福</div>
					</div>
				</div>
			</div>
			<div class="jrzb_div">
				<div class="jrzb_title">
					<div class="jrzb_title_content">
						<div class="jrzb_title_img"><img src="images/content_title_img.png" /></div>
						<div class="jrzb_title_font">应用导航</div>
					</div>
				</div>				
				<div class="yydh_content_list">
					<ul>
						<li><img src="images/jdajglxt.png" /></li>
					</ul>
					<ul>
						<li><img src="images/xdrydtgkxt.png" /></li>
					</ul>
					<ul>
						<li><img src="images/gabjdqbypxt.png" /></li>
					</ul>
				</div>
			</div>
			<div id="wsbg">
					<img src="images/wsbg.png" />
			</div>
		</div>
		<div id="jwgk_content_center">
			<div class="jwgk_content_center_title">
				<div class="jwgk_content_center_title_font">通知通报</div>
				<div class="jwgk_content_center_title_more">更多>></div>
			</div>
			<div class="jwgk_content_center_content">
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>

			</div>
			<div class="jwgk_content_center_title">
				<div class="jwgk_content_center_title_font">队伍建设</div>
				<div class="jwgk_content_center_title_more">更多>></div>
			</div>
			<div class="jwgk_content_center_content">
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:390px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>

			</div>
		</div>
		<div id="jwgk_content_right">
			<div class="ggl_div">
				<div class="ggl_title">
					<div class="ggl_title_content">						
						<div class="ggl_title_font">公告栏</div>
						<div class="jwgk_content_center_title_more">更多>></div>
					</div>					
				</div>
				<div>
					<marquee direction="up" height="150px;">
						<div id="lddt_news_list_c" style="width:200px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_c" style="width:200px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_c" style="width:200px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_c" style="width:200px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
					</marquee>
				</div>
			</div>
			<div class="wldh_div">
				<div class="jrzb_title">
					<div class="jrzb_title_content">
						<div class="jrzb_title_img"><img src="images/content_title_img.png" /></div>
						<div class="jrzb_title_font">网络导航</div>
					</div>
				</div>
				<div class="yydh_content_list">
				<div style="width:193px; height:150px; margin:0px auto;">
<DIV class=menuNav>
      <DIV id=SNmenuNav class=navlist>
        <DL style="background-image:url(images/qgdh.png) ; margin-top:5px;">
       
          <DD class=menv03>
		  
            <UL class=sideleft>
              <H3>手机、配件</H3>
              <LI class=noline><B>手机</B>
                <DIV></DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>音频配件</B>
                <DIV></DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>充电配件</B>
                <DIV> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>数据配件</B>
                <DIV> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>手机饰品</B>
                <DIV></DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>车载配件</B>
                <DIV> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>苹果专区</B>
                <DIV></DIV>
                <SPAN class=clear></SPAN></LI>
            </UL>
        
          </DD>
        </DL>
		
		
		
		
		
		
        <DL style="background-image:url(images/sjdh.png); margin-top:5px;"><DD class=menv04>
          <UL class=sideleft>
            <H3>数码影像</H3>
            <LI class=noline><B>摄影摄像</B>
              <DIV><A title=数码相机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20063_.html" 
    target=_blank>数码相机</A> <A title=数码摄像机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_196502_.html" 
    target=_blank>数码摄像机</A> <A title=单反相机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20064_.html" 
    target=_blank>单反相机</A> </DIV>
              <SPAN class=clear></SPAN></LI>
            <LI><B>单反配件</B>
              <DIV><A title=单反镜头 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20068_.html" 
    target=_blank>单反镜头</A> <A title=闪光灯 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20070_.html" 
    target=_blank>闪光灯</A> <A title=滤镜 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20073_.html" 
    target=_blank>滤镜</A> <A title=三脚架/云台 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_198504_.html" 
    target=_blank>三脚架/云台</A> <A title=镜头附件 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_199003_.html" 
    target=_blank>镜头附件</A> <A title=手柄 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20075_.html" 
    target=_blank>手柄</A> <A title=单反其他配件 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_31002_.html" 
    target=_blank>单反其他配件</A> </DIV>
              <SPAN class=clear></SPAN></LI>
            <LI><B>照摄配件</B>
              <DIV><A title=摄影包 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_199004_.html" 
    target=_blank>摄影包</A> <A title=电池/充电器 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_199501_.html" 
    target=_blank>电池/充电器</A> <A title=存储卡 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_25507_.html" 
    target=_blank>存储卡</A> <A title=录像带 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_179002_.html" 
    target=_blank>录像带</A> <A title=读卡器 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_177501_.html" 
    target=_blank>读卡器</A> <A title=反光板 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_167503_.html" 
    target=_blank>反光板</A> <A title=液晶膜 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20086_.html" 
    target=_blank>液晶膜</A> <A title=摄影灯 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_168001_.html" 
    target=_blank>摄影灯</A> <A title=配件套装 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20088_.html" 
    target=_blank>配件套装</A> <A title=清洁工具 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_167505_.html" 
    target=_blank>清洁工具</A> </DIV>
              <SPAN class=clear></SPAN></LI>
          </UL>
           
          </DD>
        </DL>
        <DL style="background-image:url(images/fjdh.png) ; margin-top:5px;"><DD class=menv05>
          <UL class=sideleft>
            <H3>电子影音、汽车用品</H3>
            <LI class=noline><B>播放器</B>
              <DIV><A title=MP3 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20091_.html" 
    target=_blank>MP3</A> <A title=MP4 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20092_.html" 
    target=_blank>MP4</A> <A title=数码相框 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_25001_.html" 
    target=_blank>数码相框</A> <A title=移动电视 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20093_.html" 
    target=_blank>移动电视</A> <A title=播放器配件 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_185501_.html" 
    target=_blank>播放器配件</A> </DIV>
              <SPAN class=clear></SPAN></LI>
            <LI><B>耳机/耳麦</B>
              <DIV><A title=耳机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20110_.html" 
    target=_blank>耳机</A> <A title=耳麦 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20111_.html" 
    target=_blank>耳麦</A> </DIV>
              <SPAN class=clear></SPAN></LI>
            <LI><B>汽车用品</B>
              <DIV><A title=车载GPS 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20412_.html" 
    target=_blank>车载GPS</A> <A title=车载冷暖箱 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_180003_.html" 
    target=_blank>车载冷暖箱</A> <A title=美容/养护 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174502_.html" 
    target=_blank>美容/养护</A> <A title=充气/吸尘 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_175502_.html" 
    target=_blank>充气/吸尘</A> <A title=车载电器 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_175501_.html" 
    target=_blank>车载电器</A> <A title=电源/插座 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174504_.html" 
    target=_blank>电源/插座</A> <A title=香水/净化 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174506_.html" 
    target=_blank>香水/净化</A> <A title=座垫/内饰 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174503_.html" 
    target=_blank>座垫/内饰</A> <A title=儿童安全座椅 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174505_.html" 
    target=_blank>儿童安全座椅</A> <A title=其他装饰用品 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174508_.html" 
    target=_blank>其他装饰用品</A> </DIV>
              <SPAN class=clear></SPAN></LI>
            <LI><B>电子教育</B>
              <DIV><A title=复读机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_25502_.html" 
    target=_blank>复读机</A> <A title=手写板 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_165005_.html" 
    target=_blank>手写板</A> <A title=点读机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20104_.html" 
    target=_blank>点读机</A> <A title=学习机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20105_.html" 
    target=_blank>学习机</A> <A title=电子辞典 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20106_.html" 
    target=_blank>电子辞典</A> <A title=电纸书 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20107_.html" 
    target=_blank>电纸书</A> </DIV>
              <SPAN class=clear></SPAN></LI>
            <LI><B>电玩游戏</B>
              <DIV><A title=望远镜 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_25503_.html" 
    target=_blank>望远镜</A> <A title=跳舞毯 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_111502_.html" 
    target=_blank>跳舞毯</A> <A title=游戏机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20101_.html" 
    target=_blank>游戏机</A> </DIV>
              <SPAN class=clear></SPAN></LI>
            <LI><B>收录设备</B>
              <DIV><A title=录音笔 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20095_.html" 
    target=_blank>录音笔</A> <A title=收录机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20096_.html" 
    target=_blank>收录机</A> </DIV>
              <SPAN class=clear></SPAN></LI>
          </UL>
          
          </DD>
        </DL>
        <DL style="background-image:url(images/jddh.png) ; margin-top:5px;">
          <DD class=menv05>
            <UL class=sideleft>
              <H3>电子影音、汽车用品</H3>
              <LI class=noline><B>播放器</B>
                  <DIV><A title=MP3 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20091_.html" 
    target=_blank>MP3</A> <A title=MP4 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20092_.html" 
    target=_blank>MP4</A> <A title=数码相框 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_25001_.html" 
    target=_blank>数码相框</A> <A title=移动电视 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20093_.html" 
    target=_blank>移动电视</A> <A title=播放器配件 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_185501_.html" 
    target=_blank>播放器配件</A> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>耳机/耳麦</B>
                  <DIV><A title=耳机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20110_.html" 
    target=_blank>耳机</A> <A title=耳麦 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20111_.html" 
    target=_blank>耳麦</A> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>汽车用品</B>
                  <DIV><A title=车载GPS 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20412_.html" 
    target=_blank>车载GPS</A> <A title=车载冷暖箱 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_180003_.html" 
    target=_blank>车载冷暖箱</A> <A title=美容/养护 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174502_.html" 
    target=_blank>美容/养护</A> <A title=充气/吸尘 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_175502_.html" 
    target=_blank>充气/吸尘</A> <A title=车载电器 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_175501_.html" 
    target=_blank>车载电器</A> <A title=电源/插座 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174504_.html" 
    target=_blank>电源/插座</A> <A title=香水/净化 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174506_.html" 
    target=_blank>香水/净化</A> <A title=座垫/内饰 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174503_.html" 
    target=_blank>座垫/内饰</A> <A title=儿童安全座椅 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174505_.html" 
    target=_blank>儿童安全座椅</A> <A title=其他装饰用品 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_174508_.html" 
    target=_blank>其他装饰用品</A> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>电子教育</B>
                  <DIV><A title=复读机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_25502_.html" 
    target=_blank>复读机</A> <A title=手写板 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_165005_.html" 
    target=_blank>手写板</A> <A title=点读机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20104_.html" 
    target=_blank>点读机</A> <A title=学习机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20105_.html" 
    target=_blank>学习机</A> <A title=电子辞典 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20106_.html" 
    target=_blank>电子辞典</A> <A title=电纸书 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20107_.html" 
    target=_blank>电纸书</A> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>电玩游戏</B>
                  <DIV><A title=望远镜 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_25503_.html" 
    target=_blank>望远镜</A> <A title=跳舞毯 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_111502_.html" 
    target=_blank>跳舞毯</A> <A title=游戏机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20101_.html" 
    target=_blank>游戏机</A> </DIV>
                <SPAN class=clear></SPAN></LI>
              <LI><B>收录设备</B>
                  <DIV><A title=录音笔 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20095_.html" 
    target=_blank>录音笔</A> <A title=收录机 
    href="http://www.dw2f.comwebapp/wcs/stores/servlet/trd_10052_10051_1_20096_.html" 
    target=_blank>收录机</A> </DIV>
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
		<img src="images/wjfb_hy_qw_jh.png" />
		</div>
	</div>
	<div id="ztzl_title"></div>
	<div id="ztzl_content">
		<div id="ztzl_content_left">
			<div class="ztzl_img_div"><img src="images/zdzxx.png" /></div>
			<div class="ztzl_img_div"><img src="images/bgpt.png" /></div>
			<div class="xxph_div">
					<div class="xxph_title_content">
						<div class="jrzb_title_img"><img src="images/content_title_img.png" /></div>
						<div class="jrzb_title_font">信息排行</div>
						<div class="jwgk_content_center_title_more">更多>></div>
					</div>
					<div id="xxph_content">
						<ul>
							<li>
								<div class="xxphk_list_img_red"><div class="xxph_font">1</div></div>
								<div class="xxphk_list_font">缉控大队</div>
								<div class="xxphk_list_num">381条</div>
								<div class="xxphk_list_img_red"><div class="xxph_font">2</div></div>
								<div class="xxphk_list_font">缉控大队</div>
								<div class="xxphk_list_num">381条</div>
								<div class="xxphk_list_img_red"><div class="xxph_font">3</div></div>
								<div class="xxphk_list_font">缉控大队</div>
								<div class="xxphk_list_num">381条</div>
								<div class="xxphk_list_img_blue"><div class="xxph_font">4</div></div>
								<div class="xxphk_list_font">缉控大队</div>
								<div class="xxphk_list_num">381条</div>
								<div class="xxphk_list_img_blue"><div class="xxph_font">5</div></div>
								<div class="xxphk_list_font">缉控大队</div>
								<div class="xxphk_list_num">381条</div>
								<div class="xxphk_list_img_blue"><div class="xxph_font">6</div></div>
								<div class="xxphk_list_font">缉控大队</div>
								<div class="xxphk_list_num">381条</div>
								<div class="xxphk_list_img_blue"><div class="xxph_font">7</div></div>
								<div class="xxphk_list_font">缉控大队</div>
								<div class="xxphk_list_num">381条</div>
							</li>
						</ul>
					</div>
			</div>
		</div>
		<div id="ztzl_content_center">
			<div class="ztzl_content_center_title">
				<div class="ztzl_content_center_title_font">禁毒动态</div>
				<div class="ztzl_content_center_title_more">更多>></div>
			</div>
			<div class="ztzl_content_center_content">
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
			</div>
			<div class="ztzl_content_center_title" style="margin-top:20px;">
				<div class="ztzl_content_center_title_font">禁毒文件</div>
				<div class="ztzl_content_center_title_more">更多>></div>
			</div>
			<div class="ztzl_content_center_content">
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:260px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
			</div>
		</div>
		
		<div id="ztzl_content_right">
			<div class="ztzl_content_right_title">
				<div class="ztzl_content_rigth_title_font">区县警讯</div>
				<div class="ztzl_content_center_title_more">更多>></div>
			</div>
			<div class="ztzl_content_center_content">
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
			</div>
			<div class="ztzl_content_right_title" style="margin-top:20px;">
				<div class="ztzl_content_rigth_title_font">媒体关注</div>
				<div class="ztzl_content_center_title_more">更多>></div>
			</div>
			<div class="ztzl_content_center_content">
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
					<div id="lddt_news_list">
						<div id="lddt_news_list_c" style="width:240px;">
							<div id="squaree">■</div>全市发展和改革工作会议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开议暨“十二五”规划座谈会召开
						</div>
						<div id="lddt_news_list_d">
							2012-10-27
						</div>
					</div>
			</div>
		</div>
	</div>
	<div id="roll_image"></div>
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
