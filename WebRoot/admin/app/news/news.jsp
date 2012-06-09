<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String newsType = request.getParameter("newsType");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>">
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
    
    <script src='<%=basePath%>dwr/engine.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/util.js' type='text/javascript' ></script>
  	<script src='<%=basePath%>dwr/interface/NewsAction.js' type='text/javascript' ></script>
  	
  	
    <style type="text/css">
    .l-panel td.l-grid-row-cell-editing { padding-bottom: 2px;padding-top: 2px;}
    </style>
</head>
<body style="padding:2px;height:100%; text-align:center;">
  <input type="hidden" name="MenuNo" value="NewsGridTable"/>
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

      var newsType = '<%=newsType %>';
  
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
                      top.f_addTab(null, '增加新闻信息', '<%=basePath%>admin/app/news/newsDetail.jsp?newsType='+newsType);
                  } else
                  {
                      LG.tip('请先提交或取消修改');
                  }
                  break;
              case "修改":
             	  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  if (editingrow == null)
                  {
                      top.f_addTab(null, '修改新闻信息', '<%=basePath%>newsUpdate?news.n_xh=' + selected.n_xh);
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
              case "查看":
            	  var selected = grid.getSelected();
                  if (!selected) { LG.tip('请选择行!'); return }
                  if (editingrow == null ) {
                      top.f_addTab(null, '查看新闻信息', '<%=basePath%>newsView?news.n_xh=' + selected.n_xh);
                  } else {
                      LG.tip('现在不在编辑状态!');
                  }
                  break;
              case "删除": 
                  $.ligerDialog.confirm('确定删除吗?', function (confirm) {
                      if (confirm)
                          f_delete();
                  });
                  break;
              case "置顶": 
                  $.ligerDialog.confirm('确定置顶吗?', function (confirm) {
                      if (confirm)
                          f_operate('zd','1');
                  });
                  break;
              case "取消置顶": 
                  $.ligerDialog.confirm('确定取消置顶吗?', function (confirm) {
                      if (confirm)
                          f_operate('zd','0');
                  });
                  break;
              case "高亮": 
                  $.ligerDialog.confirm('确定高亮吗?', function (confirm) {
                      if (confirm)
                    	  f_operate('gl','1');
                  });
                  break;
              case "取消高亮": 
                  $.ligerDialog.confirm('确定取消高亮吗?', function (confirm) {
                      if (confirm)
                    	  f_operate('gl','0');
                  });
                  break;
              case "推荐": 
                  $.ligerDialog.confirm('确定推荐吗?', function (confirm) {
                      if (confirm)
                    	  f_operate('tj','1');
                  });
                  break;
              case "取消推荐": 
                  $.ligerDialog.confirm('确定取消推荐吗?', function (confirm) {
                      if (confirm)
                    	  f_operate('tj','0');
                  });
                  break;
          }
      }
      function f_reload()
      {
          grid.loadGrid(newsType);
      }
      function f_delete()
      { 
          var selected = grid.getSelected();
          if (selected)
          {
              if (!selected.MenuID)
              {
                  grid.deleteRow(selected);
                  //return;
                  NewsAction.newsDelete(selected.n_xh, function (data){
      	   	    	 if(data == 'success'){
      	   	    		LG.showSuccess('删除成功');
      	                //f_reload();
      	    	     } else {
      	    	    	LG.showSuccess('删除失败');
      	 	    	 }
      	   	      });
              }
          }
          else
          {
              LG.tip('请选择行!');
          }
      }

      function f_operate(operateType,value){
          
    	  var selected = grid.getSelected();
    	  //alert(selected.c_sfzd); return;
          if (selected){
	    	  NewsAction.newsOperate(operateType , value,selected.n_xh, function (data){
	   	    	 if(data == 'success'){
	   	    		LG.showSuccess('操作成功');
	   	    		loadGrid(newsType);
	    	     }
	   	      });
          }else{
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
            { text: '查看', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/application_view_detail.png" },
            { line: true },
            { text: '删除', click: itemclick, img: "<%=basePath%>liger/lib/icons/miniicons/page_delete.gif" },
            { line: true },
            { text: '置顶', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/arrow_up.png" },
            { line: true },
            { text: '取消置顶', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/arrow_down.png" },
            { line: true },
            { text: '高亮', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/star.png" },
            { line: true },
            { text: '取消高亮', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/star_01.png" },
            { line: true },
            { text: '推荐', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/flag_red.png" },
            { line: true },
            { text: '取消推荐', click: itemclick, img: "<%=basePath%>liger/lib/icons/silkicons/flag_yellow.png" }
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

    var tempdata={
    	    "Rows":[{
        	    "MenuID":8,
        	    "MenuNo":"sysmenu",
        	    "MenuParentNo":"system",
        	    "MenuOrder":null,
        	    "MenuName":"菜单管理",
        	    "MenuUrl":"system/menu.aspx",
        	    "MenuIcon":"lib/icons/32X32/sitemap.gif",
        	    "IsVisible":1,
        	    "IsLeaf":1
        	    },{
            	 "MenuID":19,
            	 "MenuNo":"sysright",
            	 "MenuParentNo":"system",
            	 "MenuOrder":null,
            	 "MenuName":"权限中心",
            	 "MenuUrl":"system/right.aspx",
            	 "MenuIcon":"lib/icons/32X32/link.gif",
            	 "IsVisible":null,
            	 "IsLeaf":null
            	 },{
                 "MenuID":42,
                 "MenuNo":"BaseManage",
                 "MenuParentNo":null,
                 "MenuOrder":0,
                 "MenuName":"基础信息管理",
                 "MenuUrl":null,
                 "MenuIcon":"lib/icons/silkicons/application.png",
                 "IsVisible":1,
                 "IsLeaf":0
                 }],"Total":"3"};
    
    var tree = $("#maintree").ligerTree({
        data:[
              {text: '领导动态',MenuNo:'1'},
              {text: '机构设置',MenuNo:'2'},
              {text: '工作交流',MenuNo:'3'},
              {text: '禁毒动态',MenuNo:'4'},
              {text: '机构设置',MenuNo:'5'},
              {text: '通知通报',MenuNo:'6'}
        ],
        checkbox: false,
        onClick: function (node)
        {
            if (!node.data.MenuNo) return;
            var where = {
                op: 'and',
                rules: [{ field: 'MenuParentNo', value: node.data.MenuNo, op: 'equal'}]
            };
            newsType =  node.data.MenuNo;
            currentMenuParentNo = node.data.MenuNo;
            loadGrid(newsType);
            //grid.set('parms', { where: JSON2.stringify(where) });
            //grid.set('data', tempdata);
        }
    });

    var layout = $("#layout").ligerLayout({ leftWidth: 140 });


    
    var newsdata = '';

    /**
    NewsAction.newsList(function (data){
       // alert($d(data));
    	newsdata = JSON2.stringify(data);
    	alert(JSON2.stringify(data));
    });
    **/
    var grid = $("#maingrid").ligerGrid({
        //headerImg:"<%=basePath%>liger/lib/icons/silkicons/table.png",title:'表格表头',
        columns: [
                { display: '序号', name: 'n_xh', align: 'left', width: 50, minWidth: 60, 
                validate: { required: true }  ,
                editor: { type: 'hidden' }
                },
                { display: '新闻标题', name: 'c_bt', align: 'left', width: 350, minWidth: 100, 
                validate: { required: true }, 
                editor: { type: 'text' }
                },
                { display: '发布时间', name: 'd_fbsj', align: 'left', width: 100, minWidth: 60, 
                validate: { required: true },
                editor: { type: 'text' }
                }, 
                { display: '状态', name: 'operate', editor: { type: 'text' },align: 'left', width: 200, minWidth: 50
                },{
					name: 'c_sfzd',editor: {type: 'hidden'},hide : '1'
                },{
					name: 'c_sfgl',editor: {type: 'hidden'},hide : '1'
                },{
					name: 'c_sftj',editor: {type: 'hidden'},hide : '1'
                }], 
                dataAction: 'server', pageSize: 20, toolbar: toolbarOptions, sortName: 'MenuID',
		        width: '98%', height: '100%', heightDiff: -5, checkbox: false, usePager: true, enabledEdit: true, 
		        clickToEdit: false, fixedCellHeight: true, rowHeight: 25,
		        render: function (item) {
                    return "<div style='width:100%;height:100%;'><img src='../" + item.MenuIcon + "' /></div>";
                }
    });

    grid.bind('beforeSubmitEdit', function (e) {
        if (!LG.validator.form()) {
            LG.showInvalid();
            return false;
        }
        return true;
    });
    
    grid.bind('afterSubmitEdit', function (e) {
        
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
                grid.loadGrid(newsType);
                LG.tip('保存成功!');
            },
            error: function (message)
            {
                LG.tip(message);
            }
        }); 
    }); 
    //loadData();
    loadGrid(newsType);

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
	
    function loadGrid(newsType){
        if(newsType == undefined || newsType == ''){
			newType = '1';
        }
    	NewsAction.newsList(newsType,function (data){
  	    	//newsdata = JSON2.stringify(data);
  	    	for(var i=0;i<data.Rows.length;i++){
  	    		var rowData = "<div style='width:100%;height:100%;'>";
				var sfzd = data.Rows[i].c_sfzd;
				var sfgl = data.Rows[i].c_sfgl;
				var sftj = data.Rows[i].c_sftj;
				if(sfzd == '1'){
					rowData += "<span style=width:33%><img src='liger/lib/icons/silkicons/arrow_up.png'/>置顶&nbsp;&nbsp;</span>";
			    }else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				if(sfgl == '1'){
					rowData += "<img src='liger/lib/icons/silkicons/star.png'/>高亮&nbsp;&nbsp;";
				}else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				if(sftj == '1'){
					rowData += "<img src='liger/lib/icons/silkicons/flag_red.png'/>推荐&nbsp;&nbsp;";
				}else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				rowData += "</div>";
				data.Rows[i].operate = rowData;
  	  	  	}
  	    	grid.setOptions({data:data});
  	    });
    }
   
  </script>
</body>
</html> 
