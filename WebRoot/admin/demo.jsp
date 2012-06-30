<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <title>北京禁毒网站后台管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 	 <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" /> 
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>    
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>admin/indexdata.js" type="text/javascript"></script>
    <script src="<%=basePath%>admin/menudata.js" type="text/javascript"></script>
<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/UserInfoSvc.js'></script>
    <script type="text/javascript">
       


          UserInfoSvc.choose(function(rdata){
  			if(rdata != null){

  	          var box1= $("#txt1").ligerComboBox({
  	            width : 180, 
  	            selectBoxWidth: 200,
  	            selectBoxHeight: 200, valueField: 'text', treeLeafOnly: false,
  	            tree: { data:rdata}
  	        }); 


  	          $("#txt2").ligerComboBox({
  	                width: 180,
  	                selectBoxWidth: 200,
  	                selectBoxHeight: 200, valueField: 'text',treeLeafOnly:false,
  	                tree: { data:rdata, checkbox: false }
  	            });

  	           $("#txt3").ligerComboBox({
  	                width: 180,
  	                selectBoxWidth: 200,
  	                selectBoxHeight: 200, valueField: 'text',
  	                tree: { data:rdata }
  	            });
  			}
  		});
          

//

            
    </script>
</head>
<body style="padding:10px"> 
带复选框： <br />
   <input type="text" id="txt1"/>
     <br />
不带复选框： <br />
   <input type="text" id="txt2"/>
   <br />
只选择叶节点： <br />
   <input type="text" id="txt3"/>

 <div style="display:none;">
 
</div>
</body>
</html>
