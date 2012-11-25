<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>内部邮件</title> 
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
    <script src="<%=basePath%>liger/lib/jquery-validation/emails_cn.js" type="text/javascript"></script> 
    
    <script src='<%=basePath%>dwr/engine.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/util.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/interface/EmailAction.js' type='text/javascript' ></script>
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
          { display: "序号", name: "n_xh", width: 70, type: "text", align: "left"},
          { display: "发信人", name: "c_yhid", width: 120, type: "text", align: "left", editor: { type: 'text'} },
          { display: "标题", name: "c_bt", width: 300, type: "text", align: "left", editor: { type: 'text'} },
          { display: "添加时间", name: "d_dj", width: 160, type: "textarea", align: "left", editor: { type: 'text'}},
          { display: "签收情况", name: "c_zt", width: 80, type: "textarea", align: "left", editor: { type: 'text'}}
          ], dataAction: 'server', pageSize: 20, toolbar: {},
           sortName: 'n_xh', rownumbers:true,
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
            click: toolbarBtnItemClick,
            text: '查看',
            img:'<%=basePath%>liger/lib/icons/silkicons/application_view_detail.png',
            id: 'view'
       },{line:true},{
           click: toolbarBtnItemClick,
           text: '签收',
           img:'<%=basePath%>liger/lib/icons/silkicons/application_form_edit.png',
           id: 'qsyj'
       },{line:true},{
          click: toolbarBtnItemClick,
          text: '放入垃圾箱',
          img:'<%=basePath%>liger/lib/icons/silkicons/delete.png',
          id: 'hsyj'
       },{line:true}];
	grid.toolbarManager.set('items', items);

      //工具条事件
      function toolbarBtnItemClick(item)
      {
          var editingrow = grid.getEditingRow();
          switch (item.id) {
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  //top.f_addTab(null, '查看信息', '<!%=basePath%>emailUpdate?email.n_xh=' + selected.n_xh);
                  dialog = $.ligerDialog.open({ url: '<%=basePath%>emailView?email.n_xh=' + selected.n_xh +'&type=js', 
                         	height: 500,width: 900,showMax: true, showToggle: true,  showMin: true,
                         	title:'内部邮件'
				  });
                  break;
              case "qsyj":
            	  f_operator('2');
                  break;

              case "hsyj":
                  //jQuery.ligerDialog.confirm('确定放入回收站吗?', function (confirm) {
                      //if (confirm)
                  f_operator('0');
                  //});
                  break;
          }
      }
      function f_reload() {
          grid.loadData();
      }
      
      function dialog_hidden()
      {
    	  dialog.hidden();
      }
      
      function dialog_repay(value){
    	  dialog.hidden();
    	  dialog = $.ligerDialog.open({ url: '<%=basePath%>admin/app/email/emailDetail.jsp?'+value, 
    		  height: 500,width: 900,showMax: true, showToggle: true,  showMin: true,
             	title:'回复邮件'
  	      });
      }

      
      function f_operator(value) {
          var selected = grid.getSelected();
          if (selected) {
        	  EmailAction.emailRecieveOperator(value, selected.n_xh, function (result){
             	   if(result == 'success'){
             		  LG.showSuccess('操作成功');
             		  if(value == '0'){
	               		  grid.deleteRow(selected);
	               	  } else {
	               		  loadGrid();
	               	  }
	           	   } else {
	           		  LG.showError('操作失败');
	           	   }
               });
          } else {
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
              error: function (email)
              {
                  LG.tip(email);
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
      
      loadGrid();
      
      function loadGrid(){
          
	 	  EmailAction.getEmailRecieveList(function (data){
	    	 grid.setOptions({data:data});
	      });
      }
  </script>
</body>
</html>
