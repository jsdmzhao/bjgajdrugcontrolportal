<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>网址类别</title> 
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
  	<script src='<%=basePath%>dwr/interface/WebsiteAction.js' type='text/javascript' ></script>
  	
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
      //相对路径
      var rootPath = "../";

 	var dialog ;

      //列表结构
      var tempdata = ""; 
      var grid = $("#maingrid").ligerGrid({
          columns: [
          { name: "n_xh", editor: {type: 'hidden'},hide : '1' },
          { display: "标题", name: "c_bt", width: 280, type: "text", align: "left"
              , validate: { required: true }
              , editor: { type: 'text' }
          },{ display: "网址", name: "c_lj", width: 280, type: "text", align: "left"
              , validate: { required: true }
	          , editor: { type: 'text' }
	      },
          { display: "类别", name: "n_lbxh", width: 80, type: "text", align: "left", editor: { type: 'text'} },
          { display: "添加时间", name: "d_dj", width: 300, type: "text", align: "left", editor: { type: 'text'}}
          ], dataAction: 'server', pageSize: 20, toolbar: {},
           sortName: 'n_xh', rownumbers:true,
          width: '98%', height: '100%',heightDiff:-10, checkbox: false,enabledEdit: true, clickToEdit: false,
          data: tempdata
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
        	      text:'保存',
        	      img:'<%=basePath%>liger/lib/icons/silkicons/page_save.png',
        	      id:'save'    	
     	   },{
            click:toolbarBtnItemClick,
            text:'新增',
            img:'<%=basePath%>liger/lib/icons/silkicons/add.png',
            id:'add'
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
        },{line:true}];
        
	grid.toolbarManager.set('items', items);

      //工具条事件
      function toolbarBtnItemClick(item)
      {
          var editingrow = grid.getEditingRow();
          switch (item.id) {
              case "add":
                  //top.f_addTab(null, '增加常用网址信息', '<%=basePath%>admin/app/website/websiteDetail.jsp');
		  dialog = $.ligerDialog.open({ url: '<%=basePath%>admin/app/website/websiteDetail.jsp', 
                           height: 400,width: 700,showMax: true, showToggle: true,  showMin: true
					  });
                  /**
                  if (editingrow == null)
                  {
                      addNewRow();
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  **/
                  break;
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  //top.f_addTab(null, '查看常用网址信息', '<%=basePath%>websiteUpdate?news.n_xh=' + selected.n_xh);
                  break;
              case "modify":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  //top.f_addTab(null, '修改常用网址信息', '<%=basePath%>websiteUpdate?website.n_xh=' + selected.n_xh);
		  dialog = $.ligerDialog.open({ url: '<%=basePath%>websiteUpdate?website.n_xh=' + selected.n_xh, 
                           height: 400,width: 700,showMax: true, showToggle: true,  showMin: true
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
                  jQuery.ligerDialog.confirm('确定删除吗?', function (confirm) {
                      if (confirm)
                          f_delete();
                  });
                  break;
              case "save":
                  if (editingrow != null)
                  {
                      grid.endEdit(editingrow);
                  } else
                  {
                      LG.tip('现在不在编辑状态!');
                  }
                  break;
          }
      }
     function dialog_hidden()
      {
    	  dialog.hidden();
      }

      function f_reload() {
          grid.loadData();
      }
      function f_delete() {
          var selected = grid.getSelected();
          if (selected) {

        	  grid.deleteRow(selected);
        	  WebsiteAction.websiteDelete(selected.n_xh, function (result){
             	   if(result == 'success'){
             		  LG.showSuccess('删除成功');
	           	   } else {
	           		  LG.showSuccess('删除失败');
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
          if (!isAddNew){
              data.n_xh = e.record.n_xh;
          }
          WebsiteAction.websiteSave(data, function (result){
        	if(result == 'success'){
        		LG.showSuccess('保存成功');
      		} else {
      			LG.showSuccess('保存失败');
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
      
    	WebsiteAction.websiteList(function (data){
  	    	grid.setOptions({data:data});
  	    });
  	  }
  </script>
</body>
</html>
