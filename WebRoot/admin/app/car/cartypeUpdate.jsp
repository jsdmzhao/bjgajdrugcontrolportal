<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>车辆  明细</title>
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
    
    <script type="text/javascript" src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script>
    
    <script type="text/javascript" src="<%=basePath%>ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=basePath%>ckfinder/ckfinder.js"></script>
	
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/CartypeAction.js'></script>

</head>
<body style="padding-bottom:31px;">
    <form id="mainform"  method="post"></form> 
    <script type="text/javascript"> 
        var tempdata = [{text:'总队领导',value:1},{text:'办公室',value:3},{text:'协调指导大队',value:4},
                    	{text:'情报中心',value:9},{text:'侦查大队',value:7},{text:'查禁大队',value:8},
                    	{text:'缉控大队',value:5},{text:'易管大队',value:11}];
        var ybdata   = [{text:'92#',value:'01'},{text:'95#',value:'02'},{text:'柴油',value:'03'}];
        var config = {"Form":{ 
         fields : [
         {display:"所在部门",name:"c_yhzid",newline:true,labelWidth:80,
          width:480,space:30,type:"select",comboboxName:"c_yhzidName",
          options:{
             valueField:"value",
             textFiled:"text",
         	 data : tempdata,
             selectBoxHeight :200,
             selectBoxWidth :480,
             value:"<s:property value='car.c_yhzid'/>"
          },
	      group:"基本信息",
	      groupicon:"<%=basePath%>liger/lib/icons/32X32/communication.gif"
         },
         {display:"车牌号码",name:"c_cphm",newline:true,labelWidth:80,width:480,type:"text",value:"<s:property value='car.c_cphm'/>"},
         {display:"品牌型号",name:"c_ppxh",newline:true,labelWidth:80,width:480,type:"text",value:"<s:property value='car.c_ppxh'/>"},
         {display:"购买时间",name:"d_gmsj",newline:true,labelWidth:80,width:180,type:"text",value:"<s:property value='car.d_gmsj.substring(0,10)'/>",
         onclick:"WdatePicker({dateFmt:'yyyy-MM-dd'})"},
         {display:"注册时间",name:"d_zcsj",newline:false,labelWidth:80,width:180,type:"text",value:"<s:property value='car.d_zcsj.substring(0,10)'/>",onclick:"WdatePicker({dateFmt:'yyyy-MM-dd'})"},
         {display:"验车时间",name:"d_ycsj",newline:true,labelWidth:80,width:180,type:"text",value:"<s:property value='car.d_ycsj.substring(0,10)'/>",onclick:"WdatePicker({dateFmt:'yyyy-MM-dd'})"},
         {display:"油标",name:"c_yb",newline:false,labelWidth:80,width:180,type:"select",
	      	 options:{
               valueField : "value",
               textFiled : "text",
           	   data : ybdata,
               selectBoxHeight : 100,
               selectBoxWidth : 180,
               value:"<s:property value='car.c_yb'/>"
            }
          },
         {name:"n_xh", type:"hidden",value:"<s:property value='car.n_xh'/>"},
         {display:"责任司机",name:"c_zrsj",newline:true,labelWidth:80,width:480,type:"text",value:"<s:property value='car.c_zrsj'/>"}
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

        
        function f_save() {

        	var formMap = DWRUtil.getValues("mainform"); 
        	
        	formMap['c_yhzid'] = formMap['c_yhzidName_val'];
        	formMap['c_yb'] = formMap['c_yb_val'];
        	
        	CartypeAction.cartypeSave(formMap,function (result){
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
        
    </script>
 	
</body>

</html>

