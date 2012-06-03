<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title> 
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>   
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>   
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script>  
    <script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerTextBox.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script>
    
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/messages_cn.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery.form.js" type="text/javascript"></script>

    <script src="<%=basePath%>liger/lib/js/iconselector.js" type="text/javascript"></script> 
    <style type="text/css">
    .l-panel td.l-grid-row-cell-editing { padding-bottom: 2px;padding-top: 2px;}
    </style>
    
    <script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/SysMenuSvc.js'></script>
</head>
<body style="padding:2px;height:100%; text-align:center;">
  
  <div id="layout">
    <div position="left" title="主菜单模块" id="mainmenu">
        <ul id="maintree"></ul>
     </div>
    <div position="center" title="子菜单列表"> 
        <form id="mainform">
        <div id="maingrid"  style="margin:2px;"></div> 
        </form>
    </div>
  </div>
  <ul class="iconlist">
  </ul>
  <script type="text/javascript">

  var oPage={
			pageIndex:1,
			pageSize:20
	}

  var parentNo;
  
    
      //验证
      var maingform = $("#mainform");
      $.metadata.setType("attr", "validate");
      LG.validate(maingform, { debug: true });
      //覆盖本页面grid的loading效果
      LG.overrideGridLoading(); 

      function itemclick(item)
      {
          var editingrow = grid.getEditingRow();
          switch (item.text)
          {
              case "增加":
                  if (editingrow == null)
                  {
                      addNewRow();
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  break;
              case "修改":
                  if (editingrow == null)
                  {
                      beginEdit();
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  break;
              case "保存":
                  if (editingrow != null)
                  {
                      grid.endEdit(editingrow);
                  } else
                  {
                      LG.tip('现在不在编辑状态!');
                  }
                  break;
              case "取消":
                  if (editingrow != null)
                  {
                      grid.cancelEdit(editingrow); 
                  } else
                  {
                      LG.tip('现在不在编辑状态!');
                  }
                  break;
              case "删除": 
                  $.ligerDialog.confirm('确定删除吗?', function (confirm) {
                      if (confirm)
                          f_delete();
                  });
                  break;
              case "操作按钮":
                  var selected = grid.getSelected();
                  if (!selected) return;
                  top.f_addTab(null, selected.MenuName + ' 操作按钮管理', '<%=basePath%>admin/app/operation/operation.jsp?MenuNo=' + selected.MenuNo);
                  break;
          }
      }
      function f_reload()
      {
    	  loadGrid();
      }
      function f_delete()
      { 
          var selected = grid.getSelected();
          if (selected)
          {
              if (!selected.menuId)
              {
                  grid.deleteRow(selected);
                  return;
              }
          		SysMenuSvc.remove(selected, function(rdata) {
					if (rdata) {
                      LG.showSuccess('删除成功');
                      f_reload();
					}
                  else {
						LG.showError('删除失败');
					}
              });
          }
          else
          {
              LG.tip('请选择行!');
          }
      }
      var toolbarOptions = { 
        items: [ 
            { text: '增加', click: itemclick , img:"<%=basePath%>liger/lib/icons/silkicons/add.png"}, 
            { line:true },
            { text: '修改', click: itemclick, img: "<%=basePath%>liger/lib/icons/miniicons/page_edit.gif" },
            { line: true },
            { text: '保存', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/page_save.png" },
            { line: true },
            { text: '取消', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/cancel.png" },
            { line: true },
            { text: '删除', click: itemclick, img: "<%=basePath%>liger/lib/icons/miniicons/page_delete.gif" },
            { line: true },
            { text: '操作按钮', click: itemclick, img: "<%=basePath%>liger/lib/icons/32X32/document_library.gif" } 
        ]
    };

    var treefilter = {
        op: 'or',
        rules: [
        { field: 'menuParentNo', value: '', op: 'equal' },
        { field: 'menuParentNo', op: 'isnull' }
        ]
    };

     var tree = $("#maintree").ligerTree({
        checkbox: false,
        onClick: function (node)
        {
            if (!node.data.menuNo) return;

            parentNo=node.data.menuNo;
            loadGrid({menuParentNo : node.data.menuNo});
        }
    });
     
     function loadTree(){
 		var treeobj={menuParentNo: 0};
 		SysMenuSvc.queryAll(treeobj,function(rdata){
 			if(rdata == null){
 				tree.set('data', "");
 			}else{

 				parentNo=rdata[0].menuNo;
 				var i=0
 				for (i=0;i<rdata.length;i++)
 				{
 					rdata[i].text=rdata[i].menuName;
 				}
 				tree.set('data', rdata);
     		}
 		});
 	}
     loadTree();

     
    var layout = $("#layout").ligerLayout({ leftWidth: 140 });
     
    var grid = $("#maingrid").ligerGrid({
        //headerImg:"<%=basePath%>liger/lib/icons/silkicons/table.png",title:'表格表头',
        columns: [
                { display: '菜单名', name: 'menuName', align: 'left', width: 180, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                },
                { display: '菜单编号', name: 'menuNo', align: 'left', width: 130, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                },
                { display: '链接地址', name: 'menuUrl', align: 'left', width: 300, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                }
                , { display: '图标', name: 'menuIcon', align: 'left', width: 230, minWidth: 50
                , editor: { type: 'text',
                , render: function (item)
                {
                    return "<div style='width:100%;height:100%;'><img src='<%=basePath%>" + item.MenuIcon + "' /></div>";
                }
                }
                ], dataAction: 'server', pageSize: 20, toolbar: toolbarOptions, sortName: 'MenuID',
        width: '98%', height: '100%', heightDiff: -5, checkbox: false, usePager: false, enabledEdit: true, clickToEdit: false,
        fixedCellHeight: true, rowHeight: 25
    });


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
        var data = $.extend({ menuParentNo: parentNo }, e.newdata);
        if (!isAddNew){
            data.menuId = e.record.menuId;
                SysMenuSvc.update(data, function(rdata) {
        			if (rdata) {
        				LG.showSuccess('修改成功', function() {
        					loadGrid();
        				});
        			} else {
        				LG.showError('修改失败');
        			}
                }); }
            else{
            SysMenuSvc.save(data, function(rdata) {
    			if (rdata) {
    				LG.showSuccess('保存成功', function() {
    					loadGrid();
    				});
    			} else {
    				LG.showError('保存失败');
    			}
        }); }
        });


    function loadGrid(obj){
		if(!obj)obj={menuParentNo : parentNo };
		SysMenuSvc.queryByPage(obj,oPage,function(rdata){
			if(rdata == null){
				  grid.setOptions({ data:  { Total:0, Rows:{}  } });
			}else{
				  grid.setOptions({ data:  { Total:rdata.page.recordCount, Rows:rdata.data  } });
    		}
		});
	}
	
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
