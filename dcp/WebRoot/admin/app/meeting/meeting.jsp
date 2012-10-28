<%@page import="com.unis.app.system.service.SysRoleSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	Object userId=request.getParameter("userId");
	String str="";
	if(userId!=null){
		str="&userId="+userId;
	}else{
		userId="";
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<base href="<%=basePath%>">
<title>出差</title>
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
	src='<%=basePath%>dwr/interface/HyjlSvc.js'></script>
<script type='text/javascript'
	src='<%=basePath%>dwr/interface/UserInfoSvc.js'></script>	

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
	
  DWREngine.setAsync(false); 
  
  var dlgedit=null;
  var Validator = null;
  var edittype=null;
  var rowi=0;
  
  var dialog ;
  
	var oPage={
			pageIndex:1,
			pageSize:1000
	};
	
	 var userList;
    UserInfoSvc.chooseOnlyUser(function(userData){
  	   userList=userData;
    });
    
	 var config ={"Grid":{
         columns: [
                   { display: "会议主题", name: "cHyzt", width: 180, type: "text", align: "left" },
                   { display: "会议地点", name: "cHydd", width: 180, type: "text", align: "left" },
                    { display: "日期", name: "dRq", width: 180, type: "text", align: "left" },
                   { display: "人员", name: "cCjry", width: 180, type: "text", align: "left" },
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
 			display : "日期范围",
 			name : "dRqBeg",
 			newline : false,
 			labelWidth : 80,
 			width : 100,
 			space : 10,
 			type : "date",
 			cssClass : "field"
 		}, {
 			display : "至",
 			name : "dRqEnd",
 			newline : false,
 			labelWidth : 30,
 			width : 100,
 			space : 30,
 			type : "date",
 			cssClass : "field"
 		}
 		],
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
    		<%if(!"".equals(userId)){%>
    			obj.userId='<%=userId%>';
    		<%}%>
    		HyjlSvc.queryByPage(obj,oPage,function(rdata){
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
            	   dialog = $.ligerDialog.open({ title :'新增信息',url: '<%=basePath%>admin/app/meeting/meetingDetail.jsp?a=1<%=str%>', 
                       height: 350,width: 720,showMax: true, showToggle: true,  showMin: true
				  });
            	//  top.f_openDialog(null,'新增上下班信息','<%=basePath%>admin/app/user/userDetail.jsp' );
                  break;
            //  case "view":
            //      var selected = grid.getSelected();
            //      if (!selected) { LG.tip('请选择行!'); return }
            //      top.f_addTab(null, '查看上下班信息', '<%=basePath%>admin/app/meeting/meetingDetail.jsp?IsView=1&ID=' + selected.UserID+'<%=str%>');
            //      break;
              case "modify":
            	  
            	  var selected = grid.getSelected();
                        if (!selected) { LG.tip('请选择行!'); return }
                       dialog = $.ligerDialog.open({ title :'修改信息',url: '<%=basePath%>admin/app/meeting/meetingDetail.jsp?nXh=' + selected.nXh+'<%=str%>', 
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
				HyjlSvc.remove(selected, function(rdata) {
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
