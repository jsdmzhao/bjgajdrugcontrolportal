<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>车辆检测 明细</title>
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
    <script src="<%=basePath%>liger/lib/js/validator.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/formUtil.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script>
    
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/CarCheckAction.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/CarAction.js'></script>

</head>
<body style="padding-bottom:31px;">
    <form id="mainform"  method="post"></form> 
    
    <script type="text/javascript"> 
       var config = {"Form":{ 
         fields : [{
        	 display:"所属部门",
             name:"c_clbm",
             labelWidth:130,
             width:280,
             type:"basicText",
             validate: { required: true}, 
             group:"基本信息",
             groupicon:"<%=basePath%>liger/lib/icons/32X32/communication.gif"
         }
         ,
         {
      	 display:"车牌号码",
          labelWidth:130,
          width:280,
          newline:false,
          type:"basicText",
          name:"n_cllbxh",
          validate: { required: true}
         }
          ,
         {
	         display:"检测日期", 
	         name:"d_jcrq",
	         newline:true,
	         width:280,
	         labelWidth:130,
	         value:"<s:property value='carCheck.d_jcrq'/>",
	         type:"text",
	         validate: { required: true},
	         onclick:"WdatePicker({dateFmt:'yyyy-MM-dd'})"
         }
         ,
         {
	         display:"检测厂名称", 
	         name:"c_jccmc",
	         labelWidth:130,
	         value:"<s:property value='carCheck.c_jccmc'/>",
	         newline:false,
	         width:280,
	         validate: { required: true},
	         type:"text"
         }
         ,
         {
	         display:"车辆行驶总里程（公里）", 
	         name:"n_clxszlc",
	         newline:true,
	         value:"<s:property value='carCheck.n_clxszlc'/>",
	         labelWidth:130,
	         validate: { required: true},
	         width:280,
	         type:"number"
         }
         ,
         {
	         display:"检测费用（元）", 
	         name:"n_jcfy",
	         value:"<s:property value='carCheck.n_jcfy'/>",
	         labelWidth:130,
	         newline:false,
	         validate: { required: true},
	         width:280,
	         type:"number"
         },
         {
	         name:"n_xh",
	         value:"<s:property value='carCheck.n_xh'/>",
	         type:"hidden"
         }
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

       function f_save() {
       	
       	//验证
       	if (!LG.validator.form()) {
               LG.showInvalid();
               return false;
           }
       	var formMap = DWRUtil.getValues("mainform"); 
       	
       	formMap['c_clbm'] = formMap['c_clbm_val'];
       	formMap['n_cllbxh'] = formMap['n_cllbxh_val'];
       	
       	CarCheckAction.carCheckSave(formMap,function (result){
       		if(result == 'success'){
      			LG.showSuccess('保存成功', function () { 
                      f_cancel();
                      parent.f_reload();
                  });
      		} else {
      		 	LG.showError('保存失败');
      		}
       	});
       	
       }
       function f_cancel() {
          parent.dialog_hidden();
       }
       
       
      var cmb1,cmb2; 
      var tempdata = [{text:'所有部门',value:''},{text:'总队领导',value:'1'},{text:'办公室',value:'3'},
                       {text:'协调指导大队',value:'4'}, {text:'情报中心',value:'9'}, {text:'侦查大队',value:'7'},
                       {text:'查禁大队',value:'8'}, {text:'缉控大队',value:'5'}, {text:'两品办',value:'10'}];;

      cmb1 = $("#c_clbm").ligerComboBox({ data: tempdata, isMultiSelect: false,
           textFiled:"text",valueField:"value",
           value:"<s:property value='carCheck.c_clbm'/>",
           onSelected: function (newvalue){
          	  //$("#n_cllbxh").ligerComboBox("reload","<%=basePath%>cartypeCombox?c_yhzid="+newvalue); 
          	  setData(cmb2,"<%=basePath%>cartypeCombox?c_yhzid="+newvalue);
           }
  	  });
       
      cmb2 = $("#n_cllbxh").ligerComboBox({
      	   isMultiSelect: false,
           valueField:"value",
           textFiled:"text",
           url:"<%=basePath%>cartypeCombox",
           value:"<s:property value='carCheck.n_cllbxh'/>"
  	  });
  	    
      function setData(obj,url) {  
          $.getJSON(url+"&r="+Math.round(Math.random()*1000000).toString(), 
             function(json) {  
               obj.setData(json); //把json塞到下拉框里面去  
             }  
          );                                                  
      }    
    </script>
</body>

</html>

