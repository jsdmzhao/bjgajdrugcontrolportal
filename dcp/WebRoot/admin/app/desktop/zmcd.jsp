<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>桌面菜单</title> 
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
    <style type="text/css">
    .l-panel td.l-grid-row-cell-editing { padding-bottom: 2px;padding-top: 2px;}
    </style>
        <script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/ZmcdSvc.js'></script>
</head>
<body style="padding:10px;height:100%; text-align:center;">
   <ipnut type="hidden" id="MenuNo" value="MemberManageRole" /> 
  <form id="mainform">
    <div id="maingrid"  style="margin:2px;"></div> 
    </form> 
  <script type="text/javascript">
      //相对路径
      var rootPath = "../";
      
      var oPage={
  			pageIndex:1,
  			pageSize:1000
  	};
      
      //列表结构
      var grid = $("#maingrid").ligerGrid({
          columns:  [
                              { display: '菜单名', name: 'cMc', align: 'left', width: 180, minWidth: 60
                                  , validate: { required: true }
                                  , editor: { type: 'text' }
                                  },
                                  { display: '链接地址', name: 'cLj', align: 'left', width: 300, minWidth: 60
                                  , validate: { required: true }
                                  , editor: { type: 'text' }
                                  }
                                  , { display: '图标', name: 'cTb', align: 'left', width: 230, minWidth: 50
                                  , editor: { type: 'text'}
                                  }
                                  ], dataAction: 'server', pageSize: 20, toolbar: {},
           sortName: 'RoleID', 
          width: '98%', height: '100%',heightDiff:-10, checkbox: false,enabledEdit: true, clickToEdit: false
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
                  //top.f_addTab(null, '增加角色信息', 'MemberManage/RoleDetail.aspx');
                  if (editingrow == null)
                  {
                      addNewRow();
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  break;
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  top.f_addTab(null, '查看角色信息', '<%=basePath%>admin/app/role/roleDetail.jsp?IsView=1&ID=' + selected.RoleID);
                  break;
              case "modify":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  //top.f_addTab(null, '修改角色信息', 'MemberManage/RoleDetail.aspx?ID=' + selected.RoleID);
                  if (editingrow == null)
                  {
                      beginEdit();
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
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
      

      function loadGrid(obj){
    	 if(!obj)obj={ };
  		ZmcdSvc.queryByPage(obj,oPage,function(rdata){
  			if(rdata == null){
  				  grid.setOptions({ data:  { Total:0, Rows:'' } });
  			}else{
  				  grid.setOptions({ data:  { Total:rdata.page.recordCount, Rows:rdata.data  } });
      		}
  		});
  	}
      loadGrid();
      function f_reload() {
    	  loadGrid();
      }
      function f_delete() {
    	  var selected = grid.getSelected();
			if (selected) {
				ZmcdSvc.remove(selected, function(rdata) {
					if (rdata) {
						LG.showSuccess('删除成功');
						loadGrid();
					} else {
						LG.showError('删除失败');
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
      grid.bind('afterSubmitEdit', function (e)
      {
          var isAddNew = e.record['__status'] == "add";
          var data = $.extend(true, {}, e.newdata);
          if (!isAddNew){
        	  data.nXh = e.record.nXh;
                  ZmcdSvc.update(data, function(rdata) {
          			if (rdata) {
          				LG.showSuccess('修改成功', function() {
          					loadGrid();
          				});
          			} else {
          				LG.showError('修改失败');
          			}
                  }); }
              else{
            	 ZmcdSvc.save(data, function(rdata) {
      			if (rdata) {
      				LG.showSuccess('保存成功', function() {
      					loadGrid();
      				});
      			} else {
      				LG.showError('保存失败');
      			}
          }); }
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
  </script>
</body>
</html>
