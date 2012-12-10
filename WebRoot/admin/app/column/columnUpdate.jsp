<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>栏目 明细</title>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
     <%--<link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />--%>
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
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/ColumnAction.js'></script>
  	
  	<style type="text/css">
 	    .l-button-2{
			BORDER-BOTTOM: #bfcfe1 1px solid; 
			POSITION: relative; 
			BORDER-LEFT: #bfcfe1 1px solid; 
			LINE-HEIGHT: 25px; 
			HEIGHT: 25px; 
			COLOR: #2c69a2; 
			BORDER-TOP: medium none; CURSOR: pointer; 
			BORDER-RIGHT: #bfcfe1 1px solid;
			WIDTH: 80px;  
			BACKGROUND: url(<%=basePath%>liger/lib/images/ui/button1.gif) repeat-x; 
		}
 	</style>

</head>
<body style="padding-bottom:31px;">
    <form id="mainform"  method="post">
    	<div id="nr" style="display: none;"><s:property value="column.c_nr"/></div>
    </form> 
    <script type="text/javascript"> 
    
    
        var config = {"Form":{ 
         fields : [
         {
	         display:"栏目名称",
	         name:"c_lmmc",
	         value:"<s:property value='column.c_lmmc'/>",
	         newline:true,
	         labelWidth:100,
	         width:700,
	         space:30,
	         type:"text",
	         group:"基本信息",
	         groupicon:"<%=basePath%>liger/lib/icons/32X32/communication.gif"
         },
         {display:"是否放到导航",
             name:"c_sfdh",
             newline:true,
             labelWidth:100,width:30,space:30,type:"checkbox",
             value:"<s:property value='column.n_xh'/>"
         },
         {display:"连接地址",name:"c_lj",newline:false,labelWidth:100,width:540,space:30,type:"text",value:"<s:property value='column.c_lj'/>"},
         { display:"是否上传图片",
            name:"c_sftp",
            newline:true,labelWidth:100,width:30,space:30,
            type:"checkbox",
            nodeWidth :30,
            value:"<s:property value='column.c_sftp'/>"
        },
        {display:"图片名称",name:"c_tpljdz",newline:false,labelWidth:100,width:250,space:30,type:"text",readonly:"readonly",value:"<s:property value='column.c_tpljdz'/>"},
        {
        	 //display:"上传视频",
        	 value:"选择图片",
	         name:"sctp",
	         newline:false,
	         labelWidth:0,
	         type:"button",
	         cssClass:"l-button-2",
	         onclick : "openDialog('#uploadImageDiv')"
         },
         /**{display:"是否内容",name:"c_sfnr",newline:true,labelWidth:100,width:250, space:30,type:"checkbox",value:"<s:property value='column.c_sfnr'/>"},**/
         {display:"内容",name:"c_nr",newline:true,labelWidth:100,width:700,heigth: 800,space:30,type:"textarea",value:$('#nr').html()},
         {name:"n_xh", type:"hidden",value:"<s:property value='column.n_xh'/>"},
         {name:"c_lmdm", type:"hidden",value:"<s:property value='column.c_lmdm'/>"},
         {name:"c_sjlmdm", type:"hidden",value:"<s:property value='column.c_sjlmdm'/>"},
         {name:"n_xsxh", type:"hidden",value:"<s:property value='column.n_xsxh'/>"}
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

        //创建表单结构
        var mainform = $("#mainform");  
         mainform.ligerForm({ 
       	 inputWidth: 0,
         labelWidth: 0,
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
        	
        	if(formMap["c_sftp"] == true){
        		formMap["c_sftp"] = '1';
        	} else {
        		formMap["c_sftp"] = '0';
        	}
        	
            if(formMap["c_sfnr"] == true){
        		formMap["c_sfnr"] = '1';
        	} else {
        		formMap["c_sfnr"] = '0';
        	}
        	
        	if(formMap["c_sfdh"] == true){
        		formMap["c_sfdh"] = '1';
        	} else {
        		formMap["c_sfdh"] = '0';
        	}
        	
        	//if(editor != null){
	        formMap["c_nr"] = editor.document.getBody().getHtml();
           	//}
			
        	ColumnAction.columnSave(formMap,function (result){
        		if(result == 'success'){
        			LG.showSuccess('保存成功', function () { 
                        f_cancel();
                        parent.loadGrid();
                    });
        		} else {
        		 	LG.showError('保存失败');
        		}
        	});
        	/**
            LG.submitForm(mainform, function (data) {
                var win = parent || window;
                //if (data.IsError) {  
                //    win.LG.showError('错误:' + data.Message);
               // } else { 
                    win.LG.showSuccess('保存成功', function () { 
                        win.LG.closeAndReloadParent(null, "MemberManageUser");
                    });
                //}
            });
            **/
        }
        function f_cancel()
        {
           //f_cancel();
           parent.dialog_hidden();
        }

        function openDialog(divNode){

        	var dlgedit = $.ligerDialog.open({
				width : 350, //宽度
				height : null,
				title : "文件上传",
				target : $(divNode),
				buttons: [ 
                           { text: '关闭', onclick: function (i, d) { $("input").ligerHideTip(); d.hide(); }} 
                          ]
			});
        }


        $(function(){
       	 if ($.browser.msie) {
       	  	$('input:checkbox').click(function () { 
       	   	    this.blur();   
       	   		this.focus(); 
       		});   
       	 };
       	 
       	 $("#c_sftp").change(function() {
       		 var value = $("#c_sftp").attr("checked");
       		 if(value == true){
				$("#sctp").attr("disabled",false);	
             }else{
            	 $("#sctp").attr("disabled","disabled");	
             }
       	 
       		});
       	}); 
       	
       	
       	 $(function(){
       	 if ($.browser.msie) {
       	  	$('input:checkbox').click(function () { 
       	   	    this.blur();   
       	   		this.focus(); 
       		});   
       	 };
       	 
       	editor = CKEDITOR.replace( 'c_nr' );
        CKFinder.setupCKEditor( editor, '/ckfinder/' );
       	 
       	 $("#c_sfnr").change(function() {
	       		 var value = $("#c_sfnr").attr("checked");
	       		 if(value == true && editor == null){
	       			 editor = CKEDITOR.replace( 'c_nr' );
	    	         CKFinder.setupCKEditor( editor, '/ckfinder/' );
	             }else{
	            	 //$("#c_nr").attr("readonly","readonly");
	            	 $("#c_nr").attr("readOnly","readOnly");
	             }
       		});
       	}); 
        
    </script>
 	<div id="uploadImageDiv" style="display: none;">
		 <iframe src="<%=basePath%>fileupload/uploadFile.jsp?fileNameId=c_tpljdz"></iframe> <!---->
	</div>
</body>

</html>

