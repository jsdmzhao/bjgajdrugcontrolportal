<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>日志 明细</title>
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
	<script type="text/javascript" src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script>
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/BlogAction.js'></script>

</head>
<body style="padding-bottom:31px;">
    <form id="mainform"  method="post"></form> 
    <div id="nr" style="display: none;"><s:property value="blog.c_nr"/></div>
    <script type="text/javascript"> 
       var config = {"Form":{ 
         fields : [
         {display:"标题",name:"c_bt",newline:true,labelWidth:100,
          width:640,space:30,type:"text",
          value :'<s:property value="blog.c_bt" />',
          group:"基本信息",
          groupicon:"<%=basePath%>liger/lib/icons/32X32/communication.gif"
         },
         {
	         display:"日志类型",
	         name:"c_rzlx",
	         newline:true,
	         labelWidth:100,
	         width:260,
	         space:30,
	         validate: { required: true},
	         type:"basicText"
         },
         {
	         display:"案件代号",
	         name:"ajdh",
	         newline:false,
	         labelWidth:100,
	         width:250,
	         space:30,
	         type:"hidden"
         },
         {
	         display:"交办领导",
	         name:"jbld",
	         newline:false,
	         labelWidth:100,
	         width:250,
	         space:30,
	         type:"hidden"
         },
         {display:"内容",name:"c_nr",newline:true,labelWidth:100,width:640,space:30,type:"textarea",value:$('#nr').html()},
		 {name:"n_xh",newline:true,labelWidth:100,width:540,space:30,type:"hidden",value :'<s:property value="blog.n_xh"/>'}
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
   	//$("c_tpljdz").setDisabled();
   	var editor = CKEDITOR.replace( 'c_nr',{ toolbar : 'Basic' } );
    CKFinder.setupCKEditor( editor, '/ckfinder/' );	
       
       function f_save() {

       	var formMap = DWRUtil.getValues("mainform"); 
       	
       	formMap["c_nr"] = editor.document.getBody().getHtml();
       	formMap["c_rzlx"] = cmb1.getValue();

       	BlogAction.blogSave(formMap,function (result){
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

       var tempdata = [{text:'工作日志',value:'1'},{text:'侦查日志',value:'2'},{text:'特殊案件日志',value:'3'}];;

       cmb1 = $("#c_rzlx").ligerComboBox({ data: tempdata, isMultiSelect: false,
           textFiled:"text",valueField:"value",
           value:"<s:property value='blog.c_rzlx'/>",
           onSelected: function (newvalue){
           	if(newvalue == '1'){
           		$("#ajdh_").html("");
           		$("#jbld_").html("");
           	} else if(newvalue == '2'){
           		$("#jbld_").html("");
           		$("#ajdh_").html("<LI style=\"TEXT-ALIGN: left; WIDTH: 100px\">案件代号：</LI>"+
   	           			"<LI style=\"TEXT-ALIGN: left; WIDTH: 250px\">"+
   	           			"<DIV style=\"WIDTH: 248px\" class=l-text>"+
   	           			"<INPUT style=\"WIDTH: 244px\" id=c_ajdh class=l-text-field onclick=undefined type=text name=c_ajdh ligerui='{\"width\":248}' ltype=\"text\" ligeruiid=\"c_ajdh\">"+
   	           	        "<DIV class=l-text-l></DIV>"+
   	           	        "<DIV class=l-text-r></DIV></DIV>");
           		
           	} else {
           		$("#ajdh_").html("");

   	           	$("#ajdh_").html("<LI style=\"TEXT-ALIGN: left; WIDTH: 80px\">交办领导：</LI>"+
   	           			"<LI style=\"TEXT-ALIGN: left; WIDTH: 250px; line-height: 30px;\">"+
   	           			"<DIV style=\"WIDTH: 190px\" class=l-text >"+
   	           			"<INPUT type=\"hidden\" id=c_jbld><INPUT style=\"WIDTH: 190px\" id=c_jbld_  readonly=readonly class=l-text-field  type=text name=c_jbld_ ligerui='{\"width\":190}' ltype=\"text\" ligeruiid=\"c_jbld_\">"+
   	           	        "<DIV class=l-text-l></DIV>"+
   	           	        "<DIV class=l-text-r></DIV></DIV><div style=\"margin-top: -22px;margin-left: 220px; width:60px; float: right; text-align:right\"><input type=\"button\" onclick=\"selectLd()\" value=\"选择\" class=\"1-button\" style=\"width: 50px;\"/></div>");
           	}
          }
  	   });
       
    function selectLd(){
   	 
   	  dag = $.ligerDialog.open({ url: '<%=basePath%>admin/app/blog/blogSelectYh.jsp',
            height: 400,width: 400,  title:'选择交办领导', showToggle: true,
            buttons: [ 
                       { text: '确定', onclick: function (item, dialog) {
                       		//alert(item.text); 
                       		dialog.close();
                       	} 
                       }, 
                       { text: '取消', onclick: function (item, dialog) {
                       	dialog.close(); 
                       	} 
                       } 
                     ]
		  });
    }
    
    if('<s:property value="blog.c_rzlx"/>' == '1'){
   		$("#ajdh_").html("");
   		$("#jbld_").html("");
   	} else if('<s:property value="blog.c_rzlx"/>' == '2'){
   		$("#jbld_").html("");
   		$("#ajdh_").html("<LI style=\"TEXT-ALIGN: left; WIDTH: 100px\">案件代号：</LI>"+
          			"<LI style=\"TEXT-ALIGN: left; WIDTH: 250px\">"+
          			"<DIV style=\"WIDTH: 248px\" class=l-text>"+
          			"<INPUT style=\"WIDTH: 244px\"  id=c_ajdh class=l-text-field onclick=undefined type=text name=c_ajdh ligerui='{\"width\":248}' ltype=\"text\" ligeruiid=\"c_ajdh\">"+
          	        "<DIV class=l-text-l></DIV>"+
          	        "<DIV class=l-text-r></DIV></DIV>");
   		$("#c_ajdh").val('<s:property value='blog.c_ajdh' escape="false"/>');
   		
   	} else {
   		$("#ajdh_").html("");

          	$("#ajdh_").html("<LI style=\"TEXT-ALIGN: left; WIDTH: 80px\">交办领导：</LI>"+
          			"<LI style=\"TEXT-ALIGN: left; WIDTH: 250px; line-height: 30px;\">"+
          			"<DIV style=\"WIDTH: 190px\" class=l-text >"+
          			"<INPUT type=\"hidden\" id=c_jbld><INPUT style=\"WIDTH: 190px\" id=c_jbld_  value=<s:property value='blog.c_jbld_'/> readonly=readonly class=l-text-field  type=text name=c_jbld_ ligerui='{\"width\":190}' ltype=\"text\" ligeruiid=\"c_jbld_\">"+
          	        "<DIV class=l-text-l></DIV>"+
          	        "<DIV class=l-text-r></DIV></DIV><div style=\"margin-top: -22px;margin-left: 220px; width:60px; float: right; text-align:right\"><input type=\"button\" onclick=\"selectLd()\" value=\"选择\" class=\"1-button\" style=\"width: 50px;\"/></div>");
          	
          	$("#c_jbld").val('<s:property value="blog.c_jbld"  escape="false"/>');
           	$("#c_jbld_").val('<s:property value="blog.c_jbld_" escape="false"/>');
   	}
    
    function setLd(value,text){
   	 $("#c_jbld").val(value);
   	 $("#c_jbld_").val(text);
    }
	
    </script>
</body>

</html>

