<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String paths = request.getContextPath();
	String basePaths = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + paths + "/";

	session.setAttribute("userId", "10000");
%>
<link rel="stylesheet" type="text/css" href="<%=basePaths%>css/layout.css" />
<link rel="stylesheet" type="text/css" href="<%=basePaths%>css/index.css" />
<link href="<%=basePaths%>css/css.css" type=text/css rel=stylesheet />
<link href="<%=basePaths%>css/base.css" rel="stylesheet" type="text/css" />

<!-- 弹出窗 -->
<script type="text/javascript" src="<%=basePaths%>highslide/highslide-with-html.js" />
<link rel="stylesheet" type="text/css" href="<%=basePaths%>highslide/highslide.css" />
<!-- 弹出窗 -->

<script type="text/javascript">
	hs.graphicsDir = '../highslide/graphics/';
	hs.outlineType = 'rounded-white';
	hs.wrapperClassName = 'draggable-header';
</script>

<script type="text/javascript" src="<%=basePaths%>js/lightBox.js"></script>

<head>
<style type="text/css">
	body {
		font-size: 14px;
		background-image: url('<%=basePaths%>images/bg11.jpg');
		background-repeat: repeat;
	}
</style>
</head>

<script type="text/javascript">


	/*弹出内容*/
	function parahtml(url,width,height) {
		var htmls= '<iframe src="'+url+'" width='+width+' height='+height+' frameborder="0"></iframe>';
		return htmls;
	}
	function parahtml2(width,height) {
		var htmls='<div style="width='+width+' height='+height+'">联系人：黄园<Br />联系电话：<Br />邮箱地址：huangyuanaccp@163.com</div>';
		return htmls;
	}
	/*底部样式*/
	function fontbutton(index,mag) {
		var footerhtml
		if(mag==1)//选择按钮样式
		{
		 footerhtml='<input type="image" alt="Cancel" src="<%=basePaths%>images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';	
		}else {
			footerhtml='<input type="image" alt="Cancel" src="<%=basePaths%>images/send_button.gif" class="btn" onclick=alert("Sumbited!"); />';
			footerhtml+='<input type="image" alt="Cancel" src="<%=basePaths%>images/cancel_button.gif" class="btn" id="msg'
								+ index + 'cancel" />';
		}
		return footerhtml;
	}

	$(document).ready(function() {
		$("#three-pass-one").click(function() {
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

		$("#three-pass-two").click(function() {

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

		$("#three-pass-three").click(function() {

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

		date = "" + (today.getYear()) + "年" + (today.getMonth() + 1)
				+ "月" + today.getDate() + "日&nbsp;" + day;

		document.getElementById("timeShow").innerHTML = date;

	}
</script>


<% if(session.getAttribute("userId")!=null && session.getAttribute("userId")!="0"){ %>
	
<DIV class=selCity id=allCity style="display:none">
	<DIV class=area>
		<div class=bodydiv>
			<div class=headdiv>
				<div id="div1" class="headdivcenter">


					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/1.png  " />
						</div>
						<div class="font1" align="center">
							<a href="#"
								onclick='Box("msg1",900,600,parahtml("<%=basePaths%>desktop/index.jsp",900,600),fontbutton(1,1))'>我的桌面</a>
						</div>
					</div>

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/9.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePaths%>temp/news.jsp" onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">新闻管理</a>
						</div>
					</div>


					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/3.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePaths%>temp/car.jsp" onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">车辆管理</a>
						</div>
					</div>

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/8.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePaths%>temp/email.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">内部邮件</a>
						</div>
					</div>

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/2.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePaths%>temp/duty.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">考勤情况</a>
						</div>
					</div>


					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/4.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePaths%>temp/blog.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">工作日志</a>
						</div>
					</div>
					<!-- 
					<div class="topdiv">
					<div class="imgdiv"  >
					<img  class="imgdiv"   src="<!%=basePaths%>images/5.png  "/></div >
					<div   class="font1"  align="center"><a href="#" onclick='Box("msg5",900,600,parahtml(900,600),fontbutton(5,1));'>工作计划</a></div>
					</div>
					 -->

					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/6.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePaths%>temp/message.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">内部消息</a>
						</div>
					</div>



					<div class="topdiv">
						<div class="imgdiv">
							<img class="imgdiv" src="<%=basePaths%>images/7.png  " />
						</div>
						<div class="font1" align="center">
							<a href="<%=basePaths%>temp/nbyj.jsp"
								onclick="return hs.htmlExpand(this, { objectType: 'iframe' } )">手机短息</a>
						</div>
					</div>


				</div>
			</div>
		</div>

		<div class=none>
			<a id=foldin href="javascript:;">收起</a>
		</div>
	</div>
</div>
<div class=header>
	<div class=area>
		<div class=r>
			<div class="topCtiy clear">
				<ul>
					<LI class=i2 id=changeCity>我的工作区</LI>
				</ul>
			</div>
		</div>
	</div>
</div>

<%
} 
%>

<div id="container">
	<div
		style="width:1001px; height:25px; background-image:url(<%=basePaths%>images/headbg.jpg)">
		<div style="float:left; padding-top:4px; padding-left:20px;">
			<div id="timeShow"></div>
		</div>
		<div style="float:left; padding-top:4px; padding-left:20px;">限行尾号：<%=wh%></div>
		<div style="float:right; padding-top:4px; padding-right:10px;">
			<a href="#" onclick='Box("msg3",259,90,parahtml2(259,90),fontbutton(3,1));'>联系我们</a>
		</div>
		<div style="float:right; padding-top:8px; padding-right:2px;">
			<IMG src="<%=basePaths%>images/2.jpg" />
		</div>
		<div style="float:right; padding-top:4px;padding-right:10px;">
			<a onClick="window.external.AddFavorite(location.href,document.title)" style="cursor:hand;">收藏本站</a>
		</div>
		<div style="float:right; padding-top:7px; padding-right:2px;">
			<IMG src="<%=basePaths%>images/1.jpg" />
		</div>
		<div style="float:right; padding-top:4px;padding-right:10px;">
			<a href=# onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.alioooo.comt');">设为主页</a>
		</div>
		<div style="float:right; padding-top:7px; padding-right:2px;">
			<IMG src="<%=basePaths%>images/3.jpg" />
		</div>
	</div>
	<div id="header">
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="1000" height="126">
			<param name="movie" value="<%=basePaths%>images/top.swf" />
			<param name="quality" value="high" />
			<param name="wmode" value="opaque">
			<embed src="<%=basePaths%>images/top.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
				type="application/x-shockwave-flash" width="1000" height="126" wmode="opaque"></embed>
		</object>
	</div>
	<div class="clearfloat"></div>
	<div id="nav" style="background: url('<%=basePaths%>images/index/nav-bg.png') 0 -12px repeat-x;">
		<div style="padding: 0 20px;">
			<ul class="nav-ul">
				<li><a href="<%=basePaths%>" class="current">首 页</a>
				</li>
				<li class="middle"><a href="http://www.xxzx.bj/"
					target="_blank">信息查询</a>
				</li>
				<li class="middle"><a href="<%=basePaths%>news/center">新闻中心</a>
				</li>
				<li class="middle"><a href="http://10.8.1.135/" target="_blank">文件交换</a>
				</li>
				<li class="middle"><a
					href="<%=basePaths%>media/deploy/Video.jsp">视频在线</a>
				</li>
				<li class="middle"><a href="http://anquan.zx.bj"
					target="_blank">信息安全</a>
				</li>
				<li class="middle"><a href="<%=basePaths%>admin/index.jsp">内部专区</a>
				</li>
				<li class="middle"><a
					href="<%=basePaths%>news/list?news.c_lm=1286">警钟长鸣</a>
				</li>
				<li class="middle"><a
					href="<%=basePaths%>rydt.jsp">荣誉殿堂</a>
				</li>
				<li class="middle"><a
					href="<%=basePaths%>news/list?news.c_lm=12">禁毒情报</a>
				</li>
				<li class="middle"><a
					href="<%=basePaths%>news/list?news.c_lm=13">侦查破案 </a>
				</li>
				<li class="middle"><a
					href="<%=basePaths%>news/list?news.c_lm=1296"">学习园地</a>
				</li>

			</ul>
			<div class="clearfloat"></div>
		</div>
		<div style="background: url('<%=basePaths%>images/index/nav-bottom.png') 0 bottom repeat-x;height: 10px;">
		</div>
	</div>
</div>

