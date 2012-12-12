<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>手机短信 明细</title>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <%--<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />--%>
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>  
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>    
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/mobiles_cn.js" type="text/javascript"></script>
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
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/MobileAction.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/UserInfoSvc.js'></script>
  	

</head>
<body style="padding-bottom:31px;">
    <form id="mainform"  method="post"></form> 
    <script type="text/javascript"> 
    	var box1;
    
        var config = {"Form":{ 
         fields : [
         {display:"接收人",name:"c_jsr",newline:true,labelWidth:100,width:700,space:30,type:"smarttext",
          validate: { required: true},
       	  group:"基本信息",
          groupicon:"<%=basePath%>liger/lib/icons/32X32/communication.gif"
         },
         {display:"内容",name:"c_nr",newline:true,labelWidth:100,width:700,heigth: 800,space:30,type:"textarea",validate: { required: true}}
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
            url :'',
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
		//var editor = CKEDITOR.replace( 'c_nr' );
        //CKFinder.setupCKEditor( editor, '/ckfinder/' );

    	//$("c_tpljdz").setDisabled();
        
        function f_save() {
        	
        	//验证
        	if (!LG.validator.form()) {
                LG.showInvalid();
                return false;
            }

        	var formMap = DWRUtil.getValues("mainform"); 
        	
	        //formMap["c_nr"] = editor.document.getBody().getHtml();
	        formMap["c_jsr"] = box1.getValue();
	        
        	MobileAction.mobileSave(formMap,function (result){
        		
        		if(result == 'success'){
        			LG.showSuccess('保存成功', function () { 
                        //f_cancel();
                        //parent.loadGrid();
                        window.location.href="success.jsp";
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
        
        UserInfoSvc.chooseMobile(function(rdata){
	  			if(rdata != null){
	
	  	            box1 = $("#c_jsr").ligerComboBox({
	  	            width : 700, 
	  	            selectBoxWidth: 698,
	  	            selectBoxHeight: 240, valueField: 'value', treeLeafOnly: true,
	  	            tree: { data:rdata}
	  	        }); 
  			}
  		});
    </script>
</body>

</html>

