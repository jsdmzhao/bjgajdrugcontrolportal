<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String newsType = request.getParameter("newsType");
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
    <div position="left" title="主菜单模块" id="mainmenu" style="width:100%;height:95%;overflow: auto;">
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

    var tempdata={};
    
    var tree = $("#maintree").ligerTree({
     //data:[{text:'毒品知识', value:'1282'},{text:'专栏链接', value:'1283',children: [{text:'创新群众工作,争做爱民模范', value:'1331'},{text:'群众工作', value:'1299'},{text:'第二批领导干部竞争选拔工作专栏', value:'1301'},{text:'践行三大支柱', value:'1302'},{text:'三项重点工作', value:'1313'},{text:'打零收戒工作手册', value:'1314'},{text:'和谐警民关系建设网', value:'1316'},{text:'十七届五中全会专栏', value:'1317'},{text:'党务公开专栏', value:'1318'},{text:'好警信息网', value:'1319'},{text:'首都公安文化建设', value:'1320'},{text:'保密专栏', value:'1321'},{text:'案例分析', value:'1324'},{text:'运动健身季', value:'1326'},{}]},{text:'信息安全', value:'1284'},{text:'旧站入口', value:'1285'},{text:'警钟长鸣', value:'1286'},{text:'情报导航', value:'1288'},{text:'关于做好2009年度党员领导干部报告个人有关事项和下半年个人收入申报工作的通知', value:'1329'},{text:'公安部文件', value:'1208'},{text:'政工信息', value:'1210'},{text:'装财信息', value:'1211'},{text:'文秘信息', value:'1212'},{text:'法制信息', value:'1213'},{text:'法律法规', value:'1214',children: [{text:'法规汇编', value:'1209'},{text:'规章汇编', value:'1307'},{text:'法律汇编', value:'1305'},{text:'规范性文件', value:'1312'},{}]},{text:'学习园地', value:'1215'},{text:'通知公告', value:'1216'},{text:'工作动态', value:'1217'},{text:'区县工作', value:'1218'},{text:'新闻时事', value:'1219'},{text:'成员单位', value:'1220'},{text:'工作动态', value:'1221'},{text:'文件交换', value:'1222'},{text:'禁毒在线', value:'1223'},{text:'考核评估', value:'1224'},{text:'相关禁毒信息', value:'1225'},{text:'戒毒康复工作', value:'1226'},{text:'宣传教育', value:'1227'},{text:'志愿者工作', value:'1228'},{text:'图片新闻', value:'1229'},{text:'查询系统', value:'1230'},{text:'“陆空邮”动态', value:'1231'},{text:'学习园地', value:'1232'},{text:'实用工具', value:'1233'},{text:'查缉装备', value:'1234'},{text:'队伍建设', value:'1235'},{text:'综合资讯', value:'1236'},{text:'公告栏', value:'1237'},{text:'图片新闻', value:'1238'},{text:'视频资料', value:'1239'},{text:'全国导航', value:'1240'},{text:'市局导航', value:'1241'},{text:'禁毒导航', value:'1242'},{text:'分县局导航', value:'1243'},{text:'处内导航', value:'1244'},{text:'工作动态', value:'1245'},{text:'相关资讯', value:'1246'},{text:'队伍建设', value:'1247'},{text:'专项行动', value:'1248'},{text:'三项措施', value:'1249'},{text:'公安数据库', value:'1250'},{text:'实用信息', value:'1251'},{text:'毒品知识', value:'1252'},{text:'通知公告', value:'1253'},{text:'图片新闻', value:'1254'},{text:'通知通报', value:'1255'},{text:'公共场所无毒', value:'1256'},{text:'娱乐场所无毒', value:'1257'},{text:'队伍建设', value:'1258'},{text:'研究报告', value:'1259'},{text:'法律法规', value:'1260'},{text:'图片新闻', value:'1261'},{text:'全国导航', value:'1262'},{text:'市局导航', value:'1263'},{text:'禁毒导航', value:'1264'},{text:'分县局导航', value:'1265'},{text:'处内导航', value:'1266'},{text:'动态管控', value:'1267'},{text:'毒情分析', value:'1268'},{text:'毒情监测', value:'1269'},{text:'交流协作', value:'1270'},{text:'调查研究', value:'1271'},{text:'警营文化', value:'1272'},{text:'战果通报', value:'1273'},{text:'执法考评', value:'1274'},{text:'应用系统导航', value:'1275'},{text:'查询系统导航', value:'1276'},{text:'图片新闻', value:'1277'},{text:'视频资料', value:'1278'},{text:'实用工具导航', value:'1279'},{text:'学习园地', value:'1281'},{text:'信息支持', value:'1290'},{text:'首页光荣榜', value:'1291'},{text:'视频', value:'1292'},{text:'机要交换', value:'1293'},{text:'部局文件', value:'1294'},{text:'市局文件', value:'1295'},{text:'外省公共娱乐场所禁毒动态', value:'1308'},{text:'信息查询', value:'1309'},{text:'装财服务之窗', value:'1310'},{text:'工作交流', value:'1311'},{text:'学习园地', value:'1296'},{text:'学习专栏', value:'1297'},{text:'吸毒排查管控', value:'1298'},{text:'建党专题', value:'1300'},{text:'市局文件', value:'1303'},{text:'视频资料', value:'1304'},{text:'禁毒宣传', value:'1306'},{text:'成员单位', value:'1315'},{text:'总队首页', value:'1322'},{text:'全网查控', value:'1323'},{text:'开门评警', value:'1327'},{text:'关于做好2009年度党员领导干部报告个人有关事项和下半年个人收入申报工作的通知', value:'1328'},{text:'信息查询', value:'1182'},{text:'机构设置', value:'1183',children: [{text:'市禁毒委办公室', value:'1333'},{text:'市公安局禁毒总队', value:'1332'},{text:'市禁毒委员会', value:'1280'},{}]},{text:'情报导航', value:'1184'},{text:'工作交流', value:'1185'},{text:'文件交换', value:'1186'},{text:'指挥决策', value:'1187'},{text:'预防教育', value:'1188'},{text:'禁毒情报', value:'1189'},{text:'侦察破案', value:'1190'},{text:'禁吸戒毒', value:'1191'},{text:'毒品查缉', value:'1192'},{text:'禁毒动态', value:'1193'},{text:'通知通报', value:'1194'},{text:'领导动态', value:'1195'},{text:'队伍建设', value:'1196'},{text:'禁毒文件', value:'1197'},{text:'媒体关注', value:'1198'},{text:'区县警讯', value:'1199'},{text:'公告栏', value:'1200'},{text:'首页图片', value:'1201'},{text:'全国导航', value:'1202'},{text:'市局导航', value:'1203'},{text:'禁毒导航', value:'1204'},{text:'分县局导航', value:'1205'},{text:'处内导航', value:'1206',children: [{text:'办公室', value:'1287'},{}]},{text:'调研文章', value:'1207'},{}],
        checkbox: false,
        onClick: function (node)
        {
            if (!node.data.value) return;
            var where = {
                op: 'and',
                rules: [{ field: 'MenuParentNo', value: node.data.value, op: 'equal'}]
            };
            newsType =  node.data.value;
            currentMenuParentNo = node.data.value;
            loadGrid(newsType);
            //grid.set('parms', { where: JSON2.stringify(where) });
            //grid.set('data', tempdata);
        }
    });

    NewsAction.getNewsLanmuCombox(function(data){
    	tree.setData(eval(data));
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
					rowData += "<span style=width:33%><img src='<%=basePath%>liger/lib/icons/silkicons/arrow_up.png'/>置顶&nbsp;&nbsp;</span>";
			    }else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				if(sfgl == '1'){
					rowData += "<img src='<%=basePath%>liger/lib/icons/silkicons/star.png'/>高亮&nbsp;&nbsp;";
				}else {
					rowData += "<span style=width:33%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>";
				}
				if(sftj == '1'){
					rowData += "<img src='<%=basePath%>liger/lib/icons/silkicons/flag_red.png'/>推荐&nbsp;&nbsp;";
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
