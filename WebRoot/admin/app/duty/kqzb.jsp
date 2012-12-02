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
<script type='text/javascript' src='<%=basePath%>js/jquery-1.8.1.min.js'></script>
<script type='text/javascript' src='<%=basePath%>js/jquery-ui-1.8.23.custom.min.js'></script>
<script type='text/javascript' src='<%=basePath%>js/fullcalendar/fullcalendar.min.js'></script>
<script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>

	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/KqZbSvc.js'></script>



<script type='text/javascript'>



DWREngine.setAsync(false); 

var resArr=new Array();
KqZbSvc.queryAll(null,function(res){
	
	for(var i=0;i<res.length;i++){
		var obj={id:res[i].userId,title:res[i].userName,start:res[i].dSj};
		resArr[i]=obj;
	}
	
	
});

	$(document).ready(function() {
	
	
		/* initialize the external events
		-----------------------------------------------------------------*/
	
		$('#external-events div.external-event').each(function() {
		
			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			// it doesn't need to have a start or end
			var eventObject = {
				title: $.trim($(this).text()), // use the element's text as the event title
				id: $(this).attr("id")
			};
			
			// store the Event Object in the DOM element so we can get to it later
			$(this).data('eventObject', eventObject);
			
			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,      // will cause the event to go back to its
				revertDuration: 0  //  original position after the drag
			});
			
		});
	
	
		/* initialize the calendar
		-----------------------------------------------------------------*/
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month'
				
			},
			height:'500',
			 eventClick: function(event) {
			 
				 if(confirm("是否删除 "+event.title+" 的值班信息")) {//alert(event.start);
					  // $("#calendar").fullCalendar('removeEvents');  
		                                                   
		            	$('#calendar').fullCalendar('removeEvents', event.id);
		                    } 
				 else{
		               return false;
		                    }

			 //$('#calendar').fullCalendar('removeEvents', event.id);
			 
			 },
			 events:resArr,
			 editable: true,
			droppable: true, // this allows things to be dropped onto the calendar !!!
			drop: function(date, allDay) { // this function is called when something is dropped
			
				// retrieve the dropped element's stored Event Object
				var originalEventObject = $(this).data('eventObject');
				
				// we need to copy it, so that multiple events don't have a reference to the same object
				var copiedEventObject = $.extend({}, originalEventObject);
				
				// assign it the date that was reported
				copiedEventObject.start = date;
				copiedEventObject.allDay = allDay;
				
				// render the event on the calendar
				// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
				$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
				
				
				
				
			
				
				// is the "remove after drop" checkbox checked?
				if ($('#drop-remove').is(':checked')) {
					// if so, remove the element from the "Draggable Events" list
					$(this).remove();
				}
				
			}
		});
		
		
	});

</script>
<style type='text/css'>

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

</style>

<style type="text/css">

ul {
 list-style: none;
}
#faq {
}
#faq li {
 margin-left: -30px;
}
#faq dl {
 margin: 0;
 padding:0;
 display:inline;
}
#faq dt {
 font-weight:bold;
 cursor:pointer;
 line-height: 25px;
 border-bottom:1px #ccc dotted;
}
#faq dd {
 display:none;
 margin:0;
 line-height: 180%;
}
</style>
<script type="text/javascript">
var lastFaqClick=null;
window.onload=function(){
  var faq=document.getElementById("faq");
  var dls=faq.getElementsByTagName("dl");
  for (var i=0,dl;dl=dls[i];i++){
    var dt=dl.getElementsByTagName("dt")[0];//取得标题
     dt.id = "faq_dt_"+(Math.random()*100);
     dt.onclick=function(){
       var p=this.parentNode;//取得父节点
        if (lastFaqClick!=null&&lastFaqClick.id!=this.id){
          var dds=lastFaqClick.parentNode.getElementsByTagName("dd");
          for (var i=0,dd;dd=dds[i];i++)
            dd.style.display='none';
        }
        lastFaqClick=this;
        var dds=p.getElementsByTagName("dd");//取得对应子节点，也就是说明部分
        var tmpDisplay='none';
        if (gs(dds[0],'display')=='none')
          tmpDisplay='block';
        for (var i=0;i<dds.length;i++)
          dds[i].style.display=tmpDisplay;
      }
  }
}

function gs(d,a){
  if (d.currentStyle){
    var curVal=d.currentStyle[a]
  }else{
    var curVal=document.defaultView.getComputedStyle(d, null)[a]
  }
  return curVal;
}

Date.prototype.format = function(format)
{
    var o =
    {
        "M+" : this.getMonth()+1, //month
        "d+" : this.getDate(),    //day
        "h+" : this.getHours(),   //hour
        "m+" : this.getMinutes(), //minute
        "s+" : this.getSeconds(), //second
        "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
        "S" : this.getMilliseconds() //millisecond
    }
    if(/(y+)/.test(format))
    format=format.replace(RegExp.$1,(this.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o)
    if(new RegExp("("+ k +")").test(format))
    format = format.replace(RegExp.$1,RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));
    return format;
}

//var ddd = new Date();
//alert(ddd.format('yyyy-MM-dd hh:mm:ss'));



</script>
</head>
<body>
<div id='wrap'>


<div id='external-events'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='button' value="保存值班信息" onclick="save();"><br/>
<input type='checkbox' id='drop-remove' checked="checked"/> <label for='drop-remove'>不允许人员重复</label>
<h4>值班人员</h4>

<ul id="faq">

<%
List<Map<String,Object>> list=userInfoSvc.chooseZb();
for(int i=0;i<list.size();i++){
	
	%>
	  <li>
    <dl>
     
      <dd>
	 <dt><%=list.get(i).get("text") %></dt><dd>
	
	
	
	<%
	List<Map> clist=(List)list.get(i).get("children");
	for(int j=0;j<clist.size();j++){
	
	%>
	
	<div class='external-event' id='<%=clist.get(j).get("id") %>' ><%=clist.get(j).get("text") %></div>
	<%}%>
	
	</dd>
	 </dl>
  </li>
	<%}%>



 </ul>

</div>

<div id='calendar'></div>

<script>

function save(){
	
	var arr=new Array();
	var t=$('#calendar').fullCalendar( 'clientEvents' );
	
	arr[0]={dSjBeg:($('#calendar').fullCalendar( 'getView' ).visStart).format('yyyy-MM-dd')+"",
			dSjEnd:($('#calendar').fullCalendar( 'getView' ).visEnd).format('yyyy-MM-dd')+""};
	
	var index=1;
	for(var i=0;i<t.length;i++){
		var obj={};
		if(t[i].start!=null){
		//	alert(t[i].start);
		//	alert($('#calendar').fullCalendar( 'getView' ).visStart);
		//	alert(t[i].start>=$('#calendar').fullCalendar( 'getView' ).visStart);
		//	alert(t[i].start<=$('#calendar').fullCalendar( 'getView' ).visEnd);
		//	alert((t[i].start<=$('#calendar').fullCalendar( 'getView' ).visStart)&&(t[i].start<=$('#calendar').fullCalendar( 'getView' ).visEnd));
			if((t[i].start>=$('#calendar').fullCalendar( 'getView' ).visStart)&&(t[i].start<=$('#calendar').fullCalendar( 'getView' ).visEnd)){
				obj.dSj=(t[i].start).format('yyyy-MM-dd')+"";
				obj.userId=t[i].id+"";
				arr[index]=obj;
				index=index+1;
				//alert("OK");
			}
		
		}
	
		
	}
	
	KqZbSvc.saveInfo(arr,function (rdata){
		if (rdata) {
			alert('保存成功');
		} else {
			alert('保存失败');
		}
	});
	
}

</script>



<div style='clear:both'></div>
</div>
</body>
</html>
