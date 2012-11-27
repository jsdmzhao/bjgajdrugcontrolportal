<%@page import="com.unis.core.commons.Combox"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.unis.app.duty.service.KqZbSvc"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	response.setContentType("application/x-download;charset=GBK");  
	response.setHeader("Content-Disposition", "attachment;filename=download.doc");

	ApplicationContext ctx = WebApplicationContextUtils .getWebApplicationContext(request.getSession() .getServletContext());
	KqZbSvc kqZbSvc = (KqZbSvc) ctx.getBean("kqZbSvc");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>值班表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
#news {
	width: 400px;
	font-size: 14px;
	line-height: 180%;
	font-family: Verdana;
}

#news #main table {
	border-collapse: collapse;
	line-height: 1.6em;
	margin: 5px 10px;
	width: 590px;
}

#news #main th {
	background: none repeat scroll 0 0 #EEEEEE;
	border: 1px solid #DDDDDD;
	font-size: 13px;
	font-weight: bold;
	padding: 5px;
}

#news #main table {
	border-collapse: collapse;
	line-height: 1.6em;
}

#news #main tbody th {
	background: none repeat scroll 0 0 #F9F9F9;
	font-weight: normal;
}

#news #main th {
	background: none repeat scroll 0 0 #EEEEEE;
	border: 1px solid #DDDDDD;
	font-size: 13px;
	font-weight: bold;
	padding: 5px;
}

#news #main td {
	border: 1px solid #DDDDDD;
	padding: 5px;
}
</style>
</head>

<body style="text-align: center; width: 500px;">
	<div id="news">
		<div id="main">
			<table>
				<thead>
					<tr>
						<th>值班日期</th>
						<th>值班人员</th>
					</tr>
				</thead>
				<tbody>
				<%
					List<Combox> list = kqZbSvc.getWeekZbb();
					for (Combox combox : list) {
						out.println("<tr>");
						out.println("<th>"+ combox.getText() +"</th>");
						out.println("<th>"+ combox.getValue() +"</th>");
						out.println("</tr>");
					}
				%>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>
