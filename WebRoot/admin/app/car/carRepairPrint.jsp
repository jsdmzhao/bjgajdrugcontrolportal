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

<title>车辆报修审批表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
#news {
	width: 700px;
	font-size: 13px;
	line-height: 180%;
	font-family: Verdana;
}

#news #main table {
	border-collapse: collapse;
	line-height: 1.6em;
	margin: 5px 10px;
	width: 710px;
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
	text-align: left;
	width: 60px;
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

<body style="text-align: center; width: 600px;">
	<div id="news">
		<div id="main">
			<table>
				<thead>
					<tr>
						<th colspan="6">禁毒总队车辆报修审批表</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>保修单位</th>
						<td colspan="5"><s:property value="carRepair.c_yhzid"/></td>
					</tr>
					<tr>
						<th>车牌号</th>
						<td width="140"><s:property value="carRepair.c_cphm"/></td>
						<th>品牌型号</th>
						<td width="140"><s:property value="carRepair.c_ppxh"/></td>
						<th>责任司机</th>
						<td width="140"><s:property value="carRepair.c_zrsj"/></td>
					</tr>
					<tr>
						<th>维修理由</th>
						<td colspan="5"><s:property value="carRepair.c_clzk"/></td>
					</tr>
					<tr>
						<th>报修单位意见</th>
						<td colspan="5"><s:property value="carRepair.c_shjg_f"/></td>
					</tr>
					<tr>
						<th>警务保障科意见</th>
						<td colspan="5"><s:property value="carRepair.c_shjg_t"/></td>
					</tr>
					<!-- 
					<tr>
						<th>总队主管领导意见</th>
						<td colspan="5"><s:property value="carRepair.c_yhzid"/></td>
					</tr>
					 -->
					<tr>
						<td colspan="6" align="right">时间：<s:property value="carRepair.d_dj"/></td>
					</tr>
				</tbody>
			</table>
			<p align="right" style="color: red; cursor: pointer;" onclick="window.print();">打印此表</p>
		</div>
	</div>


</body>
</html>
