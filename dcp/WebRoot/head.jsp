<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>	
<%
String paths = request.getContextPath();
String basePaths = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+paths+"/";
%>

<%
GregorianCalendar d =new GregorianCalendar();
int week=d.get(Calendar.DAY_OF_WEEK);
String wh="";
     if ( week==1){wh="3和8";} 
else if ( week==2){wh="4和9";}
else if ( week==3){wh="5和0";}
else if ( week==4){wh="1和6";}
else if ( week==5){wh="2和7";}
else {wh="无停驶尾号";}
%>
 <script language="javascript">
 jQuery(function(){
		$("#changeCity").click(function(a){$("#allCity").slideDown(300);
		a.stopPropagation();$(this).blur()});
		$("#allCity").click(function(a){a.stopPropagation()});
		//$(document).click(function(a){a.button!=2&&$("#allCity").slideUp(300)});
		$("#foldin").click(function(){$("#allCity").slideUp(300)})
	    });
 $(document).ready(function (){
	    var nScrollHight = 0; 
	    var nScrollTop = 0;  
	    var nDivHight = $("#div1").height();
	    $("#div1").scroll(function(){
	        nScrollHight = $(this)[0].scrollHeight;
	        nScrollTop = $(this)[0].scrollTop;
	        if(nScrollTop + nDivHight >= nScrollHight)
	        {;} 
	     });
	    
	  });
 
     var t = null;
    t = setTimeout(time,1000);
    function time()
    {
    	var enabled = 0;

    	today = new Date();
    	 
    	if(today.getDay()==0) day = "星期日"
    	 
    	if(today.getDay()==1) day = "星期一"
    	 
    	if(today.getDay()==2) day = "星期二"
    	 
    	if(today.getDay()==3) day = "星期三"
    	 
    	if(today.getDay()==4) day = "星期四"
    	 
    	if(today.getDay()==5) day = "星期五"

    	if(today.getDay()==6) day = "星期六"
    	 
    	date = "现在时间是："+(today.getYear())  + "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日&nbsp;" + day;
    	
       document.getElementById("timeShow").innerHTML =  date;
                
    } 
  </script>
<DIV class=selCity id=allCity style="display:none" >
<DIV class=area>
<div  class=bodydiv>
<div  class=headdiv>
<div id="div1"  class="headdivcenter">


<div  class="topdiv">
<div   class="imgdiv" >
<img   class="imgdiv"  src="<%=basePaths%>/images/1.png  "/></div >
<div   class="font1"  align="center"><a href="#"  onclick='Box("msg1",900,600,parahtml("<%=basePaths %>desktop/index.jsp",900,600),fontbutton(1,1));' >我的桌面</a></div>
</div>

<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/9.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg9",900,600,parahtml("<%=basePaths %>temp/news.jsp",900,600),fontbutton(9,1));'>新闻管理</a></div>
</div>


<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/3.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg3",900,600,parahtml("<%=basePaths %>temp/car.jsp",900,600),fontbutton(3,1));' >车辆管理</a></div>
</div>

<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/8.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg8",900,600,parahtml("<%=basePaths %>temp/nbyj.jsp",900,600),fontbutton(8,1));'>内部邮件</a></div>
</div>

<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/2.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg2",900,600,parahtml("<%=basePaths %>temp/kaoqin.jsp",900,600),fontbutton(2,1));' >考勤情况</a></div>
</div>


<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/4.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg4",900,600,parahtml("<%=basePaths %>temp/gzrz.jsp",900,600),fontbutton(4,1));'>工作日志</a></div>
</div>
<!-- 
<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/5.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg5",900,600,parahtml(900,600),fontbutton(5,1));'>工作计划</a></div>
</div>
 -->

<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/6.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg6",900,600,parahtml("<%=basePaths %>temp/nbyj.jsp",900,600),fontbutton(6,1));'>内部消息</a></div>
</div>



<div class="topdiv">
<div class="imgdiv"  >
<img  class="imgdiv"   src="<%=basePaths%>/images/7.png  "/></div >
<div   class="font1"  align="center"><a href="#" onclick='Box("msg7",900,600,parahtml("<%=basePaths %>temp/nbyj.jsp",900,600),fontbutton(7,1));'>手机短息</a></div>
</div>


</div>
</div>
</div>
	
<DIV class=none><A id=foldin href="javascript:;">收起</A></DIV></DIV></DIV>
<DIV class=header>
	<DIV class=area>
		<DIV class=r>
			<DIV class="topCtiy clear">
			  <UL>
				
				  <LI class=i2 id=changeCity>选择内容</LI>
				</UL>
		  </DIV>
		</DIV>
	</DIV>
</DIV>


		<div id="container">
		    <div style="width:1001px; height:25px; background-image:url(<%=basePaths%>/images/headbg.jpg)">
			<div style="float:left; padding-top:4px; padding-left:20px;"><div id="timeShow"></div></div>
		<div style="float:left; padding-top:4px; padding-left:20px;">今日限行尾号：<%=wh %></div>
			<div style="float:right; padding-top:4px; padding-right:10px;"><a  href="#" onclick='Box("msg3",259,90,parahtml2(259,90),fontbutton(3,1));'>联系我们</a></div>
				<div style="float:right; padding-top:8px; padding-right:2px;"> <IMG src="<%=basePaths%>/images/2.jpg" /></div>
			<div style="float:right; padding-top:4px;padding-right:10px;"><a onClick="window.external.AddFavorite(location.href,document.title)" style="cursor:hand;">收藏本站</a></div>
					<div style="float:right; padding-top:7px; padding-right:2px;"> <IMG src="<%=basePaths%>/images/1.jpg" /></div>
			<div style="float:right; padding-top:4px;padding-right:10px;"> <a href=# onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.alioooo.comt');">设为主页</a></div>
					<div style="float:right; padding-top:7px; padding-right:2px;"> <IMG src="<%=basePaths%>/images/3.jpg" /></div>
			</div>
			<div id="header">
				
		
				<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" 
				width="1000" height="126">
                              <param name="movie" value="<%=basePaths%>images/top.swf" />
                              <param name="quality" value="high" />
                              <param name="wmode" value="opaque">
                              <embed src="<%=basePaths%>images/top.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" 
                width="1000" height="126" wmode="opaque"></embed>
			     </object>
			    
			</div>
			<div class="clearfloat"></div>
			<div id="nav" style="background: url('<%=basePaths%>/images/index/nav-bg.png') 0 -12px repeat-x;">
				<div style="padding: 0 20px;">
					<ul class="nav-ul">
						<li><a href="index.jsp" class="current">首 页</a></li>
						<li class="middle"><a href="#">机构设置</a></li>
						<li class="middle"><a href="#">新闻中心</a></li>
					    <li class="middle"><a href="#">电话查询</a></li>
						<li class="middle"><a href="#">视频在线</a></li>
						<li class="middle"><a href="#">信息安全</a></li>
						<li class="middle"><a href="#">内部专区</a></li>
						<li class="middle"><a href="#">警钟长鸣</a></li>
						<li class="middle"><a href="#">上传下载</a></li>
						<li class="middle"><a href="#">情报信息</a></li>
						<li class="middle"><a href="#">侦查破案 </a></li>
						<li class="middle"><a href="#">学习园地</a></li>
					
					</ul>
					<div class="clearfloat"></div>
				</div>
				<div style="background: url('<%=basePaths%>/images/index/nav-bottom.png') 0 bottom repeat-x;height: 10px;">
				</div>
			</div>
			</div>
