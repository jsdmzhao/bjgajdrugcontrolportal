<%@ Page Language="C#" Inherits="LigerRM.Common.ViewDetailPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>员工 明细</title>
    <link href="../lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="../lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="../lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="../lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>  
    <link href="../lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="../lib/js/common.js" type="text/javascript"></script>    
    <script src="../lib/js/LG.js" type="text/javascript"></script>
    <script src="../lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="../lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="../lib/jquery-validation/messages_cn.js" type="text/javascript"></script>
    <script src="../lib/jquery.form.js" type="text/javascript"></script>
    <script src="../lib/json2.js" type="text/javascript"></script>
    <script src="../lib/js/validator.js" type="text/javascript"></script>
    <script src="../lib/js/ligerui.expand.js" type="text/javascript"></script> 
</head>
<body style="padding-bottom:31px;">
    <form id="mainform" method="post"></form> 
    <script type="text/javascript"> 
        //当前ID
        var currentID = '<%= CurrentID %>';
        //是否新增状态
        var isAddNew = currentID == "" || currentID == "0";
        //是否查看状态
        var isView = <%=IsView %>;
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
         fields : [{name:"EmployeeID",type:"hidden"},{display:"姓氏",name:"LastName",newline:true,labelWidth:100,width:220,space:30,type:"text",validate:{required:true,maxlength:20},group:"员工基本信息",groupicon:"../lib/icons/32X32/communication.gif"},{display:"名字",name:"FirstName",newline:false,labelWidth:100,width:220,space:30,type:"text",validate:{required:true,maxlength:10},groupicon:"../lib/icons/32X32/communication.gif"},{display:"头衔",name:"Title",newline:true,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:30},groupicon:"../lib/icons/32X32/communication.gif"},{display:"头衔简称",name:"TitleOfCourtesy",newline:false,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:25},groupicon:"../lib/icons/32X32/communication.gif"},{display:"出生日期",name:"BirthDate",newline:true,labelWidth:100,width:220,space:30,type:"date",groupicon:"../lib/icons/32X32/communication.gif"},{display:"HireDate",name:"HireDate",newline:false,labelWidth:100,width:220,space:30,type:"date",groupicon:"../lib/icons/32X32/communication.gif"},{display:"地址",name:"Address",newline:true,labelWidth:100,width:520,space:30,type:"textarea",validate:{maxlength:60},group:"联系信息",groupicon:"../lib/icons/32X32/communication.gif"},{display:"城市",name:"City",newline:true,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:15},groupicon:"../lib/icons/32X32/communication.gif"},{display:"区域",name:"Region",newline:false,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:15},groupicon:"../lib/icons/32X32/communication.gif"},{display:"邮政编码",name:"PostalCode",newline:true,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:10},groupicon:"../lib/icons/32X32/communication.gif"},{display:"国家",name:"Country",newline:false,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:15},groupicon:"../lib/icons/32X32/communication.gif"},{display:"单位电话",name:"HomePhone",newline:true,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:24},groupicon:"../lib/icons/32X32/communication.gif"},{display:"扩展",name:"Extension",newline:false,labelWidth:100,width:220,space:30,type:"text",validate:{maxlength:4},groupicon:"../lib/icons/32X32/communication.gif"},{display:"上级",name:"ReportsTo",newline:true,labelWidth:100,width:220,space:30,type:"select",comboboxName:"ReportsToTitle",options:{valueFieldID:"ReportsTo",url:"../handler/select.ashx?view=Employees&idfield=EmployeeID&textfield=Title"},groupicon:"../lib/icons/32X32/communication.gif"},{display:"备注",name:"Notes",newline:true,labelWidth:100,width:520,space:30,type:"textarea",group:"",groupicon:"../lib/icons/32X32/communication.gif"}],
		 toJSON:JSON2.stringify
        });

        var actionRoot = "../handler/ajax.ashx?type=AjaxBaseManage";
        if(isEdit){ 
            mainform.attr("action", actionRoot + "&method=UpdateEmployees"); 
        }
        if (isAddNew) {
            mainform.attr("action", actionRoot + "&method=AddEmployees");
        }
        else { 
            LG.loadForm(mainform, { type: 'AjaxBaseManage', method: 'GetEmployees', data: { ID: currentID} },f_loaded);
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
                        win.LG.closeAndReloadParent(null, "BaseManageEmployees");
                    });
                }
            });
        }
        function f_cancel()
        {
            var win = parent || window;
            win.LG.closeCurrentTab(null);
        }

		 
    </script>
</body>
</html>

