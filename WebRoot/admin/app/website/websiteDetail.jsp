<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String c_sjlmdm = request.getParameter("c_sjlmdm");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>栏目 明细</title>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>  
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>    
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/messages_cn.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery.form.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/validator.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/formUtil.js" type="text/javascript"></script>
    
    <script type="text/javascript" src="<%=basePath%>ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=basePath%>ckfinder/ckfinder.js"></script>
	
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/WebsiteAction.js'></script>

</head>
<body style="padding-bottom:31px;">
    <form id="mainform"  method="post"></form> 
    <script type="text/javascript"> 
    
        //var tempdata=[{ text:2323,value:1000},{text:2323,value:1000}];

        WebsiteAction.getWebtypeCombox(function(data){
			//$("#n_lbxh").tempdata = data;
	        var tempdata = data;
	        var config = {"Form":{ 
		         fields : [
		         {display:"网站类别",name:"n_lbxh",newline:true,labelWidth:100,
		          width:220,space:30,type:"select",comboboxName:"n_lbxhName",
		          options:{
		             valueField:"value",
		             textFiled:"text",
		         	 //url:"../handler/select.ashx?view=Categories&idfield=CategoryID&textfield=CategoryName",
		         	 data : tempdata
		          },
		          group:"基本信息",
		          groupicon:"<%=basePath%>liger/lib/icons/32X32/communication.gif"
		         },
		         {
			         display:"网站标题",
			         name:"c_bt",
			         newline:true,
			         labelWidth:100,
			         width:540,
			         space:30,
			         type:"text"
		         },
		         {display:"网站地址",name:"c_lj",newline:true,labelWidth:100,width:540,space:30,type:"text"}
		        ]
			 }};
	       
	        var forbidFields = [];
	        LG.adujestConfig(config,forbidFields);
	
	        var roleids = '';
	        //当前ID
	        var currentID = '';
	        //是否新增状态
	        var isAddNew = currentID == "" || currentID == "0";
	        //是否查看状态
	        var isView = 0;
	        //是否编辑状态
	        var isEdit = !isAddNew && !isView;
	
	        //覆盖本页面grid的loading效果
	        LG.overrideGridLoading(); 
	
	        //表单底部按钮 
	        LG.setFormDefaultBtn(f_cancel,isView ? null : f_save);
	
	        var deptTree = {
	            url :'../handler/tree.ashx?view=CF_Department&idfield=DeptID&textfield=DeptName&pidfield=DeptParentID',
	            checkbox:false,
	            nodeWidth :220
	        };
	
	        //创建表单结构
	        var mainform = $("#mainform");  
	        mainform.ligerForm({ 
	         inputWidth: 280,
	         fields : config.Form.fields//,
			 //toJSON:JSON2.stringify
	        });
	
	        $("#RoleID").val(roleids);
	
	        var actionRoot = "";
	        if(isEdit){ 
	            $("#LoginName").attr("readonly", "readonly").removeAttr("validate");
	            mainform.attr("action", actionRoot + "newsUpdate"); 
	        }
	        if (isAddNew) {
	            mainform.attr("action", actionRoot + "newsSave");
	        }
	        else { 
	            LG.loadForm(mainform, { type: 'AjaxMemberManage', method: 'newsQuery', data: { ID: currentID} },f_loaded);
	        }  
	
	        
	          
	        if(!isView) 
	        {
	            //验证
	            jQuery.metadata.setType("attr", "validate"); 
	            LG.validate(mainform);
	        } 
	
			function f_loaded()
	        {
	            if(!isView) return; 
	            //查看状态，控制不能编辑
	            $("input,select,textarea",mainform).attr("readonly", "readonly");
	        }
	
	        //<!-- 设置一些默认参数 -->
			var editor = null;
	
	    	//$("c_tpljdz").setDisabled();
	        
	        function f_save() {
	
	        	var formMap = DWRUtil.getValues("mainform"); 

	            
	            formMap['n_lbxh'] = formMap['n_lbxhName_val'];
	 
	        	WebsiteAction.websiteSave(formMap,function (result){
	        		//var win = parent || window;
	        	        if(result == 'success'){
        			LG.showSuccess('保存成功', function () { 
                        		f_cancel();
                        		parent.loadGrid();
                    		});
        			} else {
        		   		 LG.showError('保存失败');
        			}
	        	});
	        	
	        }
	        function f_cancel()
	        {
	             parent.dialog_hidden();
	        }
	
	
        });
    </script>
 	<div id="uploadImageDiv" style="display: none;">
		 <iframe src="<%=basePath%>fileupload/uploadFile.jsp?fileNameId=c_tpljdz"></iframe> <!---->
	</div>
</body>

</html>

