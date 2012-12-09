<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>验车提醒 类别</title> 
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>   
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>   
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>

    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/messages_cn.js" type="text/javascript"></script> 
    
    <script src='<%=basePath%>dwr/engine.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/util.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/interface/CartypeAction.js' type='text/javascript' ></script>
    <style type="text/css">
    .l-panel td.l-grid-row-cell-editing { padding-bottom: 2px;padding-top: 2px;}
    </style>
</head>
<body style="padding:10px;height:100%; text-align:center;">
   <input type="hidden" id="MenuNo" value="MemberManageRole" /> 
  <form id="mainform">
    <div id="maingrid"  style="margin:2px;"></div> 
    </form> 
  <script type="text/javascript">
	  var dialog;
      //相对路径
      var rootPath = "../";
      //列表结构
      var tempdata = {};
      var grid = $("#maingrid").ligerGrid({
          columns: [
          { display: "序号", name: "n_xh", width: 70, hide:'1', align: "left"},
          { display: "部门", name: "c_yhzid", width: 70, hide:'1', align: "left"},
          { display: "使用部门", name: "c_yhzid_", width: 80, type: "text", align: "left"},
          { display: "提醒", name: "c_cphm", width: 400, type: "text", align: "left",type:'statueType'}  ],
			dataAction: 'server', pageSize: 20,
           sortName: 'n_xh', rownumbers:true,toolbar: {},
           title: '<font color="red">验车提醒</font>',
          width: '98%', height: '100%',heightDiff:-10, checkbox: false,enabledEdit: true, clickToEdit: false
         // ,data: tempdata
      });

      //双击事件
      //LG.setGridDoubleClick(grid, 'modify');

      //验证
      var maingform = $("#mainform");
      $.metadata.setType("attr", "validate");
      LG.validate(maingform, { debug: true }); 
      
      //加载toolbar
      LG.loadToolbar(grid, toolbarBtnItemClick);
	
     	var items=[{
            click:toolbarBtnItemClick,
            text:'新增车辆检测信息',
            img:'<%=basePath%>liger/lib/icons/silkicons/add.png',
            id:'add'
        },{line:true},{
            click: toolbarBtnItemClick,
            text: '查看车辆基本信息',
            img:'<%=basePath%>liger/lib/icons/silkicons/application_view_detail.png',
            id: 'view'
       },{line:true}];
	grid.toolbarManager.set('items', items);

      //工具条事件
      function toolbarBtnItemClick(item)
      {
          var editingrow = grid.getEditingRow();
          switch (item.id) {
              case "add":
               	  var selected = grid.getSelected();
                     if (!selected) { LG.tip('请选择行!'); return }
                     var cphm = selected.n_xh;
                     var yhzid = selected.c_yhzid;
               	  //top.f_addTab(null, '保存信息', '<%=basePath%>admin/app/car/cartypeDetail.jsp?cphm=');
					  dialog = $.ligerDialog.open({ url: '<%=basePath%>admin/app/car/carCheckDetail.jsp?cphm='+cphm+'&yhzid='+yhzid, 
                          height: 450,width: 900,showMax: true, showToggle: true,  showMin: true
				  });
                  break;
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                 // top.f_addTab(null, '查看信息', '<%=basePath%>cartypeView?cart.n_xh=' + selected.n_xh);
 					dialog = $.ligerDialog.open({ url: '<%=basePath%>cartypeView?car.n_xh=' + selected.n_xh, 
                          height: 400,width: 600,showMax: true, showToggle: true,  showMin: true
				    });
                  break;
          }
      }
      <%----%>
      
      $.ligerDefaults.Grid.formatters['statueType'] = function (num, column) {
  	    //num 当前的值
  		//column 列信息
  		if(column.name == 'c_cphm'){
  			var cphm = num.substring(num,num.indexOf(':'));
  			var jcrq = num.substring(num.indexOf(':')+1,num.length)
			return "<div style='width:100%;height:100%;'>该车牌号为<font color='red'>"+cphm+"</font>的车辆应于<font color='red'>"+jcrq+"</font>前检测</div>";
  		}
  	 };
      
      function f_reload() {
          grid.loadData();
      }
      
      function f_delete() {
          var selected = grid.getSelected();
          
          if (selected) {
        	  /**
              LG.ajax({
                  type: 'AjaxMemberManage',
                  method: 'RemoveRole',
                  loading: '正在删除中...',
                  data: { ID: selected.RoleID },
                  success: function () {
                      LG.showSuccess('删除成功');
                      f_reload();
                  },
                  error: function (message) {
                      LG.showError(message);
                  }
              });
              **/
        	  grid.deleteRow(selected);
        	  CartypeAction.cartypeDelete(selected.n_xh, function (result){
             	   if(result == 'success'){
             		  LG.showSuccess('删除成功');
	           	   } else {
	           		  LG.showError('删除失败');
	           	   }
               });
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
          if (!isAddNew)
              data.RoleID = e.record.RoleID;
          LG.ajax({
              loading: '正在保存数据中...',
              type: 'AjaxMemberManage',
              method: isAddNew ? "AddRole" : "UpdateRole",
              data: data,
              success: function ()
              { 
                  grid.loadData();
                  LG.tip('保存成功!');
              },
              error: function (message)
              {
                  LG.tip(message);
              }
          });
          return false;
      }); 

      function beginEdit()
      {
          var row = grid.getSelectedRow();
          if (!row) { LG.tip('请选择行'); return; }
          grid.beginEdit(row);
      }
      function addNewRow()
      {
          grid.addEditRow();
      } 
      
      function dialog_hidden()
      {
    	  dialog.hidden();
      }
      loadGrid();
      
      function loadGrid(){
          
	 	  CartypeAction.cartypWarnList(function (data){
	    	 grid.setOptions({data:data});
	      });
      }
  </script>
</body>
</html>
