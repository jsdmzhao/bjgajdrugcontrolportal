<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
	<base href="<%=basePath%>">
     <title>用户</title> 
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>   
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>   
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
</head>
<body style="padding:10px;height:100%; text-align:center;">
   <ipnut type="hidden" id="MenuNo" value="MemberManageUser" />
  <div id="mainsearch" style=" width:98%">
    <div class="searchtitle">
        <span>搜索</span><img src="<%=basePath%>liger/lib/icons/32X32/searchtool.gif" />
        <div class="togglebtn"></div> 
    </div>
    <div class="navline" style="margin-bottom:4px; margin-top:4px;"></div>
    <div class="searchbox">
        <form id="formsearch" class="l-form"></form> 
    </div>
  </div>
  <div id="maingrid"></div> 
  
  <script type="text/javascript">
       var config ={"Grid":{
          columns: [
          { display: "账号", name: "LoginName", width: 180, type: "text", align: "left" }, 
          //{ display: "密码", name: "LoginPassword", width: 180, type: "text", align: "left" },
          { display: "真实姓名", name: "RealName", width: 180, type: "text", align: "left" },
          { display: "头衔", name: "Title", width: 180, type: "text", align: "left" },
          { display: "性别", name: "Sex", width: 180, type: "text", align: "left" },
          { display: "电话", name: "Phone", width: 180, type: "text", align: "left" },
          { display: "传真", name: "Fax", width: 180, type: "text", align: "left" },
          { display: "电子邮件", name: "Email", width: 180, type: "text", align: "left" }, 
          { display: "QQ", name: "QQ", width: 180, type: "text", align: "left" },
          { display: "昵称", name: "NickName", width: 180, type: "text", align: "left" },
          { display: "地址", name: "Address", width: 180, type: "textarea", align: "left" }
          ]      
},"Search":null};

       //禁止的字段
      var forbidFields = ["DeptID","LoginPassword","LoginPassword2","RoleID","EmployeeID","SupplierID"];

       //根据字段权限 调整
     //  LG.adujestConfig(config,forbidFields);

      //相对路径
     // var rootPath = "../";
      //列表结构
      
      var tempdata = {"Rows":[
                              {"UserID":1,"LoginName":"daomi","LoginPassword":"1","DeptID":null,"SupplierID":null,"EmployeeID":null,"RealName":"稻米","Title":"稻米","Sex":"男","Phone":null,"Fax":null,"Email":"gd_star@163.com","QQ":"175932810","NickName":"稻米","Address":null,"LastLoginTime":"\/Date(1332122487000)\/","CreateUserID":null,"CreateDate":null,"ModifyUserID":null,"ModifyDate":null,"RecordStatus":null},{"UserID":2,"LoginName":"test3","LoginPassword":"1","DeptID":5,"SupplierID":null,"EmployeeID":5,"RealName":"录入员1","Title":"基础数据录入员1","Sex":"男","Phone":null,"Fax":null,"Email":null,"QQ":null,"NickName":null,"Address":null,"LastLoginTime":"\/Date(1331978644000)\/","CreateUserID":null,"CreateDate":null,"ModifyUserID":null,"ModifyDate":null,"RecordStatus":null},{"UserID":3,"LoginName":"test2","LoginPassword":"1","DeptID":1,"SupplierID":null,"EmployeeID":null,"RealName":"录入员2","Title":"客户数据录入员2","Sex":"男","Phone":"44","Fax":"44","Email":null,"QQ":null,"NickName":null,"Address":null,"LastLoginTime":"\/Date(1331978658000)\/","CreateUserID":null,"CreateDate":null,"ModifyUserID":null,"ModifyDate":null,"RecordStatus":null},{"UserID":4,"LoginName":"test1","LoginPassword":"1","DeptID":null,"SupplierID":null,"EmployeeID":null,"RealName":"高级演示账号1","Title":"高级演示账号1","Sex":null,"Phone":null,"Fax":null,"Email":null,"QQ":null,"NickName":null,"Address":null,"LastLoginTime":"\/Date(1338136438000)\/","CreateUserID":null,"CreateDate":null,"ModifyUserID":null,"ModifyDate":null,"RecordStatus":null},{"UserID":5,"LoginName":"test4","LoginPassword":"1","DeptID":3,"SupplierID":null,"EmployeeID":1,"RealName":"订单查看员1","Title":"订单查看员1 - Sales Representative","Sex":null,"Phone":null,"Fax":null,"Email":null,"QQ":null,"NickName":null,"Address":null,"LastLoginTime":"\/Date(1332009024000)\/","CreateUserID":null,"CreateDate":null,"ModifyUserID":null,"ModifyDate":null,"RecordStatus":null},{"UserID":6,"LoginName":"test5","LoginPassword":"1","DeptID":null,"SupplierID":1,"EmployeeID":null,"RealName":"供应商1","Title":"供应商1 - Exotic Liquids44","Sex":null,"Phone":null,"Fax":null,"Email":null,"QQ":null,"NickName":null,"Address":null,"LastLoginTime":"\/Date(1332009007000)\/","CreateUserID":null,"CreateDate":null,"ModifyUserID":null,"ModifyDate":null,"RecordStatus":null}
                              ],"Total":"6"};
      var grid = $("#maingrid").ligerGrid({
          columns: config.Grid.columns, pageSize: 20, toolbar: {},
          sortName: 'UserID', 
          width: '98%', height: '100%',heightDiff:-10, checkbox: false,
           data: tempdata
      });

        //双击事件
     // LG.setGridDoubleClick(grid, 'modify');

      //搜索表单应用ligerui样式
      $("#formsearch").ligerForm({
		   fields:[],
		   appendID:false,
		   toJSON: JSON2.stringify 
	  });

      //增加搜索按钮,并创建事件
      LG.appendSearchButtons("#formsearch", grid);

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
      function toolbarBtnItemClick(item) {
          switch (item.id) {
              case "add":
                  top.f_addTab(null, '增加用户信息', '<%=basePath%>admin/app/user/userDetail.jsp');
                  break;
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  top.f_addTab(null, '查看用户信息', '<%=basePath%>admin/app/user/userDetail.jsp?IsView=1&ID=' + selected.UserID);
                  break;
              case "modify":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  top.f_addTab(null, '修改用户信息', '<%=basePath%>admin/app/user/userDetail.jsp?ID=' + selected.UserID);
                  break;
              case "delete":
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
              LG.ajax({
                  type: 'AjaxMemberManage',
                  method: 'RemoveUser',
                  loading: '正在删除中...',
                  data: { ID: selected.UserID },
                  success: function () {
                      LG.showSuccess('删除成功');
                      f_reload();
                  },
                  error: function (message) {
                      LG.showError(message);
                  }
              });
          }
          else {
              LG.tip('请选择行!');
          }
      }
  </script>
</body>
</html>
