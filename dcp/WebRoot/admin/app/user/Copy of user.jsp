<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<base href="<%=basePath%>">
<title>用户</title>
<link
	href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css"
	rel="stylesheet" type="text/css" />
<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css"
	rel="stylesheet" type="text/css" />
<script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js"
	type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js"
	type="text/javascript"></script>
<link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet"
	type="text/css" />
<script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/js/ligerui.expand.js"
	type="text/javascript"></script>
<script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/SysUserSvc.js'></script>
<script type='text/javascript' src='<%=basePath%>js/formUtil.js'></script>

</head>
<body style="padding:10px;height:100%; text-align:center;">
	<ipnut type="hidden" id="MenuNo" value="MemberManageUser" />
	<div id="mainsearch" style=" width:98%">
		<div class="searchtitle">
			<span>搜索</span><img
				src="<%=basePath%>liger/lib/icons/32X32/searchtool.gif" />
			<div class="togglebtn"></div>
		</div>
		<div class="navline" style="margin-bottom:4px; margin-top:4px;"></div>
		<div class="searchbox">
			<form id="formsearch" class="l-form"></form>
		</div>
	</div>
	<div id="maingrid"></div>

	<script type="text/javascript">
  var dlgedit=null;
  var Validator = null;
  var edittype=null;
  var rowi=0;
  
	var oPage={
			pageIndex:1,
			pageSize:20
	}
	 var config ={"Grid":{
         columns: [
         { display: "账号", name: "userName", width: 180, type: "text", align: "left" }, 
         { display: "密码", name: "userPassword", width: 180, type: "text", align: "left" },
         { display: "状态", name: "userLock", width: 180, type: "text", align: "left" }
         ]      
},"Search":null};

     var grid = $("#maingrid").ligerGrid({
         columns: config.Grid.columns, pageSize: 20, toolbar: {},
         sortName: 'UserID', 
         width: '98%', height: '100%',heightDiff:-10, checkbox: true
     });
    
        //双击事件
   //   LG.setGridDoubleClick(grid, 'modify');

      //搜索表单应用ligerui样式
      //$("#formsearch").ligerForm({
	//	   fields:[],
	//	   appendID:false,
		//   toJSON: JSON2.stringify 
	 // });

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

    	function loadGrid(obj){
    		if(!obj)obj={};
    		SysUserSvc.queryByPage(obj,oPage,function(rdata){
    			if(rdata == null){
    				  grid.setOptions({ data:  { Total:0, Rows:""  } });
    			}else{
    				grid.setOptions({ data:  { Total:rdata.page.recordCount, Rows:rdata.data  } });
        		}
    		});
    	}
     
    	loadGrid();
     //     alert($d(grid.data ));
      //工具条事件
      function toolbarBtnItemClick(item) {
          switch (item.id) {
              case "add":
            	  f_edit("add",null);
            	//  top.f_openDialog(null,'新增用户信息','<%=basePath%>admin/app/user/userDetail.jsp' );
                  break;
              case "view":
                  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  top.f_addTab(null, '查看用户信息', '<%=basePath%>admin/app/user/userDetail.jsp?IsView=1&ID=' + selected.UserID);
                  break;
              case "modify":
            	  f_edit("add",null);
				break;
			case "delete":
				jQuery.ligerDialog.confirm('确定删除吗?', function(confirm) {
					if (confirm)
						f_delete();
				});
				break;
			}
		}

		function f_save(d) {
			var formUtil = new FormUtil();
			var obj = formUtil.getFormValue("mainform");
			alert($d(obj));
			if (!obj)
				return;
			SysUserSvc.save(obj, function(rdata) {
				if (rdata) {
					LG.showSuccess('保存成功', function() {
						loadGrid();
						$("input").ligerHideTip(); 
						d.hide();
					});
				} else {
					LG.showError('保存失败');
				}
			});

		};

		function f_edit(type, rowindex) {
			if (type != "add") {
				$("#userName").val(grid.getRow(rowindex).userName);
				$("#userPassword").val(grid.getRow(rowindex).userPassword);
				$("#userPassword2").val(grid.getRow(rowindex).userPassword2);
				$("#userLock").val(grid.getRow(rowindex).userLock);
			} else {
				$("#userName").val("");
				$("#userPassword").val("");
				$("#userPassword2").val("");
				$("#userLock").val("");
			}
			edittype = type;
			rowi = rowindex;
			if (dlgedit == null) {
				dlgedit = $.ligerDialog.open({
					width : 350, //宽度
					height : null,
					title : '新增用户信息',
					target : $("#divedit"),
					 buttons: [  { text: '保存', onclick: function (i, d) { f_save(d); }}, 
                                 { text: '关闭', onclick: function (i, d) { $("input").ligerHideTip(); d.hide(); }} 
                              ]
				});

				$(".l-dialog-close").bind('mousedown', function() //dialog右上角的叉
				{
					$("input").ligerHideTip();
					dlgedit.hide();
				});

				$(".l-dialog-title").bind('mousedown', function() //移动dialog时,隐藏tip
				{
					$("input").ligerHideTip();
				});
			} else {
				dlgedit.show();
			}

		}

		function f_reload() {
			//  grid.loadData();
		}
		function f_delete() {
			var selected = grid.getSelected();
			if (selected) {
				LG.ajax({
					type : 'AjaxMemberManage',
					method : 'RemoveUser',
					loading : '正在删除中...',
					data : {
						ID : selected.UserID
					},
					success : function() {
						LG.showSuccess('删除成功');
						f_reload();
					},
					error : function(message) {
						LG.showError(message);
					}
				});
			} else {
				LG.tip('请选择行!');
			}
		}
	</script>

<div style="display: none">
<dir id='divedit'>
<form class="l-form" id="mainform" method="post"  ligeruiid="mainform">
	<input id="userId" name="userId" type="hidden">
		<div class="l-group l-group-hasicon">
			<img
				src="<%=basePath%>liger/lib/icons/32X32/communication.gif">
				<span>基本信息</span>
		</div>
		<ul>
			<li style="width: 100px; text-align: left;">帐号：</li>
			<li style="width: 220px; text-align: left;"><div
					style="width: 218px;" class="l-text">
					<input style="width: 214px;" id="userName" class="l-text-field"
						name="userName" type="text" ligeruiid="userName"
						ltype="text" ligerui='{"width":218}'><div class="l-text-l"></div>
						<div class="l-text-r"></div>
				</div>
			</li>
			<li style="width: 30px;"></li>
		</ul>
		<ul>
			<li style="width: 100px; text-align: left;">密码：</li>
			<li style="width: 220px; text-align: left;"><div
					style="width: 218px;" class="l-text">
					<input style="width: 214px;" id="userPassword" class="l-text-field"
						name="userPassword" type="password" ligeruiid="userPassword"
						ltype="password" ligerui='{"width":218}'><div
							class="l-text-l"></div>
						<div class="l-text-r"></div>
				</div>
			</li>
			<li style="width: 30px;"></li>
		</ul>
		<ul>
			<li style="width: 100px; text-align: left;">确认密码：</li>
			<li style="width: 220px; text-align: left;"><div
					style="width: 218px;" class="l-text">
					<input style="width: 214px;" id="userPassword2"
						class="l-text-field" name="userPassword2" type="password"
						ligeruiid="userPassword2"
						ltype="password" ligerui='{"width":218}'><div
							class="l-text-l"></div>
						<div class="l-text-r"></div>
				</div>
			</li>
			<li style="width: 30px;"></li>
		</ul>
		<ul>
			<li style="width: 100px; text-align: left;">已锁定：</li>
			<li style="width: 220px; "><div
					class="l-checkbox-wrapper">
					<input id="userLock" 
						name="userLock" type="checkbox" ligeruiid="userLock"
						ltype="checkbox" ligerui='{"width":218}'  value="1">
				</div>
			</li>
			<li style="width: 30px;"></li>
		</ul>
		</div>
		</form>
		</dir>
		</dir>
		
		
</body>
</html>
