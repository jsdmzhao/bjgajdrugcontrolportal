<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String carType = (String)request.getParameter("carType");
if(carType == null){
	carType = "";
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>车辆维修 管理</title> 
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>   
    <link  href="<%=basePath%>liger/lib/css/common.css" rel="st ylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>   
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>

    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/messages_cn.js" type="text/javascript"></script> 
    
    <script src='<%=basePath%>dwr/engine.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/util.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/interface/CarRepairAction.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/interface/CartypeAction.js' type='text/javascript' ></script>
  	
    <style type="text/css">
    .l-panel td.l-grid-row-cell-editing { padding-bottom: 2px;padding-top: 2px;}
    </style>
</head>
<body style="padding:10px;height:100%; text-align:center;">
  <form id="mainform">
	<DIV class=l-panel-search style="border: none;">
		<DIV class=l-panel-search-item>部门：</DIV>
		<DIV class=l-panel-search-item>
			<select id="selectBM" onchange="getCL(this.value)">
				<option value="">所有部门</option>
				<option value="1">总队领导</option>
				<option value="3">办公室</option>
				<option value="4">协调指导大队</option>
				<option value="9">情报中心</option>
				<option value="7">侦查大队</option>
				<option value="8">查禁大队</option>
				<option value="5">缉控大队</option>
				<option value="10">两品办 </option>
			</select>
		</DIV>
		<DIV class=l-panel-search-item>车辆：</DIV>
		<DIV class=l-panel-search-item id="selectCL">
			<select id="selectCPHM" onchange="search()">
			</select>
		</DIV>
	</DIV>
    <div id="maingrid"  style="margin:2px;"></div> 
   </form> 
   
   
  <script type="text/javascript">
  
  	  var dialog;
      //相对路径
      var rootPath = "../";
      //列表结构
      
      function getCL(value){
    	  var carType = document.getElementById("selectBM").value;
    	  var str = "<select id=\"selectCPHM\"  onchange=\"search()\" value='<%=carType%>'><option value='"+carType+"'>全部车辆</option>";
    	  CartypeAction.cartypeSelectList(value,function(data){
    			document.getElementById("selectCL").innerHTML = str + data + "</select>"
    	  });
    	  search();
      }
	  
	  function search(){
    	  var carType = document.getElementById("selectCPHM").value;
          grid.changePage("first"); 
          grid.setOptions({parms:[{name:'n_cllbxh',value:carType}]});
          grid.loadData();
  	  }
	  
      var tempdata = ""; 
      var grid = $("#maingrid").ligerGrid({
          columns: [
          { name: "n_xh", editor: {type: 'hidden'},hide : '1' },
          { display: "车牌", name: "n_cllbxh", width:140, type: "text", align: "left" ,  editor: { type: 'text'}},
          { display: "申请日期", name: "d_sqrq", width: 160, type: "text", align: "left", editor: { type: 'text'}},
          { display: "送修人员", name: "c_sxry", width: 200, type: "text", align: "left", editor: { type: 'text'}},
          { display: "车辆行驶总里程", name: "n_clxszlc", width: 120, type: "text", align: "left", editor: { type: 'text'}},
          { display: "状态", name: "c_shjg", width: 120, type: "text", align: "left", editor: { type: 'text'}}
          ], dataAction: 'server', pageSize: 20, toolbar: {},sortName: 'n_xh', url:'<%=basePath%>carRepairPageList',
          width: '98%', height: '100%',heightDiff:-10, checkbox: false,enabledEdit: true, clickToEdit: false,
          data: tempdata,rownumbers:true
      });

      //双击事件
      LG.setGridDoubleClick(grid, 'modify');

      //验证
      var maingform = $("#mainform");
      $.metadata.setType("attr", "validate");
      LG.validate(maingform, { debug: true }); 

      //加载toolbar
      LG.loadToolbar(grid, toolbarBtnItemClick);

     	var items=[{
            click:toolbarBtnItemClick,
            text:'新增',
            img:'<%=basePath%>liger/lib/icons/silkicons/add.png',
            id:'add'
        },{line:true},{
            click: toolbarBtnItemClick,
            text: '修改',
            img:'<%=basePath%>liger/lib/icons/silkicons/application_edit.png',
            id: 'modify'
        },{
       	   click:toolbarBtnItemClick,
   	       text:'查看',
   	       img:'<%=basePath%>liger/lib/icons/silkicons/application_view_detail.png',
   	       id:'view'    	
 	   },{line:true},{
            click: toolbarBtnItemClick,
            text: '删除',
            img:'<%=basePath%>liger/lib/icons/silkicons/delete.png',
            id: 'delete'
        },{line:true}];
        
	  grid.toolbarManager.set('items', items);

      //工具条事件
      function toolbarBtnItemClick(item) {
    	  
          var editingrow = grid.getEditingRow();
          switch (item.id) {
              case "add":
                  dialog = $.ligerDialog.open({ url: '<%=basePath%>admin/app/car/carRepairDetail.jsp', 
                  		  title: '车辆维修信息',
                          height: 450,width: 900,showMax: true, showToggle: true,  showMin: true
				  });
                  break;
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  dialog = $.ligerDialog.open({ url: '<%=basePath%>carRepairView?carRepair.n_xh=' + selected.n_xh,
              		  title: '车辆维修信息',	 
                      height: 450,width: 900,showMax: true, showToggle: true,  showMin: true
			  });
                  break;
              case "modify":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  dialog = $.ligerDialog.open({ url: '<%=basePath%>carRepairUpdate?carRepair.n_xh=' + selected.n_xh,
                  		  title: '车辆维修信息',	 
                          height: 450,width: 900,showMax: true, showToggle: true,  showMin: true
				  });
                  break;
              case "delete":
            	  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  jQuery.ligerDialog.confirm('确定删除吗?', function (confirm) {
                      if (confirm)
                          f_delete();
                  });
                  break;
          }
      }
      function f_reload() {
          grid.loadData();
      }
      function f_delete() {
          var selected = grid.getSelected();
          if (selected) {
        	  CarRepairAction.carRepairDelete(selected.n_xh, function (result){
             	   if(result == 'success'){
             		  LG.showSuccess('删除成功');
             		  grid.deleteRow(selected);
	           	   } else {
	           		  LG.showSuccess('删除失败');
	           	   }
               });
        	  grid.loadData();
          }
          else {
              LG.tip('请选择行!');
          }
      }


      grid.bind('beforeSubmitEdit', function (e)
      {
          if (!LG.validator.form())
          {
              LG.showInvalid();
              return false;
          }
          return true;
      });
      grid.bind('afterSubmitEdit', function (e) {
          var isAddNew = e.record['__status'] == "add";
          var data = $.extend(true, {}, e.newdata);
          if (!isAddNew){
              data.n_xh = e.record.n_xh;
          }
          CarRepairAction.carRepairSave(data, function (result){
        	if(result == 'success'){
        		LG.showSuccess('保存成功');
      		} else {
      			LG.showSuccess('保存失败');
      		}
        	 grid.loadData();
          });

          return false;
      }); 
      
      function dialog_hidden() {
    	  dialog.hidden();
      }

      function loadGrid(){
    	grid.loadData();
  	  }
  </script>
</body>
</html>
