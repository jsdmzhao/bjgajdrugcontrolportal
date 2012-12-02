<%@page import="com.unis.app.userinfo.service.UserInfoSvc"%>
<%@page import="com.unis.app.system.service.SysRoleSvc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	Object userId=request.getParameter("userId");
	String str="";
	if(userId!=null){
		str="&userId="+userId;
	}else{
		userId="";
		
	}
	
	ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
	UserInfoSvc userInfoSvc= (UserInfoSvc) ctx.getBean("userInfoSvc");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel='stylesheet' type='text/css' href='<%=basePath%>js/fullcalendar/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='<%=basePath%>js/fullcalendar/fullcalendar.print.css' media='print' />

<script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>


    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>


	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/ClxxSvc.js'></script>



<script type="text/javascript">




var resArr=new Array();

$(function ()
{

    $('.box,.receive').ligerDrag({ proxy: 'clone', revert: true, receive: '.receive',
        onStartDrag: function ()
        {

            this.set({ cursor: "not-allowed" });
        },
        onDragEnter: function (receive, source, e)
        {
			
            this.set({ cursor: "pointer" });
            //this.proxy.html("释放注入颜色");
        },
        onDragLeave: function (receive, source, e)
        {
            this.set({ cursor: "not-allowed" });
            //this.proxy.html("");
        },
        onDrop: function (receive, source, e)
        {

	
	//alert(this.target.text());
	//alert(this.proxy.text());
            if (!this.proxy) return;
            this.proxy.hide();

            var bgcolor = this.proxy.css('backgroundColor');
            if (this.target.hasClass("receive"))
            {
                //颜色调换
                this.target.css("backgroundColor", $(receive).css("backgroundColor"));
               this.target.text( $(receive).text());
               

            }
            $(receive).css("backgroundColor", bgcolor);
            $(receive).text(this.proxy.text());
          
  
        }
    });
    
  DWREngine.setAsync(false); 


  ClxxSvc.queryAll(null,function(res){
  	
  	for(var i=0;i<res.length;i++){
  		var obj={id:res[i].cXxwh,title:res[i].cXxwh,start:res[i].dXxrq,bz: res[i].cBz};
  		resArr[i]=obj;
  		 //  alert('#'+res[i].cXxwh+'-');
  		 if(res[i].cXxwh!='\n'){
 		   $('#'+res[i].cBz).css("backgroundColor" ,"#AFCCF1");
  		 }
  		   $('#'+res[i].cBz).text(res[i].cXxwh);
  		
  		
  	}
  	
  	
  });
});
function save(){
	var arr=new Array();
	$('#mydiv div').each(function(i){
		
		if($(this).attr('id')){
			
	    var obj={};
	   // alert($(this).text());
	    obj.cXxwh=$(this).text();
	    obj.cBz=$(this).attr('id');
	    arr.push(obj);
	    
		}
		
		
	});
	
//	alert(arr.length);
	
	ClxxSvc.saveInfo(arr,function (rdata){
		if (rdata) {
			alert('保存成功');
		} else {
			alert('保存失败');
		}
	});
	

}

function del(){
	for(var i=0;i<resArr.length;i++){
	
 		   $('#'+resArr[i].bz).css("backgroundColor" ,"#FFFFFF");
  		   $('#'+resArr[i].bz).text("\n");
	}
  		
}

</script>
<style type="text/css">
*{
-moz-user-select:none
} 
	body {
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}
		
	#wrap {
		width: 1100px;
		margin: 0 auto;
		}
		
	#external-events {
		float: left;
		width: 150px;
		padding: 0 10px;
		border: 1px solid #ccc;
		background: #eee;
		text-align: left;
		}
		
	#external-events h4 {
		font-size: 16px;
		margin-top: 0;
		padding-top: 1em;
		}
		
	.external-event { /* try to mimick the look of a real event */
		margin: 10px 0;
		padding: 2px 4px;
		background: #3366CC;
		color: #fff;
		font-size: .85em;
		cursor: pointer;
		}
		
	#external-events p {
		margin: 1.5em 0;
		font-size: 11px;
		color: #666;
		}
		
	#external-events p input {
		margin: 0;
		vertical-align: middle;
		}

	#calendar {
		float: right;
		width: 900px;
		}
.proxy
{
    border: 1px splid #333;
    position: absolute;
    z-index: 4;
    background: #f1f1f1;
}
.box
{
    width: 110px;
    height: 30px;
    border: 2px solid #bbb;
        text-align: center;
    margin: 5px;
}
.receive
{
    width: 110px;
    height: 30px;
    border: 1px solid #bbb;
    float: left;
    margin: 4px; 
}

.title
{
    width: 120px;
    height: 150px;
    border: 1px solid #bbb;
    float: left;
    margin: 4px; 

}

.txt
{
    width: 110px;
    height: 50px;
    float: left;
    margin: 4px; 
}
</style>
</head>
<body style="padding: 10px " onselectstart="return false;">
<div id='external-events'>
<input type='button' value='保存限行信息' onclick='save();'><input type='button' value='清空限行信息' onclick='del();'>
<h4>限行尾号</h4>
<div class="box" style="background: #AFCCF1;position: relative;">0
</div>
<div class="box fc-event-title" style="background: #AFCCF1;">1
</div>
<div class="box" style="background: #AFCCF1;">2
</div>
<div class="box" style="background: #AFCCF1;">3
</div>
<div class="box" style="background: #AFCCF1;">4
</div>
<div class="box" style="background: #AFCCF1;">5
</div>
 <div class="box" style="background: #AFCCF1;">6
</div>
<div class="box" style="background: #AFCCF1;">7
</div>
<div class="box" style="background: #AFCCF1;">8
</div>
<div class="box" style="background: #AFCCF1;">9
</div>
<div class="box" style="background: #AFCCF1;">不限行
</div>

</div>

<div style=" position:absolute; top:60px;left:200px; width:920px; " id="mydiv">
<div class="title"><div class="txt">周日</div>
<div class="receive" id='sun1'>
</div>

<div class="receive" id='sun2'>
</div>
</div>
<div class="title"><div class="txt">周一</div>
<div class="receive" id='mon1'>
</div>

<div class="receive" id='mon2'>
</div>
</div>
<div class="title"><div class="txt">周二</div>
<div class="receive" id='tue1'>
</div>

<div class="receive" id='tue2'>
</div>
</div>
<div class="title"><div class="txt">周三</div>
<div class="receive" id='wed1'>
</div>

<div class="receive" id='wed2'>
</div>
</div>
<div class="title"><div class="txt">周四</div>
<div class="receive" id='thu1'>
</div>

<div class="receive" id='thu2'>
</div>
</div>
<div class="title"><div class="txt">周五</div>
<div class="receive" id='fri1'>
</div>

<div class="receive" id='fri2'>
</div>
</div> 
<div class="title">
<div class="txt">周六</div>
<div class="receive" id='sat1'>
</div>

<div class="receive" id='sat2'>
</div>
</div>



</div>

<div id="message">
</div>
<div style="display: none">
</div>
</body>
</html>