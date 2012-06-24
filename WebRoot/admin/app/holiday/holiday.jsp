<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>假日</title>
		<link
			href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css"
			rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css"
			rel="stylesheet" type="text/css" />
		<script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js"
			type="text/javascript"></script>
		<link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet"
			type="text/css" />
		<script src="<%=basePath%>liger/lib/js/common.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/js/ligerui.expand.js"
			type="text/javascript"></script>
		<script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
		  <script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/HolidaySvc.js'></script>
	</head>
	<body style="padding: 10px; height: 100%; text-align: center;">
		<div id="mainsearch" style="width: 98%">
			<div class="searchtitle">
				<span>搜索</span>
				<img src="<%=basePath%>liger/lib/icons/32X32/searchtool.gif" />
				<div class="togglebtn"></div>
			</div>
			<div class="navline" style="margin-bottom: 4px; margin-top: 4px;"></div>
			<div class="searchbox">
				<form id="formsearch" class="l-form"></form>
			</div>
		</div>
		<div id="maingrid"></div>
		<script type="text/javascript">

		var oPage={
				pageIndex:1,
				pageSize:1000
		}
	//相对路径
	var rootPath = "../";
	//列表结构
	var grid = $("#maingrid").ligerGrid( {
		columns : [ {
			display : "日期",
			name : "dRq",
			width : 120
		}, {
			display : "状态",
			name : "cZt",
			width : 180
		}],
		dataAction : 'server',
		pageSize : 20,
		toolbar : {},
	//	url : rootPath + 'handler/grid.ashx?view=Employees',
		sortName : 'nXh',
		width : '98%',
		height : '100%',
		heightDiff : -10,
		checkbox : false
	});

	 function loadGrid(obj){
			if(!obj)obj={};
			HolidaySvc.queryByPage(obj,oPage,function(rdata){
				if(rdata == null){
					  grid.setOptions({ data:  { Total:0, Rows:'' } });
				}else{
					  grid.setOptions({ data:  { Total:rdata.page.recordCount, Rows:rdata.data  } });
	    		}
			});
		}

	 loadGrid();
	//双击事件
	LG.setGridDoubleClick(grid, 'modify');

	//搜索表单应用ligerui样式
	$("#formsearch").ligerForm( {
		fields : [ {
			display : "日期范围",
			name : "dRqBeg",
			newline : false,
			labelWidth : 100,
			width : 220,
			space : 30,
			type : "date",
			cssClass : "field"
		}, {
			display : "至 ",
			name : "dRqEnd",
			newline : false,
			labelWidth : 100,
			width : 220,
			space : 30,
			type : "date",
			cssClass : "field"
		} ],
		toJSON : JSON2.stringify
	});

	//增加搜索按钮,并创建事件
	LG.appendSearchButtons("#formsearch", grid);

	//加载toolbar
	//LG.loadToolbar(grid, toolbarBtnItemClick);

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
	    }
	    ,{line:true},{
	        click: toolbarBtnItemClick,
	       text: '快速增加(7天)',
	        img:'<%=basePath%>liger/lib/icons/silkicons/application_view_detail.png',
	        id: 'quick'
	   },
	   {line:true}];
	grid.toolbarManager.set('items', items);
	//工具条事件
	function toolbarBtnItemClick(item) {
		switch (item.id) {
		case "add":
		//	top.f_addTab(null, '增加假日信息', 'BaseManage/EmployeesDetail.aspx');
			 f_dialog("add","新增假日信息");
			break;
		case "quick":
			f_quick();
			break;
		case "modify":
			var selected = grid.getSelected();
			if (!selected) {
				LG.tip('请选择行!');
				return
			}
			f_dialog("modify","修改假日信息");
			break;
		case "delete":
			jQuery.ligerDialog.confirm('确定删除吗?', function(confirm) {
				if (confirm)
					f_delete();
			});
			break;
		}
	}
	function f_reload() {
		grid.loadData();
	}

	function f_quick() {
			HolidaySvc.quick(function(rdata) {
				if (rdata) {
					LG.showSuccess('快速增加成功');
					loadGrid();
				} else {
					LG.showError('快速增加失败');
				}
			});
	}

	
	function f_delete() {
		var selected = grid.getSelected();
		if (selected) {
			HolidaySvc.remove(selected, function(rdata) {
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

	function f_save(d) {
		var cZt;
		if($('#cZt').attr("checked")){
			cZt='1';
		}else{
			cZt='0';
		}
		var obj = {
		dRq: $("#dRq").val(),
		cZt: cZt
		}

		if (!obj)
			return;
		HolidaySvc.save(obj, function(rdata) {
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

	
	function f_update(d) {
		var cZt;
		if($('#cZt').attr("checked")){
			cZt='1';
		}else{
			cZt='0';
		}
		
	var obj = {
	nXh: $("#nXh").val(),
	dRq: $("#dRq").val(),
	cZt: cZt
	}
	if (!obj)
		return;
	HolidaySvc.update(obj, function(rdata) {
		if (rdata) {
			LG.showSuccess('修改成功', function() {
				loadGrid();
				$("input").ligerHideTip(); 
				d.hide();
			});
		} else {
			LG.showError('修改失败');
		}
	});
};

	
	function f_dialog(type,title) {
		if (type == "add") {
			$("#dRq").val("");
			$('#cZt').attr("checked", false);   
			
		//	$("#userLock").val("");
			dlgedit = $.ligerDialog.open({
				width : 350, //宽度
				height : null,
				title : title,
				target : $("#divedit"),
				 buttons: [  { text: '保存', onclick: function (i, d) { f_save(d); }}, 
                             { text: '关闭', onclick: function (i, d) { $("input").ligerHideTip(); d.hide(); }} 
                          ]
			});
		}else {
			var selected = grid.getSelected();
			if (selected) {
			$("#nXh").val(grid.getSelected().nXh);
			$("#dRq").val(grid.getSelected().dRq);
			if(grid.getSelected().cZt=='1'){
				$('#cZt').attr("checked", true);  
			}else{
				$('#cZt').attr("checked", false);  
			}
		//	$("#userLock").val(grid.getSelected().userLock);
				dlgedit = $.ligerDialog.open({
					width : 350, //宽度
					height : null,
					title : title,
					target : $("#divedit"),
					 buttons: [  { text: '保存', onclick: function (i, d) { f_update(d); }}, 
                                 { text: '关闭', onclick: function (i, d) { $("input").ligerHideTip(); d.hide(); }} 
                              ]
				});
			} else {
				LG.tip('请选择行!');
				return;
			}
		}

			$(".l-dialog-close").bind('mousedown', function() //dialog右上角的叉
			{
				$("input").ligerHideTip();
				dlgedit.hide();
			});

			$(".l-dialog-title").bind('mousedown', function() //移动dialog时,隐藏tip
			{
				$("input").ligerHideTip();
			});
			dlgedit.show();
		}
</script>
	
<div style="display: none">
<div id='divedit'>
<form class="l-form" id="mainform" method="post"  ligeruiid="mainform">
	<input id="nXh" name="nXh" type="hidden">
		<div class="l-group l-group-hasicon">
			<img
				src="<%=basePath%>liger/lib/icons/32X32/communication.gif">
				<span>基本信息</span>
		</div>
		<ul>
			<li style="width: 100px; text-align: left;">日期：<br>(YYYY-MM-DD)</li>
			<li style="width: 180px; text-align: left;"><div
					style="width: 160px;" class="l-text">
					<input style="width: 160px;" id="dRq" class="l-text-field"
						name="dRq" type="text" ligeruiid="dRq"
						ltype="text" ligerui='{"width":160}'><<div class="l-text-l"></div>
						<div class="l-text-r"></div>
				</div>
			</li>
			<li style="width: 30px;"></li>
		</ul>
		
		<ul>
			<li style="width: 100px; text-align: left;">是否假日：</li>
			<li style="width: 150px; "><div
					class="l-checkbox-wrapper">
					<input id="cZt" 
						name="cZt" type="checkbox" ligeruiid="cZt"
						ltype="checkbox" ligerui='{"width":148}'  >
				</div>
			</li>
			<li style="width: 30px;"></li>
		</ul>
		</div>
		</form>
		</div>
		</div>
		
		
</body>
</html>