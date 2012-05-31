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
                      top.f_addTab(null, '增加新闻信息', '<%=basePath%>admin/app/news/newsDetail.jsp');
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  break;
              case "修改":
                  if (editingrow == null)
                  {
                      op.f_addTab(null, '修改用户信息', '<%=basePath%>admin/app/news/newsDetail?n_xh=' + selected.n_xh);
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
          grid.loadData();
      }
      function f_delete()
      { 
          var selected = grid.getSelected();
          if (selected)
          {
              if (!selected.MenuID)
              {
                  grid.deleteRow(selected);
                  return;
              }
              LG.ajax({
                  type: 'AjaxSystem',
                  method: 'RemoveMenu',
                  loading:'正在删除中...',
                  data: { MenuID: selected.MenuID },
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

    var currentMenuParentNo;
    var treefilter = {
        op: 'or',
        rules: [
        { field: 'MenuParentNo', value: '', op: 'equal' },
        { field: 'MenuParentNo', op: 'isnull' }
        ]
    };

    var tempdata={"Rows":[{"MenuID":8,"MenuNo":"sysmenu","MenuParentNo":"system","MenuOrder":null,"MenuName":"菜单管理","MenuUrl":"system/menu.aspx","MenuIcon":"lib/icons/32X32/sitemap.gif","IsVisible":1,"IsLeaf":1},{"MenuID":19,"MenuNo":"sysright","MenuParentNo":"system","MenuOrder":null,"MenuName":"权限中心","MenuUrl":"system/right.aspx","MenuIcon":"lib/icons/32X32/link.gif","IsVisible":null,"IsLeaf":null},{"MenuID":42,"MenuNo":"BaseManage","MenuParentNo":null,"MenuOrder":0,"MenuName":"基础信息管理","MenuUrl":null,"MenuIcon":"lib/icons/silkicons/application.png","IsVisible":1,"IsLeaf":0},{"MenuID":43,"MenuNo":"BaseManageCategories","MenuParentNo":"BaseManage","MenuOrder":0,"MenuName":"类别","MenuUrl":"BaseManage/Categories.aspx","MenuIcon":"lib/icons/32X32/basket.gif","IsVisible":1,"IsLeaf":0},{"MenuID":44,"MenuNo":"BaseManageProducts","MenuParentNo":"BaseManage","MenuOrder":0,"MenuName":"产品","MenuUrl":"BaseManage/Products.aspx","MenuIcon":"lib/icons/32X32/product_169.gif","IsVisible":1,"IsLeaf":0},{"MenuID":45,"MenuNo":"BaseManageSuppliers","MenuParentNo":"BaseManage","MenuOrder":0,"MenuName":"供应商","MenuUrl":"BaseManage/Suppliers.aspx","MenuIcon":"lib/icons/32X32/suppliers.gif","IsVisible":1,"IsLeaf":0},{"MenuID":46,"MenuNo":"BaseManageEmployees","MenuParentNo":"BaseManage","MenuOrder":0,"MenuName":"员工","MenuUrl":"BaseManage/Employees.aspx","MenuIcon":"lib/icons/32X32/my_account.gif","IsVisible":1,"IsLeaf":0},{"MenuID":52,"MenuNo":"CustomerManage","MenuParentNo":null,"MenuOrder":0,"MenuName":"客户管理","MenuUrl":null,"MenuIcon":"lib/icons/silkicons/application.png","IsVisible":1,"IsLeaf":0},{"MenuID":53,"MenuNo":"CustomerManageCustomers","MenuParentNo":"CustomerManage","MenuOrder":0,"MenuName":"客户","MenuUrl":"CustomerManage/Customers.aspx","MenuIcon":"lib/icons/32X32/comment.gif","IsVisible":1,"IsLeaf":0},{"MenuID":54,"MenuNo":"OrderManage","MenuParentNo":null,"MenuOrder":0,"MenuName":"订单管理","MenuUrl":null,"MenuIcon":"lib/icons/32X32/order_159.gif","IsVisible":1,"IsLeaf":0},{"MenuID":56,"MenuNo":"OrderManageOrders","MenuParentNo":"OrderManage","MenuOrder":0,"MenuName":"订单","MenuUrl":"OrderManage/Orders.aspx","MenuIcon":"lib/icons/32X32/product_169.gif","IsVisible":1,"IsLeaf":0},{"MenuID":57,"MenuNo":"OrderManageShippers","MenuParentNo":"OrderManage","MenuOrder":0,"MenuName":"托运人","MenuUrl":"OrderManage/Shippers.aspx","MenuIcon":"lib/icons/32X32/order_159.gif","IsVisible":1,"IsLeaf":0},{"MenuID":58,"MenuNo":"MemberManage","MenuParentNo":null,"MenuOrder":0,"MenuName":"组织架构","MenuUrl":null,"MenuIcon":"lib/icons/silkicons/application.png","IsVisible":1,"IsLeaf":0},{"MenuID":59,"MenuNo":"MemberManageDepartment","MenuParentNo":"MemberManage","MenuOrder":0,"MenuName":"部门","MenuUrl":"MemberManage/Department.aspx","MenuIcon":"lib/icons/32X32/customers.gif","IsVisible":1,"IsLeaf":0},{"MenuID":61,"MenuNo":"MemberManageRole","MenuParentNo":"MemberManage","MenuOrder":0,"MenuName":"角色","MenuUrl":"MemberManage/Role.aspx","MenuIcon":"lib/icons/32X32/my_account.gif","IsVisible":1,"IsLeaf":0},{"MenuID":62,"MenuNo":"MemberManageUser","MenuParentNo":"MemberManage","MenuOrder":0,"MenuName":"用户","MenuUrl":"MemberManage/User.aspx","MenuIcon":"lib/icons/32X32/role.gif","IsVisible":1,"IsLeaf":0},{"MenuID":64,"MenuNo":"sysDataPrivilege","MenuParentNo":"system","MenuOrder":null,"MenuName":"数据权限","MenuUrl":"system/DataPrivilege.aspx","MenuIcon":"lib/icons/32X32/setup.gif","IsVisible":null,"IsLeaf":null},{"MenuID":65,"MenuNo":"sysAdminMethodPrivilege","MenuParentNo":"system","MenuOrder":null,"MenuName":"底层权限","MenuUrl":"system/AdminMethod.aspx","MenuIcon":"lib/icons/32X32/config.gif","IsVisible":null,"IsLeaf":null},{"MenuID":66,"MenuNo":"sysConfiguration","MenuParentNo":"system","MenuOrder":null,"MenuName":"页面配置(字段权限)","MenuUrl":"system/Configuration.aspx","MenuIcon":"lib/icons/32X32/consulting.gif","IsVisible":null,"IsLeaf":null},{"MenuID":1,"MenuNo":"system","MenuParentNo":null,"MenuOrder":10,"MenuName":"系统管理","MenuUrl":null,"MenuIcon":"lib/icons/32X32/future_projects.gif","IsVisible":1,"IsLeaf":0}],"Total":"20"};
    var tree = $("#maintree").ligerTree({
        url: '../handler/tree.ashx?' +
    $.param({
        root: '主菜单',
        rooticon: '<%=basePath%>liger/lib/icons/32X32/category.gif',
        view: 'Sys_Menu',
        idfield: 'MenuNo',
        pidfield: 'MenuParentNo',
        textfield: 'MenuName',
        iconfield: 'MenuIcon',
        iconroot: '../',
        where: JSON2.stringify(treefilter)
    }),
        checkbox: false,
        onClick: function (node)
        {
            if (!node.data.MenuNo) return;
            var where = {
                op: 'and',
                rules: [{ field: 'MenuParentNo', value: node.data.MenuNo, op: 'equal'}]
            };
            currentMenuParentNo = node.data.MenuNo;
            grid.set('parms', { where: JSON2.stringify(where) });
            grid.set('data', tempdata);
        }
    });

    var layout = $("#layout").ligerLayout({ leftWidth: 140 });
     
    var grid = $("#maingrid").ligerGrid({
        //headerImg:"<%=basePath%>liger/lib/icons/silkicons/table.png",title:'表格表头',
        columns: [
                { display: '序号', name: 'n_xh', align: 'left', width: 180, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'hidden' }
                },
                { display: '新闻标题', name: 'MenuNo', align: 'left', width: 330, minWidth: 100
                , validate: { required: true }
                , editor: { type: 'text' }
                },
                { display: '发布时间', name: 'MenuUrl', align: 'left', width: 300, minWidth: 60
                , validate: { required: true }
                , editor: { type: 'text' }
                }
                , { display: '图标', name: 'MenuIcon', align: 'left', width: 230, minWidth: 50
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
                                return rowdata.MenuIcon;
                            }
                        };
                    } }
                , render: function (item)
                {
                    return "<div style='width:100%;height:100%;'><img src='../" + item.MenuIcon + "' /></div>";
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
        var data = $.extend({ MenuParentNo: currentMenuParentNo }, e.newdata);
        if (!isAddNew)
            data.MenuID = e.record.MenuID;
        LG.ajax({
            loading: '正在保存数据中...',
            type: 'AjaxSystem',
            method: isAddNew ? "AddMenu" : "UpdateMenu",
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
