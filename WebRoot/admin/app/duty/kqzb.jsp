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
<script type='text/javascript'>

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
				right: 'month,agendaWeek,agendaDay'
				
			},
			height:'500',
			 eventClick: function(event) {//alert(event.id); 
			 
				 if(confirm("是否删除 "+event.title+" 的值班信息")) { 
		           
		            	$('#calendar').fullCalendar('removeEvents', event.id);
		                    } 
				 else{
		               return false;
		                    }

			 //$('#calendar').fullCalendar('removeEvents', event.id);
			 
			 },
			
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
</head>
<body>
<div id='wrap'>


<div id='external-events'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='button' value="保存值班信息" onclick="abc();"><br/>
<input type='checkbox' id='drop-remove' checked="checked"/> <label for='drop-remove'>不允许人员重复</label>
<h4>值班人员</h4>
<%
List<Map> list=userInfoSvc.chooseWithDep();
for(int i=0;i<list.size();i++){
	
	%>
	<div class='external-event' id='<%=list.get(i).get("id") %>'><%=list.get(i).get("text") %></div>
	
	<%
}



%>


</div>

<div id='calendar'></div>

<script>
function abc(){
	var t=$('#calendar').fullCalendar( 'clientEvents' );
	
	alert(t);
	
	alert(t[0].id);
	
	alert(t[0].title);
	
	alert(t[0].start);
	
	alert(t[0].end);
	
}

</script>



<div style='clear:both'></div>
</div>
</body>
</html>
