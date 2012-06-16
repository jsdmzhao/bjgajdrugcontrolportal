<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
	<base href="<%=basePath%>">
    <title>新闻 明细</title>
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
    
    <script type="text/javascript" src="<%=basePath%>ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=basePath%>ckfinder/ckfinder.js"></script>
</head>
<body style="padding-bottom:31px;">
    <form id="mainform" method="post"></form> 
    <script type="text/javascript"> 
        var config = {"Form":{ 
         fields : [
         {name:"n_xh",type:"hidden"},
         {
	         display:"标题",
	         name:"news.c_bt",
	         newline:true,
	         labelWidth:100,
	         width:570,
	         space:30,
	         type:"text",
	         group:"基本信息",
	         groupicon:"<%=basePath%>liger/lib/icons/32X32/communication.gif"
         },
         {display:"是否图片文章",name:"news.c_sftpwz",newline:true,labelWidth:100,width:220,space:30,type:"select",
            comboboxName:"DepartmentDeptName",options:{tree:{
            url :'../handler/tree.ashx?view=CF_Department&idfield=DeptID&textfield=DeptName&pidfield=DeptParentID',
            checkbox:false,
            nodeWidth :220
         },valueFieldID:"DeptID",valueField:"DeptID"}},
         {
	         display:"上传文件",
	         name:"Title",
	         newline:false,
	         labelWidth:100,
	         width:220,space:30, 
	         type:"button",
	         validate:{maxlength:50}
         },
         {display:"是否视频文章",name:"Deptd",newline:true,labelWidth:100,width:220,space:30,
            type:"checkbox",
            nodeWidth :220
        },
        {
	         display:"上传文件",
	         name:"Titled",
	         newline:false,
	         labelWidth:100,
	         width:220,space:30, 
	         type:"button"
         },
         {
         	display:"简介",
         	name:"RealName",
         	newline:true,
         	labelWidth:93,
         	width:576,space:30,
         	type:"textarea"
         },
         {display:"链接",name:"Fax",newline:true,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:50}},
         {display:"发布时间",name:"Email",newline:false,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:50}},
         {display:"内容",name:"Address",newline:true,labelWidth:93,width:576,heigth: 800,space:30,type:"textarea"}]
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
         fields : config.Form.fields,
		 toJSON:JSON2.stringify
        });

        $("#RoleID").val(roleids);

        var actionRoot = "../handler/ajax.ashx?type=AjaxMemberManage";
        if(isEdit){ 
            $("#LoginName").attr("readonly", "readonly").removeAttr("validate");
            mainform.attr("action", actionRoot + "&method=UpdateUser"); 
        }
        if (isAddNew) {
            mainform.attr("action", actionRoot + "&method=AddUser");
        }
        else { 
            LG.loadForm(mainform, { type: 'AjaxMemberManage', method: 'GetUser', data: { ID: currentID} },f_loaded);
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
        function f_save()
        {
            LG.submitForm(mainform, function (data) {
                var win = parent || window;
                if (data.IsError) {  
                    win.LG.showError('错误:' + data.Message);
                }
                else { 
                    win.LG.showSuccess('保存成功', function () { 
                        win.LG.closeAndReloadParent(null, "MemberManageUser");
                    });
                }
            });
        }
        function f_cancel()
        {
            var win = parent || window;
            win.LG.closeCurrentTab(null);
        }

        var editor = CKEDITOR.replace( 'Address' );
    	CKFinder.setupCKEditor( editor, '/ckfinder/' );
    </script>
   
</body>
</html>

