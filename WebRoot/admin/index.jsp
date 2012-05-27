<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   
<head id="Head1">
 <base href="<%=basePath%>">
      <title>北京禁毒网站后台管理</title> 
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
      <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>  
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerTab.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerLayout.js" type="text/javascript"></script>
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <link href="<%=basePath%>liger/lib/css/index.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/login.js" type="text/javascript"></script>

        <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/messages_cn.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/changepassword.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>
</head>
<body style="text-align:center; background:#F0F0F0; overflow:hidden;">
 <div id="pageloading" style="display:block;"></div> 
    <div id="topmenu" class="l-topmenu">
        <div class="l-topmenu-logo">北京禁毒网站后台管理</div>
        <div class="l-topmenu-welcome"> 
            <span class="l-topmenu-username"></span>欢迎您  &nbsp; 
            [<a href="javascript:f_changepassword()">修改密码</a>] &nbsp; 

             [<a href="javascript:f_login()">切换用户</a>]
            [<a href="login.htm?Action=out">退出</a>] 
        </div> 
        
    </div> 
     <div id="mainbody" class="l-mainbody" style="width:99.2%; margin:0 auto; margin-top:3px;" >
        <div position="left" title="主要菜单" id="mainmenu"></div>  
        <div position="center" id="framecenter"> 
            <div tabid="home" title="我的主页"> 
                <iframe frameborder="0" name="home" id="home" src="#"></iframe>
            </div> 
        </div> 
    </div>
    <script type="text/javascript">
        //几个布局的对象
        var layout, tab, accordion;
        //tabid计数器，保证tabid不会重复
        var tabidcounter = 0;
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

                 var menus=[{"icon":"<%=basePath%>liger/lib/icons/silkicons/application.png","id":42,"children":[{"icon":"<%=basePath%>liger/lib/icons/32X32/basket.gif","id":43,"MenuName":"类别","MenuID":43,"text":"类别","MenuUrl":"BaseManage/Categories.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/basket.gif","MenuNo":"BaseManageCategories","MenuParentNo":"BaseManage"},{"icon":"<%=basePath%>liger/lib/icons/32X32/product_169.gif","id":44,"MenuName":"产品","MenuID":44,"text":"产品","MenuUrl":"BaseManage/Products.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/product_169.gif","MenuNo":"BaseManageProducts","MenuParentNo":"BaseManage"},{"icon":"<%=basePath%>liger/lib/icons/32X32/suppliers.gif","id":45,"MenuName":"供应商","MenuID":45,"text":"供应商","MenuUrl":"BaseManage/Suppliers.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/suppliers.gif","MenuNo":"BaseManageSuppliers","MenuParentNo":"BaseManage"},{"icon":"<%=basePath%>liger/lib/icons/32X32/my_account.gif","id":46,"MenuName":"员工","MenuID":46,"text":"员工","MenuUrl":"BaseManage/Employees.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/my_account.gif","MenuNo":"BaseManageEmployees","MenuParentNo":"BaseManage"}],"MenuName":"基础信息管理","MenuID":42,"text":"基础信息管理","MenuUrl":null,"MenuIcon":"<%=basePath%>liger/lib/icons/silkicons/application.png","MenuNo":"BaseManage","MenuParentNo":null},{"icon":"<%=basePath%>liger/lib/icons/silkicons/application.png","id":52,"children":[{"icon":"<%=basePath%>liger/lib/icons/32X32/comment.gif","id":53,"MenuName":"客户","MenuID":53,"text":"客户","MenuUrl":"CustomerManage/Customers.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/comment.gif","MenuNo":"CustomerManageCustomers","MenuParentNo":"CustomerManage"}],"MenuName":"客户管理","MenuID":52,"text":"客户管理","MenuUrl":null,"MenuIcon":"<%=basePath%>liger/lib/icons/silkicons/application.png","MenuNo":"CustomerManage","MenuParentNo":null},{"icon":"<%=basePath%>liger/lib/icons/32X32/order_159.gif","id":54,"children":[{"icon":"<%=basePath%>liger/lib/icons/32X32/product_169.gif","id":56,"MenuName":"订单","MenuID":56,"text":"订单","MenuUrl":"OrderManage/Orders.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/product_169.gif","MenuNo":"OrderManageOrders","MenuParentNo":"OrderManage"},{"icon":"<%=basePath%>liger/lib/icons/32X32/order_159.gif","id":57,"MenuName":"托运人","MenuID":57,"text":"托运人","MenuUrl":"OrderManage/Shippers.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/order_159.gif","MenuNo":"OrderManageShippers","MenuParentNo":"OrderManage"}],"MenuName":"订单管理","MenuID":54,"text":"订单管理","MenuUrl":null,"MenuIcon":"<%=basePath%>liger/lib/icons/32X32/order_159.gif","MenuNo":"OrderManage","MenuParentNo":null},{"icon":"<%=basePath%>liger/lib/icons/silkicons/application.png","id":58,"children":[{"icon":"<%=basePath%>liger/lib/icons/32X32/customers.gif","id":59,"MenuName":"部门","MenuID":59,"text":"部门","MenuUrl":"MemberManage/Department.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/customers.gif","MenuNo":"MemberManageDepartment","MenuParentNo":"MemberManage"},{"icon":"<%=basePath%>liger/lib/icons/32X32/my_account.gif","id":61,"MenuName":"角色","MenuID":61,"text":"角色","MenuUrl":"MemberManage/Role.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/my_account.gif","MenuNo":"MemberManageRole","MenuParentNo":"MemberManage"},{"icon":"<%=basePath%>liger/lib/icons/32X32/role.gif","id":62,"MenuName":"用户","MenuID":62,"text":"用户","MenuUrl":"MemberManage/User.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/role.gif","MenuNo":"MemberManageUser","MenuParentNo":"MemberManage"}],"MenuName":"组织架构","MenuID":58,"text":"组织架构","MenuUrl":null,"MenuIcon":"<%=basePath%>liger/lib/icons/silkicons/application.png","MenuNo":"MemberManage","MenuParentNo":null},{"icon":"<%=basePath%>liger/lib/icons/32X32/future_projects.gif","id":1,"children":[{"icon":"<%=basePath%>liger/lib/icons/32X32/sitemap.gif","id":8,"MenuName":"菜单管理","MenuID":8,"text":"菜单管理","MenuUrl":"system/menu.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/sitemap.gif","MenuNo":"sysmenu","MenuParentNo":"system"},{"icon":"<%=basePath%>liger/lib/icons/32X32/link.gif","id":19,"MenuName":"权限中心","MenuID":19,"text":"权限中心","MenuUrl":"system/right.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/link.gif","MenuNo":"sysright","MenuParentNo":"system"},{"icon":"<%=basePath%>liger/lib/icons/32X32/setup.gif","id":64,"MenuName":"数据权限","MenuID":64,"text":"数据权限","MenuUrl":"system/DataPrivilege.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/setup.gif","MenuNo":"sysDataPrivilege","MenuParentNo":"system"},{"icon":"<%=basePath%>liger/lib/icons/32X32/config.gif","id":65,"MenuName":"底层权限","MenuID":65,"text":"底层权限","MenuUrl":"system/AdminMethod.aspx","MenuIcon":"<%=basePath%>liger/lib/icons/32X32/config.gif","MenuNo":"sysAdminMethodPrivilege","MenuParentNo":"system"}],"MenuName":"系统管理","MenuID":1,"text":"系统管理","MenuUrl":null,"MenuIcon":"<%=basePath%>liger/lib/icons/32X32/future_projects.gif","MenuNo":"system","MenuParentNo":null}];
                $(menus).each(function (i, menu)
                {
                    var item = $('<div title="' + menu.MenuName + '"><ul class="menulist"></ul></div>');
					
                    $(menu.children).each(function (j, submenu)
                    {
                        var subitem = $('<li><img/><span></span><div class="menuitem-l"></div><div class="menuitem-r"></div></li>');
                        subitem.attr({
                            url: submenu.MenuUrl,
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
            

        });
    </script>
</body>
</html>
