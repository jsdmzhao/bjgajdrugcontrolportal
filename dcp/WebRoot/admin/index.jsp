﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

if(session.getAttribute("userId")==null||session.getAttribute("userId")=="0"){
	%>
	<script> 
	
	window.location.href="<%=basePath%>admin/login.jsp";
	
	</script>
	<%
	
}else{

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<base href="<%=basePath%>">
		<title>北京禁毒网站后台管理</title>
		<link
			href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css"
			rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css"
			rel="stylesheet" type="text/css" />
		<script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerTab.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerLayout.js"
			type="text/javascript"></script>
		<link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>liger/lib/css/index.css" rel="stylesheet"
			type="text/css" />
		<script src="<%=basePath%>liger/lib/js/common.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/login.js"
			type="text/javascript"></script>

		<script
			src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js"
			type="text/javascript"></script>
		<script
			src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/jquery-validation/messages_cn.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/changepassword.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js"
			type="text/javascript"></script>
			    <script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/SysUserSvc.js'></script>
	<script type='text/javascript'
	src='<%=basePath%>dwr/interface/SysMenuSvc.js'></script>
	
<script type="text/javascript">
	$("#home").attr("src","<%=basePath%>admin/welcome.jsp?date='+new Date()+'") ;
</script>

</head>
	<body
		style="text-align: center; background: #F0F0F0; overflow: hidden;">
		<div id="pageloading" style="display: block;"></div>
		<div id="topmenu" class="l-topmenu">
			<div class="l-topmenu-logo">
				北京禁毒网站后台管理
			</div>
			<div class="l-topmenu-welcome">
				<span class="l-topmenu-username"></span>欢迎您 &nbsp; <%=session.getAttribute("cXm") %>[
				<a href="javascript:f_changepassword()">修改密码</a>] &nbsp; [
				<a href="javascript:f_login()">切换用户</a>] [
				<a href="<%=basePath%>admin/login.jsp?Action=out">退出</a>]
			</div>

		</div>
		<div id="mainbody" class="l-mainbody"
			style="width: 99.2%; margin: 0 auto; margin-top: 3px;">
			<div position="left" title="主要菜单" id="mainmenu"></div>
			<div position="center" id="framecenter">
				<div tabid="home" title="我的主页">
			<iframe frameborder="0" name="home" id="home" src="<%=basePath%>admin/welcome.jsp"></iframe>
				</div>
			</div>
		</div>
		<script type="text/javascript">
        //几个布局的对象
        var layout, tab, accordion;
        //tabid计数器，保证tabid不会重复
        var tabidcounter = 0;
        //dialog对象
        var lDialog;
        //窗口改变时的处理函数
        function f_heightChanged(options) {
            if (tab)
                tab.addHeight(options.diff);
            if (accordion && options.middleHeight - 24 > 0)
                accordion.setHeight(options.middleHeight - 24);
        }
        //增加tab项的函数
        function f_addTab(tabid, text, url) {
            if (!tab) return;
            if (!tabid)
            {
                tabidcounter++;
                tabid = "tabid" + tabidcounter; 
            }
            tab.addTabItem({ tabid: tabid, text: text, url: url });
        }
        
        //刷寻tab项的函数
        function f_reLoadTab(tabid) {
            if (!tab) return;
            if (!tabid)
            {
            	 tabid = $("#framecenter > .l-tab-content > .l-tab-content-item:visible").attr("tabid");
            }
            tab.reload(tabid);
        }

        //增加dialog的函数
        function f_openDialog(dialogId, title, url) {
            lDialog=$.ligerDialog.open({ title : title ,url: url, height: 400,width: 750});
        }

      //关闭dialog的函数
        function f_closeDialog() {
            lDialog.close();
        }
        
        //登录
        function f_login()
        {
            LG.login();
        }
        //修改密码
        function f_changepassword()
        {
            LG.changepassword();
        }
        $(document).ready(function ()
        {

            //菜单初始化
            $("ul.menulist li").live('click', function ()
            {
                var jitem = $(this);
                var tabid = jitem.attr("tabid");
                var url = jitem.attr("url");
                if (!url) return;
                if (!tabid)
                {
                    tabidcounter++;
                    tabid = "tabid" + tabidcounter;
                    jitem.attr("tabid", tabid);

                    //给url附加menuno
                    if (url.indexOf('?') > -1) url += "&";
                    else url += "?";
                    url += "MenuNo=" + jitem.attr("menuno");
                    jitem.attr("url", url);
                }
                f_addTab(tabid, $("span:first", jitem).html(), url);
            }).live('mouseover', function ()
            {
                var jitem = $(this);
                jitem.addClass("over");
            }).live('mouseout', function ()
            {
                var jitem = $(this);
                jitem.removeClass("over");
            });

            //布局初始化 
            //layout
            layout = $("#mainbody").ligerLayout({ height: '100%', heightDiff: -3, leftWidth: 140, onHeightChanged: f_heightChanged, minLeftWidth: 120 });
            var bodyHeight = $(".l-layout-center:first").height();
            //Tab
            tab = $("#framecenter").ligerTab({ height: bodyHeight, contextmenu: true });


            //预加载dialog的背景图片
            LG.prevDialogImage();
            var mainmenu = $("#mainmenu");
           var menus;
           function f_menu()
	        {
   	           var obj={userId : '<%=session.getAttribute("userId")%>'};
        	   SysMenuSvc.queryUserMenu(obj, function(rdata) {
					if (rdata) {
						menus =rdata;
					     $(menus).each(function (i, menu)
					                {
					                    var item = $('<div title="' + menu.MenuName + '"><ul class="menulist"></ul></div>');
										
					                    $(menu.children).each(function (j, submenu)
					                    {
					                        var subitem = $('<li><img/><span></span><div class="menuitem-l"></div><div class="menuitem-r"></div></li>');
					                      
					                        var menuUrl=submenu.MenuUrl;
					                        if(menuUrl){
					                        if(menuUrl){
												if(menuUrl.indexOf("?") > 0){
													menuUrl=menuUrl+"&userId=<%=session.getAttribute("userId")%>";
					        	                    } else{
					        	                    	menuUrl=menuUrl+"?userId=<%=session.getAttribute("userId")%>";
					        	                    }
												}
					                        }
					                        
					                        subitem.attr({
					                            url: menuUrl,
					                            menuno: submenu.MenuNo
					                        });
					                        $("img", subitem).attr("src", submenu.MenuIcon || submenu.icon);
					                        $("span", subitem).html(submenu.MenuName || submenu.text);

					                        $("ul:first", item).append(subitem);
					                    });
					                    mainmenu.append(item);

					                });
				                //Accordion
				                accordion = $("#mainmenu").ligerAccordion({ height: bodyHeight - 24, speed: null });



				                $("#pageloading").hide();
						
					} else {
						LG.showError('菜单获取失败');
					}
				});
	        }
           f_menu();
      
            

        });
    </script>
	</body>
</html>
<%}%>