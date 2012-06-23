<%@page import="com.unis.app.system.service.SysRoleSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
	SysRoleSvc sysRoleSvc= (SysRoleSvc) ctx.getBean("sysRoleSvc");
	Map p=new HashMap();
	List<Map> list = sysRoleSvc.queryAll(p); 
	
	String lx=request.getParameter("lx");
	String lxms="";
	String nLx="";
	if("WC".equals(lx)){
		lxms="外出";
		nLx="1";
	}else if("QJ".equals(lx)){
		lxms="请假";
		nLx="2";
	}else{
		lxms="补休";
		nLx="3";
	}
 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<base href="<%=basePath%>">
<title><%=lxms %></title>
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
	src='<%=basePath%>dwr/interface/KqYbjlSvc.js'></script>

</head>
<body style="padding:10px;height:100%; text-align:center;">
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
  var dlgedit=null;
  var Validator = null;
  var edittype=null;
  var rowi=0;
  
  var dialog ;
  
	var oPage={
			pageIndex:1,
			pageSize:20
	}
	 var config ={"Grid":{
         columns: [
         { display: "姓名", name: "userId", width: 180, type: "text", align: "left" },
         { display: "原因", name: "cYy", width: 180, type: "text", align: "left" },
         { display: "开始时间", name: "dKssj", width: 180, type: "text", align: "left" },
         { display: "结束时间", name: "dJssj", width: 180, type: "text", align: "left" },
         { display: "登记时间", name: "dDj", width: 180, type: "text", align: "left" },
         { display: "状态", name: "cZt", width: 180, type: "text", align: "left" }
         ]      
},"Search":null};

     var grid = $("#maingrid").ligerGrid({
         columns: config.Grid.columns, pageSize: 20, toolbar: {},
         sortName: 'UserID', 
         width: '98%', height: '100%',heightDiff:-10, checkbox: false
     });
   //双击事件
 	LG.setGridDoubleClick(grid, 'modify');

 	//搜索表单应用ligerui样式
 	$("#formsearch").ligerForm( {
 		fields : [ {
 			display : "登记日期",
 			name : "dDjBeg",
 			newline : false,
 			labelWidth : 100,
 			width : 220,
 			space : 30,
 			type : "date",
 			cssClass : "field"
 		}, {
 			display : "至 ",
 			name : "dDjEnd",
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
                   // }
                    //,{line:true},{
                      //  click: toolbarBtnItemClick,
	                  // text: '查看',
	                  //  img:'<%=basePath%>liger/lib/icons/silkicons/application_view_detail.png',
	                   // id: 'view'
                   },
                   {line:true}];
    	grid.toolbarManager.set('items', items);

    	function loadGrid(obj){
    		if(!obj)obj={};
    		obj.nLx='<%=nLx%>';
    		KqYbjlSvc.queryByPage(obj,oPage,function(rdata){
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
            	//  f_dialog("add","新增上下班信息");
            	   dialog = $.ligerDialog.open({ title :'新增信息',url: '<%=basePath%>admin/app/duty/kqybjlDetail.jsp?nLx=<%=nLx%>', 
                       height: 350,width: 720,showMax: true, showToggle: true,  showMin: true
				  });
            	//  top.f_openDialog(null,'新增上下班信息','<%=basePath%>admin/app/user/userDetail.jsp' );
                  break;
            //  case "view":
            //      var selected = grid.getSelected();
            //      if (!selected) { LG.tip('请选择行!'); return }
            //      top.f_addTab(null, '查看上下班信息', '<%=basePath%>admin/app/duty/kqybjlDetail.jsp?IsView=1&nLx=<%=nLx%>&ID=' + selected.UserID);
            //      break;
              case "modify":
            	  
            	  var selected = grid.getSelected();
                        if (!selected) { LG.tip('请选择行!'); return }
                       dialog = $.ligerDialog.open({ title :'修改信息',url: '<%=basePath%>admin/app/duty/kqybjlDetail.jsp?nLx=<%=nLx%>&nXh=' + selected.nXh, 
                       height: 350,width: 720,showMax: true, showToggle: true,  showMin: true
				  });
                       break;
            	 
				break;
			case "delete":
				jQuery.ligerDialog.confirm('确定删除吗?', function(confirm) {
					if (confirm)
						f_remove();
				});
				break;
			}
		}


		function f_remove() {
			var selected = grid.getSelected();
			if (selected) {
				KqYbjlSvc.remove(selected, function(rdata) {
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

		function f_reload() {
			  grid.loadData();
		}
	
		  function dialog_hidden()
	      {
	    	  dialog.hidden();
	      }
	</script>


		
		
</body>
</html>
