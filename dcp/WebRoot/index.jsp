<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.unis.core.util.MyFunction"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录网站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/login.css" media="all" />
	
	<script type="text/javascript" src="jquery/jquery-1.3.2.min.js"></script>
	
	<script type='text/javascript' src='dwr/engine.js'></script>
  	<script type='text/javascript' src='dwr/util.js'></script>
  	<!--
  	<script type='text/javascript' src='dwr/interface/loginAction.js'></script>
  	-->
  	
  	<script type='text/javascript' src='dwr/interface/loginSeivice.js'></script>
  	
  	<script type="text/javascript">

  		function checkLogin(){

			var obj = $('#email').attr('value');
			if(obj == ''){
				alert('帐号不能为空！');
				return false;
			} else {
			
				//loginAction.checkUserByName( obj,function(data){
				loginSeivice.checkUserByName( obj,function(data){
					 for(var property in data){       
				         alert('库中存在同名人'+ data[property].c_user_id + '     ,姓名 ：'+ data[property].c_user_mc);      
				     }   
				});
			}
  	  	}
  	</script>
  </head>

	<body>
		<div id="opi" class="page-wrapper clearfix" style="margin-left: 510px; margin-top: 140px;">
			<div class="full-page-holder">
				<div class="full-page">

					<div class="login-page clearfix">
						<div class="full-login">
							<div class="shadow">
								<div class="login-panel">
									<form method="post" id="loginForm" onsubmit="return checkLogin();" action="login">
										<h2>登录系统</h2>
										<p class="clearfix">
											<label for="email">帐号:</label>
											<input type="text" name="user.c_user_id" tabindex="1" id="email" class="input-text">
										</p>
										<p class="clearfix">
											<label for="password">密码:</label>
											<input type="password" id="password" name="user.c_pass" class="input-text" tabindex="2" />
										</p>
										<p class="right">
											<input type="submit" id="login" tabindex="4" name="submit" class="input-submit large" value="登录" />
											<input type="reset" id="login" tabindex="4" name="reset" class="input-submit large" value="重置" />
										</p>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</body>
</html>
