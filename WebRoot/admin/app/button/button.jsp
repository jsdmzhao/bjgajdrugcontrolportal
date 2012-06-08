<%@ Page Language="C#" Inherits="LigerRM.Common.ViewPageBase" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title> 
    <link href="../lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="../lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="../lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="../lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>   
    <script src="../lib/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>
    <script src="../lib/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
    <link href="../lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="../lib/js/common.js" type="text/javascript"></script>  
    <script src="../lib/js/LG.js" type="text/javascript"></script> 
    <script src="../lib/js/ligerui.expand.js" type="text/javascript"></script>  
    <script src="../lib/json2.js" type="text/javascript"></script>
    <script src="../lib/ligerUI/js/plugins/ligerTextBox.js" type="text/javascript"></script> 
    <script src="../lib/js/ligerui.expand.js" type="text/javascript"></script>
    
    <script src="../lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="../lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="../lib/jquery-validation/messages_cn.js" type="text/javascript"></script>
    <script src="../lib/jquery.form.js" type="text/javascript"></script>

    <script src="../lib/js/iconselector.js" type="text/javascript"></script> 
    <style type="text/css">
    .l-panel td.l-grid-row-cell-editing { padding-bottom: 2px;padding-top: 2px;}
    </style>
</head>
<body style="padding:2px;height:100%; text-align:center;">
  <form id="mainform">
    <div id="maingrid"  style="margin:2px;"></div> 
    </form> 
  <script type="text/javascript">
      var MenuNo = '';
      
      
      //验证
      var maingform = $("#mainform");
      $.metadata.setType("attr", "validate");
      LG.validate(maingform, { debig: true }); 
      //这里覆盖了本页面grid的loading效果
      $.extend($.ligerDefaults.Grid, {
          onloading: function ()
          {
              LG.showLoading('正在加载表格数据中...');
          },
          onloaded: function ()
          {
              LG.hideLoading();
          }
      });

      function itemclick(item)
      {
          var editingrow = grid.getEditingRow();
          var id = item.id || item.text;
          switch (id)
          {
              case "fastaddbtn":
                  $.ligerDialog.confirm('确定增加【增加按钮】、【修改按钮】、【删除按钮】、【查看按钮】吗?', function (confirm)
                  {
                      if (!confirm) return;
                      LG.ajax({
                          type: 'AjaxSystem',
                          method: 'AddCUDButtons',
                          loading: '正在增加按钮中...',
                          data: { MenuNo: MenuNo },
                          success: function ()
                          {
                              LG.showSuccess('快速增加按钮成功');
                              f_reload();
                          },
                          error: function (message)
                          {
                              LG.showError(message);
                          }
                      });
                  });
                  break;
              case "clearbtns":
                  $.ligerDialog.confirm('确定清空按钮吗?', function (confirm)
                  {
                      if (!confirm) return;
                      LG.ajax({
                          type: 'AjaxSystem',
                          method: 'ClearButtons',
                          loading: '正在清空按钮中...',
                          data: { MenuNo: MenuNo },
                          success: function ()
                          {
                              LG.showSuccess('清空按钮成功');
                              f_reload();
                          },
                          error: function (message)
                          {
                              LG.showError(message);
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
          grid.loadData();
      }
      function f_delete()
      { 
          var selected = grid.getSelected();
          if (selected)
          {
              if (!selected.BtnID)
              {
                  grid.deleteRow(selected);
                  return;
              }
              LG.ajax({
                  type: 'AjaxSystem',
                  method: 'RemoveButton',
                  loading:'正在删除中...',
                  data: { BtnID: selected.BtnID },
                  success: function () { 
                      LG.showSuccess('删除成功');
                      f_reload();
                  },
                  error: function (message)
                  {
                      LG.showError(message);
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
            { text: '增加', click: itemclick , img:"../lib/icons/silkicons/add.png"}, 
            { line:true },
            { text: '修改', click: itemclick, img: "../lib/icons/miniicons/page_edit.gif" },
            { line: true },
             { text: '保存', click: itemclick, img: "../lib/icons/silkicons/page_save.png" },
            { line: true },
             { text: '取消', click: itemclick, img: "../lib/icons/silkicons/cancel.png" },
            { line: true },
            { text: '删除', click: itemclick, img: "../lib/icons/miniicons/page_delete.gif" },
            { line: true },
            { text: '快速增加 【增删改查】', id: 'fastaddbtn', click: itemclick, img: "../lib/icons/miniicons/page_delete.gif" } ,
            { line: true },
            { text: '清空按钮', id: 'clearbtns', click: itemclick, img: "../lib/icons/miniicons/page_cross.gif" } 
            
        ]
    };

    var grid = $("#maingrid").ligerGrid({
        columns: [
                { display: '按钮编号', name: 'BtnNo', align: 'left', width: 130, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                },
                { display: '按钮名称', name: 'BtnName', align: 'left', width: 300, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                }
                , { display: '图标', name: 'BtnIcon', align: 'left', width: 230, minWidth: 50
                , editor: { type: 'select',
                    ext:
                    function (rowdata)
                    {
                        return {
                            onBeforeOpen: function ()
                            {
                                currentComboBox = this;
                                f_openIconsWin();
                                return false;
                            },
                            render: function ()
                            {
                                return rowdata.BtnIcon;
                            }
                        };
                    }

                }
                , render: function (item)
                {
                    return "<div style='width:100%;height:100%;'><img src='../" + item.BtnIcon + "' /></div>";
                }
                }
                ],  toolbar: toolbarOptions, sortName: 'BtnID',
        width: '98%', height: '100%', heightDiff: -5, checkbox: false, 
        usePager: false, enabledEdit: true, clickToEdit: false,
        fixedCellHeight: true, rowHeight: 25,
        url: '../handler/grid.ashx?view=Sys_Button',
        parms: { where: JSON2.stringify({
            op: 'and',
            rules: [{ field: 'MenuNo', value:MenuNo, op: 'equal'}]
        })
        }
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
        var data = $.extend({ MenuNo: MenuNo }, e.newdata);
        if (!isAddNew)
            data.BtnID = e.record.BtnID;
        LG.ajax({
            loading: '正在保存数据中...',
            type: 'AjaxSystem',
            method: isAddNew ? "AddButton" : "UpdateButton",
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
