<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>栏目选择</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/interface/ColumnAction.js'></script>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
<script language="JavaScript">
	function moveOption(e1, e2) {
		try {
			for ( var i = 0; i < e1.options.length; i++) {
				if (e1.options[i].selected) {
					var e = e1.options[i];
					e2.options.add(new Option(e.text, e.value));
					e1.remove(i);
					ii = i - 1
				}
			}
			document.myform.city_value.value = getvalue(document.myform.list2);
			document.myform.city_text.value = gettext(document.myform.list2);
		} catch (e) {
		}
	}
	function getvalue(geto) {
		var allvalue = ";";
		for ( var i = 0; i < geto.options.length; i++) {
			allvalue += geto.options[i].value + ";";
		}
		return allvalue;
	}
	
	function gettext(geto) {
		var alltext = "";
		for ( var i = 0; i < geto.options.length; i++) {
			alltext += geto.options[i].text + ";";
		}
		return alltext;
	}
	function changepos(obj, index) {
		if (index == -1) {
			if (obj.selectedIndex > 0) {
				obj.options(obj.selectedIndex).swapNode(
						obj.options(obj.selectedIndex - 1))
			}
		} else if (index == 1) {
			if (obj.selectedIndex < obj.options.length - 1) {
				obj.options(obj.selectedIndex).swapNode(
						obj.options(obj.selectedIndex + 1))
			}
		}
	}
	
	var str = "<select id=\"selectLanmu\" style=\"WIDTH:100%\" multiple name=\"list1\" size=\"12\" ondblclick=\"moveOption(document.myform.list1, document.myform.list2)\">";
	ColumnAction.columnSelectList(function(data){
		document.getElementById("selectLanmu").innerHTML = str + data + "</select>"
			
	});
	
	function submt(){
		var text = document.myform.city_text.value;
		var value =document.myform.city_value.value;
		parent.submit_lanmu(text,value);
	}
	function clse(){
		parent.close_lanmu();
	}
</script>
</head>

<body>
	<p>选定一项或多项然后点击添加或移除(按住shift或ctrl可以多选)<!--， 或在选择项上双击进行添加和移除。 --></p>
	<form method="post" name="myform">
		<table border="0" width="600">
			<tr>
				<td width="40%" id="selectLanmu" >
				<!-- 
					<select style="WIDTH:100%" multiple name="list1" size="12" ondblclick="moveOption(document.myform.list1, document.myform.list2)">
					</select>
				-->
			    </td>
				<td width="20%" align="center"><input type="button" value="添加"
					onclick="moveOption(document.myform.list1, document.myform.list2)"><br />
					<br /> <input type="button" value="删除"
					onclick="moveOption(document.myform.list2, document.myform.list1)">
				</td>
				<td width="40%"><select style="WIDTH:100%" multiple name="list2" size="12"
					ondblclick="moveOption(document.myform.list2, document.myform.list1)">
				</select></td>
				<!-- 
				<td>
					<button onclick="changepos(list2,-1)" type="button">上移</button> <br />
					<button onclick="changepos(list2,1)" type="button">下移</button></td>
				 -->
			</tr>
			<tr>
				<td colspan="3" align="center">
					<button onclick="submt();" type="button">确定</button>&nbsp;&nbsp;&nbsp;&nbsp;
					<button onclick="clse();" type="button">关闭</button>
				</td>
			</tr>
		</table>
		<!-- 值： --><input type="hidden" id="select_lanmu_value" name="city_value" size="40">
		<input type="hidden" id="select_lanmu_text" name="city_text" size="40"><br/>
		
	</form>
	
</body>
</html>
