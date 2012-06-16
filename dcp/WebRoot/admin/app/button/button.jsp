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
	src='<%=basePath%>dwr/interface/SysButtonSvc.js'></script>
</head>
<body style="padding:2px;height:100%; text-align:center;">
  <form id="mainform">
    <div id="maingrid"  style="margin:2px;"></div> 
    </form> 
  <script type="text/javascript">

  var oPage={
			pageIndex:1,
			pageSize:20
	}
	
      var menuId = '<%= request.getParameter("MenuId") %>';

      function itemclick(item)
      {
          var editingrow = grid.getEditingRow();
          var id = item.id || item.text;
          switch (id)
          {
              case "fastaddbtn":
                  $.ligerDialog.confirm('确定增加【增加按钮】、【修改按钮】、【删除按钮】吗?', function (confirm)
                  {

                      //fastAdd
                      if (!confirm) return;

                      var data={ menuId: menuId };
                      SysButtonSvc.fastAdd(data, function(rdata) {
                    	  if (rdata) {
            					 LG.showSuccess('快速增加按钮成功');
                                  f_reload();
            					}
                              else {
            						LG.showError('快速增加按钮失败');
            					}
                       });
                   });
                  break;
              case "clearbtns":
                  $.ligerDialog.confirm('确定清空按钮吗?', function (confirm)
                  {

                      //removeByMenuId
                      if (!confirm) return;

                       var data={ menuId: menuId };
                          SysButtonSvc.removeByMenuId(data, function(rdata) {
           					if (rdata) {
           					 LG.showSuccess('清空按钮成功');
                                 f_reload();
           					}
                             else {
           						LG.showError('清空按钮失败');
           					}
                      });
                  });
                  break;
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
               if (!selected.btnId)
               {
                   grid.deleteRow(selected);
                   return;
               }
           		SysButtonSvc.remove(selected, function(rdata) {
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
            { text: '快速增加 【增删改】', id: 'fastaddbtn', click: itemclick, img: "<%=basePath%>liger/lib/icons/miniicons/page_delete.gif" } ,
            { line: true },
            { text: '清空按钮', id: 'clearbtns', click: itemclick, img: "<%=basePath%>liger/lib/icons/miniicons/page_cross.gif" } 
            
        ]
    };

    var grid = $("#maingrid").ligerGrid({
        columns: [
                { display: '按钮编号', name: 'btnNo', align: 'left', width: 130, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                },
                { display: '按钮名称', name: 'btnName', align: 'left', width: 300, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                }
                , { display: '图标', name: 'btnIcon', align: 'left', width: 230, minWidth: 50
                , editor: { type: 'text'}
                }
                ],  toolbar: toolbarOptions, sortName: 'BtnID',
        width: '98%', height: '100%', heightDiff: -5, checkbox: false, 
        usePager: false, enabledEdit: true, clickToEdit: false,
        fixedCellHeight: true, rowHeight: 25
    });


   // grid.bind('beforeSubmitEdit', function (e)
   // {
   //     if (!LG.validator.form())
   //     {
    //        LG.showInvalid();
   //         return false;
     //   } 
    //    return true;
   // });
    grid.bind('afterSubmitEdit', function (e)
    {
        var isAddNew = e.record['__status'] == "add";
        var data = $.extend({ menuId: menuId }, e.newdata);
        if (!isAddNew){
    	 data.btnId = e.record.btnId;
            SysButtonSvc.update(data, function(rdata) {
    			if (rdata) {
    				LG.showSuccess('修改成功', function() {
    					loadGrid();
    				});
    			} else {
    				LG.showError('修改失败');
    			}
            }); }
        else{
        	SysButtonSvc.save(data, function(rdata) {
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
		if(!obj)obj={menuId : menuId };
		SysButtonSvc.queryByPage(obj,oPage,function(rdata){
			if(rdata == null){
				  grid.setOptions({ data:  { Total:0, Rows:'' } });
			}else{
				  grid.setOptions({ data:  { Total:rdata.page.recordCount, Rows:rdata.data  } });
    		}
		});
	}
    loadGrid();
    
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