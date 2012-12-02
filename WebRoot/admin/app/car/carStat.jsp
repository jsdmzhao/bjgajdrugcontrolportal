<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>警务保障统计表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
#news {
	width: 800px;
	font-size: 13px;
	line-height: 180%;
	font-family: Verdana;
}

#news #main table {
	border-collapse: collapse;
	line-height: 1.6em;
	margin: 5px 10px;
	width: 820px;
}

#news #main th {
	background: none repeat scroll 0 0 #EEEEEE;
	border: 1px solid #DDDDDD;
	font-size: 13px;
	font-weight: bold;
	white-space:nowrap;
	padding: 5px;
}

#news #main table {
	border-collapse: collapse;
	line-height: 1.6em;
}

#news #main tbody th {
	background: none repeat scroll 0 0 #F9F9F9;
	font-weight: normal;
	white-space:nowrap;
	text-align: left;
	width: 80px;
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
	font-size: 13px;
}
</style>
</head>

<body style="text-align: center;">
	<div id="news">
		<div id="main">
		<table>
				<thead>
					<tr>
						<th colspan="6">禁毒总队警务保障统计表</th>
					</tr>
				</thead>
				<tbody>
					<table>
						<tbody>
							<tr>
								<th><strong>行驶里程</strong></th>
								<th>15万公里以上</th>
								<th>10-15万公里</th>
								<th>5-10万公里</th>
								<th>0-5万公里</th>
							</tr>
							<tr>
								<td><strong>数量</strong></td>
								<td>1</td>
								<td>10</td>
								<td>5</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
				</tbody>
	   </table>
			<p align="right" style="color: red; cursor: pointer;" onclick="window.print();">打印此表</p>
		</div>
	</div>


</body>
</html>
