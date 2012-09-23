<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" /> 
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerResizable.js" type="text/javascript"></script>
           <script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/WdzmSvc.js'></script>
	<script type='text/javascript'
	src='<%=basePath%>dwr/interface/ZmcdSvc.js'></script>
		
    <style type="text/css">
        .l-case-title
        {
            font-weight: bold;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        body, html
        {
            width: 100%;
            height: 100%;
        }
        *
        {
            margin: 0;
            padding: 0;
        }
        #winlinks
        {
            position: absolute;
            left: 20px;
            top: 20px;
            width: 100%;
        }
        #winlinks ul
        {
            position: relative;
        }
        #winlinks li
        {
            width: 70px;
            cursor: pointer;
            height: 80px;
            position: absolute;
            z-index: 101;
            list-style: none;
            text-align: center;
        }
        #winlinks li img
        {
            width: 36px;
            height: 36px;
        }
        #winlinks li span
        {
            background: none repeat scroll 0 0 rgba(0, 0, 0, 0.3);
            border-radius: 10px 10px 10px 10px;
            display: block;
            font-size: 12px;
            margin-top: 1px;
            color: White;
            line-height: 18px;
            text-align: center;
        }
        #winlinks li.l-over div.bg
        {
            display: block;
        }
        #winlinks li div.bg
        {
            display: none;
            position: absolute;
            top: -2px;
            left: -2px;
            z-index: 0;
            width: 75px;
            height: 64px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            background: #000;
            opacity: 0.1;
            filter: alpha(opacity=10);
        }
        .l-taskbar-task-icon
        {
            top: 3px; left: 6px; background-image:none;
        } 
        .l-taskbar-task-content{ margin-left:30px;}
        .l-taskbar-task-icon img
        {
            width: 22px;
            height: 22px;
        }
    </style>
</head>
<body style="overflow: hidden; background: url(images/applebg.jpg) no-repeat  center center;">
    <div id="winlinks">
        <ul>
        </ul>
    </div>
</body>
<script type="text/javascript">
  var obj={userId:'<%=session.getAttribute("userId")%>'};
  var cdList;
    DWREngine.setAsync(false);  
	WdzmSvc.queryCd(obj,function(cdData){
	cdList=cdData;
	});
	
	var links=new Array();
	for(var i=0;i<cdList.length;i++){
		links[i]={};
		links[i].icon=cdList[i].cTb;
		links[i].title=cdList[i].cZdymc;
		links[i].url='<%=basePath%>'+cdList[i].cLj+'&userId=<%=session.getAttribute("userId")%>';
	}
	links[i]= { icon: 'images/Program Files Folder.png', title: '桌面管理', url: '<%=basePath%>admin/app/desktop/wdzm.jsp?userId=<%=session.getAttribute("userId")%>' };
	
    var LINKWIDTH = 90, LINKHEIGHT = 90, TASKBARHEIGHT = 43;
    var winlinksul =  $("#winlinks ul");
    function f_open(url, title, icon) {
        var win = $.ligerDialog.open(
        { height: 500, url: url, width: 700, showMax: true, showToggle: true, showMin: true, isResize: true, modal: false, title: title, slide: false, buttons: [
            { text: '确定', onclick: function (item, Dialog, index) {
                win.hide();
            }
            }
        ]
        });
        var task = jQuery.ligerui.win.tasks[win.id];
        if (task) {
            $(".l-taskbar-task-icon:first", task).html('<img src="' + icon + '" />');
        }
        return win;
    }
  
             
    function onResize() {
        var linksHeight = $(window).height() - TASKBARHEIGHT;
        var winlinks = $("#winlinks");
        winlinks.height(linksHeight);
        var colMaxNumber = parseInt(linksHeight / LINKHEIGHT);//一列最多显示几个快捷方式
        for (var i = 0, l = links.length; i < l; i++) {
            var link = links[i];
            var jlink = $("li[linkindex=" + i + "]", winlinks);
            var top = (i % colMaxNumber) * LINKHEIGHT, left = parseInt(i / colMaxNumber) * LINKWIDTH;
            if (isNaN(top) || isNaN(left)) continue;
            jlink.css({ top: top, left: left });
        }

    }
    function linksInit() {
        for (var i = 0, l = links.length; i < l; i++) {
            var link = links[i];
            var jlink;
            var jlink = $("<li></li>");
            jlink.attr("linkindex", i);
            jlink.append("<img src='" + link.icon + "' />");
            jlink.append("<span>" + link.title + "</span>");
            jlink.append("<div class='bg'></div>");
            jlink.hover(function () {
                $(this).addClass("l-over");
            }, function () {
                $(this).removeClass("l-over");
            }).click(function () {
                var linkindex = $(this).attr("linkindex");
                var link = links[linkindex];
                f_open(link.url, link.title, link.icon);
            });
            jlink.appendTo(winlinksul);
        }

    }

    $(window).resize(onResize);
    $.ligerui.win.removeTaskbar = function () { }; //不允许移除
    $.ligerui.win.createTaskbar(); //页面加载时创建任务栏

    linksInit();
    onResize();

</script>
</html>
