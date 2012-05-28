<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
    <base href="<%=basePath%>">
     <title>北京禁毒网站后台管理</title>
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/dialog.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <style type="text/css">
        *{ padding:0; margin:0;}
        body{ text-align:center; background:#4974A4;}
        #login{ width:740px; margin:0 auto; font-size:12px;}
        #loginlogo{ width:700px; height:100px; overflow:hidden; background:url('<%=basePath%>liger/lib/images/login/logo.jpg') no-repeat; margin-top:50px;   }
        #loginpanel{ width:729px; position:relative;height:300px;}
        .panel-h{ width:729px; height:20px; background:url('<%=basePath%>liger/lib/images/login/panel-h.gif') no-repeat; position:absolute; top:0px; left:0px; z-index:3;}
        .panel-f{ width:729px; height:13px; background:url('<%=basePath%>liger/lib/images/login/panel-f.gif') no-repeat; position:absolute; bottom:0px; left:0px; z-index:3;}
        .panel-c{ z-index:2;background:url('<%=basePath%>liger/lib/images/login/panel-c.gif') repeat-y;width:729px; height:300px;}
        .panel-c-l{ position:absolute; left:60px; top:40px;}
        .panel-c-r{ position:absolute; right:20px; top:50px; width:222px; line-height:200%; text-align:left;}
        .panel-c-l h3{ color:#556A85; margin-bottom:10px;}
        .panel-c-l td{ padding:7px;}
        
        
        .login-text{ height:24px; left:24px; border:1px solid #e9e9e9; background:#f9f9f9;}
        .login-text-focus{ border:1px solid #E6BF73;}
        .login-btn{width:114px; height:29px; color:#E9FFFF; line-height:29px; background:url('<%=basePath%>liger/lib/images/login/login-btn.gif') no-repeat; border:none; overflow:hidden; cursor:pointer;}
        #txtUsername,#txtPassword{ width:191px;} 
        #logincopyright{ text-align:center; color:White; margin-top:50px;}
    </style>
    <script type="text/javascript"><!--
        var FromUrl = getQueryStringByName("FromUrl");
        if (!FromUrl)
        {
            FromUrl = encodeURIComponent("index.aspx");
        }
        $(function ()
        {
            $(".login-text").focus(function ()
            {
                $(this).addClass("login-text-focus");
            }).blur(function ()
            {
                $(this).removeClass("login-text-focus");
            });

            $(document).keydown(function (e)
            {
                if (e.keyCode == 13)
                {
                    dologin();
                }
            });

            $("#btnLogin").click(function ()
            {
                dologin();
            });


            function dologin()
            {
                var username = $("#txtUsername").val();
                var password = $("#txtPassword").val();
                if (username == "")
                {
                    alert('账号不能为空!');
                    $("#txtUsername").focus();
                    return;
                }
                if (password == "")
                {
                    alert('密码不能为空!');
                    $("#txtPassword").focus();
                    return;
                }
               
                        $.ligerDialog.waitting("正在登陆中,请稍后...");
                        $("#btnLogin").attr("disabled", true);
                        window.location.href="index.jsp";
                 
            }
        });
    </script>
</head>
<body style="padding:10px"> 
    <div id="login">
        <div id="loginlogo"></div>
        <div id="loginpanel">
            <div class="panel-h"></div>
            <div class="panel-c">
                <div class="panel-c-l">
                   
                    <table cellpadding="0" cellspacing="0">
                        <tbody>
                         <tr>
                            <td align="left" colspan="2"> 
                             <h3>请使用系统管理账号登陆</h3>
                            </td>
                            </tr> 
                            <tr>
                            <td align="right">账号：</td><td align="left"><input type="text" name="loginusername" id="txtUsername" class="login-text" /></td>
                            </tr>
                            <tr>
                            <td align="right">密码：</td><td align="left"><input type="password" name="loginpassword" id="txtPassword" class="login-text" /></td>
                            </tr> 
                            <tr>
                            <td align="center" colspan="2">
                                <input type="submit" id="btnLogin" value="登陆" class="login-btn" />
                            </td>
                            </tr> 
                        </tbody>
                    </table>
                </div>
                <div class="panel-c-r">
                <p>请从左侧输入登录账号和密码登录</p>
                </div>
            </div>
            <div class="panel-f"></div>
        </div>
         <div id="logincopyright">Copyright © 2012 </div>
    </div>
</body>
</html>
