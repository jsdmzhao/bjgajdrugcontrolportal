<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

Object nXh = request.getParameter("nXh");
if(nXh==null){
	nXh="";
}
Object userId = request.getParameter("userId");
if(userId==null){
	userId="";
}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>用户 明细</title>
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
    
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/UserInfoSvc.js'></script>

</head>
<body style="padding-bottom:31px;">
    <form id="mform"  method="post"></form> 
    <script type="text/javascript"> 
	    
        var config = {"Form":{ 
         fields : [
         {name:"nXh",type:"hidden",value:'<%=nXh %>'},
         {name:"userId",type:"hidden",value:'<%=userId %>'},
         {display:"类型",name:"cLx",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"IP",name:"cYxip",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"级别",name:"cJb",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"用户组",name:"cYhz",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"职称",name:"cZc",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"姓名",name:"cXm",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"性别",name:"nXb",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"生日",name:"dSr",newline:true,labelWidth:100,width:200,space:30,type:"date"},
         {display:"国籍",name:"cGj",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"出生地",name:"cCsd",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"婚姻状况",name:"cHyzk",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"学历",name:"cXl",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"毕业院校",name:"cByyx",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"专业",name:"cZy",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"卡号",name:"cKh",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"户口所在地",name:"cHkszd",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"电话号码",name:"cDhhm",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"手机号码",name:"cSjhm",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"邮箱",name:"cYx",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"地址",name:"cDz",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"工作时间",name:"dGzsj",newline:false,labelWidth:100,width:200,space:30,type:"date"},
         {display:"入职时间",name:"dRzsj",newline:true,labelWidth:100,width:200,space:30,type:"date"},
         {display:"检查记录",name:"cJcjl",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"登录次数",name:"nDlcs",newline:true,labelWidth:100,width:200,space:30,type:"text"},
         {display:"在线时长",name:"nZxsc",newline:false,labelWidth:100,width:200,space:30,type:"text"},
         {display:"备注",name:"cBz",newline:true,labelWidth:100,width:500,space:30,type:"textarea"}
        ]
 }};

        var forbidFields = [];
        LG.adujestConfig(config,forbidFields);

        var roleids = '';
        //当前ID
        var currentID = '<%= nXh %>';
        if(currentID==""){
        	currentID = '<%= userId %>';
            }
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
        var mform = $("#mform");  
        mform.ligerForm({ 
         inputWidth: 280,
         fields : config.Form.fields//,
		 //toJSON:JSON2.stringify
        });

      //  $("#RoleID").val(roleids);

        var actionRoot = "";
        if(isEdit){ 
          //  $("#LoginName").attr("readonly", "readonly").removeAttr("validate");
         //   mform.attr("action", actionRoot + "newsUpdate"); 
        }
        if (isAddNew) {
        //    mform.attr("action", actionRoot + "newsSave");
        }
        else { 
             var obj={nXh:'<%=nXh%>',userId :'<%=userId%>' };
        	UserInfoSvc.queryAll(obj, function (rdata)
                    {
        		    if(rdata != null){
        		    	var data=rdata[0];
                        var preID =  "";
                        //根据返回的属性名，找到相应ID的表单元素，并赋值
                        for (var p in data)
                        {
                            var ele = $("[name=" + (preID + p) + "]", mform);
                            //针对复选框和单选框 处理
                            if (ele.is(":checkbox,:radio"))
                            {
                                ele[0].checked = data[p] ? true : false;
                            }
                            else
                            {
                                ele.val(data[p]);
                            }
                        }
                        //下面是更新表单的样式
                        var managers = $.ligerui.find($.ligerui.controls.Input);
                        for (var i = 0, l = managers.length; i < l; i++)
                        {
                            //改变了表单的值，需要调用这个方法来更新ligerui样式
                            var o = managers[i];
                            o.updateStyle();
                            if (managers[i] instanceof $.ligerui.controls.TextBox)
                                o.checkValue();
                        }
        		    }else{
        		    	
        		    	  LG.showError('数据加载失败!');
        		    }
                      
            });
            
            
        }  

        if(!isView) 
        {
            //验证
            jQuery.metadata.setType("attr", "validate"); 
            LG.validate(mform);
        } 

		function f_loaded()
        {
            if(!isView) return; 
            //查看状态，控制不能编辑
            $("input,select,textarea",mform).attr("readonly", "readonly");
        }

        
        function f_save() {

        	var formMap = DWRUtil.getValues("mform"); 
			if(isAddNew){
        	UserInfoSvc.save(formMap,function (rdata){
        		if (rdata) {
					LG.showSuccess('保存成功', function() {
						  f_cancel();
	                      parent.loadGrid();
					});
				} else {
					LG.showError('保存失败');
				}
			});
        	}else{
        	   	UserInfoSvc.update(formMap,function (rdata){
        	   		if (rdata) {
    					LG.showSuccess('修改成功', function() {
    						  f_cancel();
    	                      parent.loadGrid();
    					});
    				} else {
    					LG.showError('修改失败');
    				}
    			});
        		
        	}
			
        	
        	/**
            LG.submitForm(mform, function (data) {
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
            parent.dialog_hidden();
        }
    </script>
  
</body>

</html>

