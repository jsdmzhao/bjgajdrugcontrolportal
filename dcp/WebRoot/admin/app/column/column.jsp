<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>栏目</title> 
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
  	<script src='<%=basePath%>dwr/interface/ColumnAction.js' type='text/javascript' ></script>
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
  
	  $.ligerDefaults.Grid.mouseoverRowCssClass = null;
	
	  //扩展一个 多行文本框 的编辑器
	  $.ligerDefaults.Grid.editors['textarea'] = {
	      create: function (container, editParm)
	      {
	          var input = $("<textarea class='l-textarea' />");
	          container.append(input);
	          return input;
	      },
	      getValue: function (input, editParm)
	      {
	          return input.val();
	      },
	      setValue: function (input, value, editParm)
	      {
	          input.val(value);
	      },
	      resize: function (input, width, height, editParm)
	      {
	          var column = editParm.column;
	          if (column.editor.width) input.width(column.editor.width);
	          else input.width(width);
	          if (column.editor.height) input.height(column.editor.height);
	          else input.height(height);
	      }
	  };

      var dialog;
      //相对路径
      var rootPath = "../";
      //列表结构
      var tempdata = {};
      
      var dayEditor = { type: 'spinner', minValue: 0, maxValue: 24 };
      
      var grid = $("#maingrid").ligerGrid({
          columns: [
          { display: "序号", name: "n_xh", width: 70, type: "text", align: "left"},
          { display: "栏目名称", name: "c_lmmc", width: 300, type: "text", align: "left" },
          { display: "是否导航", name: "c_sfdh", width: 80, type: "text", align: "left" },
          { display: "是否图片", name: "c_sftp", width: 80, type: "text",align: "left" },
          { display: "是否内容", name: "c_sfnr", width: 80, type: "text", align: "left"},
          { display: "位置", name: "n_xsxh", width: 80, type: "int", align: "left", editor: { type: 'int'} }
          ], dataAction: 'server', pageSize: 20, toolbar: {},
           sortName: 'n_xh', rownumbers:true,
          width: '98%', height: '100%',heightDiff:-10, checkbox: false, enabledEdit: true, clickToEdit: true,rownumbers:true
         // ,data: tempdata
      });

      //双击事件
      LG.setGridDoubleClick(grid, 'modify');

      //验证
      var maingform = $("#mainform");
      $.metadata.setType("attr", "validate");
      LG.validate(maingform, { debug: true }); 

      //加载toolbar
      LG.loadToolbar(grid, toolbarBtnItemClick);

     	var items=[
     	           {
     	        	  click:toolbarBtnItemClick,
	   	        	    text:'保存',
	   	        	    img:'<%=basePath%>liger/lib/icons/silkicons/page_save.png',
	   	        	    id:'save'    	
     	       	
     	   },{
            
            click:toolbarBtnItemClick,
            text:'新增栏目',
            img:'<%=basePath%>liger/lib/icons/silkicons/add.png',
            id:'add'
        },{line:true},{
            click: toolbarBtnItemClick,
            text: '新增子栏目',
            img:'<%=basePath%>liger/lib/icons/silkicons/application_edit.png',
            id: 'add2'
        },{line:true},{
            click: toolbarBtnItemClick,
            text: '修改',
            img:'<%=basePath%>liger/lib/icons/silkicons/application_edit.png',
            id: 'modify'
        },{line:true},{
            click: toolbarBtnItemClick,
            text: '删除',
            img:'<%=basePath%>liger/lib/icons/silkicons/delete.png',
            id: 'delete'
        },{line:true},{
            click: toolbarBtnItemClick,
            text: '查看',
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
                  //top.f_addTab(null, '增加栏目信息', 'MemberManage/RoleDetail.aspx');
                  if (editingrow == null)
                  {
                      //addNewRow();
                	  //top.f_addTab(null, '保存信息', '<%=basePath%>admin/app/column/columnDetail.jsp?c_sjlmdm=0000');
			  		  dialog = $.ligerDialog.open({ url: '<%=basePath%>admin/app/column/columnDetail.jsp?c_sjlmdm=0000', 
                           height: 500,width: 900,showMax: true, showToggle: true,  showMin: true
					  });
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  break;
              case "add2":
            	  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  //top.f_addTab(null, '保存信息', '<%=basePath%>admin/app/column/columnDetail.jsp?c_sjlmdm='+ selected.c_lmdm);
                  dialog = $.ligerDialog.open({ url: '<%=basePath%>admin/app/column/columnDetail.jsp?c_sjlmdm='+ selected.c_lmdm, 
                          height: 500,width: 900,showMax: true, showToggle: true,  showMin: true
				  });
                  break;
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  dialog = $.ligerDialog.open({ url: '<%=basePath%>columnView?column.n_xh=' + selected.n_xh, 
                      height: 500,width: 900,showMax: true, showToggle: true,  showMin: true
				  });
                  break;
              case "modify":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  //top.f_addTab(null, '修改栏目信息', '<%=basePath%>columnUpdate?column.n_xh=' + selected.n_xh);
		  		  dialog = $.ligerDialog.open({ url: '<%=basePath%>columnUpdate?column.n_xh=' + selected.n_xh, 
                          height: 500,width: 900,showMax: true, showToggle: true,  showMin: true
				  });
                  /**
                  if (editingrow == null)
                  {
                      beginEdit();
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  **/
                  break;
              case "delete":
            	  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  jQuery.ligerDialog.confirm('确定删除吗?', function (confirm) {
                      if (confirm)
                          f_delete();
                  });
                  break;
              case "save":
            	  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  //alert(selected.n_xsxh+'--'+selected.n_xh)
                  
                  ColumnAction.columnUpdateXsxh(selected.n_xh, selected.n_xsxh,function(result){
                	  
                	  if(result == 'success'){
                 		  LG.showSuccess('修改成功');
    	           	   } else {
    	           		  LG.showError('修改失败');
    	           	   }
                  });
                  /**
                  if (editingrow != null)
                  {
                      grid.endEdit(editingrow);
                  } else
                  {
                      LG.tip('现在不在编辑状态!');
                  }
                  **/
                  break;
          }
      }
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
        	  ColumnAction.columnDelete(selected.n_xh, function (result){
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
      grid.bind('afterSubmitEdit', function (e)
      {
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
      
    	ColumnAction.columnList(function (data){
  	    	//newsdata = JSON2.stringify(data);
  	    	/**
  	    	for(var i=0;i<data.Rows.length;i++){
  	    		var rowData = "<div style='width:100%;height:100%;'>";
				var sfzd = data.Rows[i].c_sfzd;
				var sfgl = data.Rows[i].c_sfgl;
				var sftj = data.Rows[i].c_sftj;
				if(sfzd == '1'){
					rowData += "<span style=width:33%><img src='liger/lib/icons/silkicons/arrow_up.png'/>置顶&nbsp;&nbsp;</span>";
			    }else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				if(sfgl == '1'){
					rowData += "<img src='liger/lib/icons/silkicons/star.png'/>高亮&nbsp;&nbsp;";
				}else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				if(sftj == '1'){
					rowData += "<img src='liger/lib/icons/silkicons/flag_red.png'/>推荐&nbsp;&nbsp;";
				}else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				rowData += "</div>";
				data.Rows[i].operate = rowData;
  	  	  	}
  	  	  	**/
  	    	grid.setOptions({data:data});
  	    });
    }
  </script>
</body>
</html>
