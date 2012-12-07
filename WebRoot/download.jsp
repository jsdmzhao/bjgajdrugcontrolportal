<%@page import="com.unis.core.commons.Combox"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.unis.app.duty.service.KqZbSvc"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	
	Calendar cal=Calendar.getInstance();    
	int y=cal.get(Calendar.YEAR);    
	int m=cal.get(Calendar.MONTH);    
	response.setContentType("application/x-download;charset=GBK");  
	response.setHeader("Content-Disposition", "attachment;filename="+y+(m+1)+".doc");

	ApplicationContext ctx = WebApplicationContextUtils .getWebApplicationContext(request.getSession() .getServletContext());
	KqZbSvc kqZbSvc = (KqZbSvc) ctx.getBean("kqZbSvc");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>值班表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
#news {
	width: 400px;
	font-size: 14px;
	line-height: 180%;
	font-family: Verdana;
}

#news #main table {
	border-collapse: collapse;
	line-height: 1.6em;
	margin: 5px 10px;
	width: 590px;
}

#news #main th {
	background: none repeat scroll 0 0 #EEEEEE;
	border: 1px solid #DDDDDD;
	font-size: 13px;
	font-weight: bold;
	padding: 5px;
}

#news #main table {
	border-collapse: collapse;
	line-height: 1.6em;
}

#news #main tbody th {
	background: none repeat scroll 0 0 #F9F9F9;
	font-weight: normal;
}

#news #main th {
	background: none repeat scroll 0 0 #EEEEEE;
	border: 1px solid #DDDDDD;
	font-size: 13px;
	font-weight: bold;
	padding: 5px;
}

#news #main td {
	border: 1px solid #DDDDDD;
	padding: 5px;
}
</style>
</head>

<body style="text-align: center; width: 500px;">
	<div id="news">
		<div id="main">
			<table>
				<thead>
					<tr>
						<th colspan="10">
					
						禁毒总队<%=y %>年<%=m+1 %>月份值班表
						
						</th>
					</tr>
					<tr>
					<%
					List titleList=new ArrayList();
					titleList.add("总队领导");
					titleList.add("带班领导");
					titleList.add("办公室");
					titleList.add("协调指导大队");
					titleList.add("缉控大队");
					titleList.add("情报中心");
					titleList.add("侦查大队");
					titleList.add("查禁大队");
					titleList.add("易管大队");
					titleList.add("值班日期");
					
					
					%>
					
						<%for(int i=0;i<titleList.size();i++){ %>
						<th><%=titleList.get(i) %></th>
						<%} %>
					</tr>
				</thead>
				<tbody>
				<%
					List<Map<String,String>> list = kqZbSvc.getMouthZbb();
				
				   int index=0;
				
				   if(list.size()>1){
					out.println("<tr>");
					out.println("<th>");
					
					 
				    for(int i=0;i<list.size();i++){
				    	
				    //	Map<String,String> pBef=list.get(i-1);
				    	Map<String,String> p=list.get(i);
				    	Map<String,String> pNext=new HashMap();
				    	if((i+1)>=list.size()){
				    	     pNext=list.get(0);
				    	}else{
				    		 pNext=list.get(i+1);
				    	}
				    	
				    	boolean flag=false;
					    for(int j=0;j<titleList.size();j++){
					    	if(titleList.get(j).equals(p.get("cMc"))){
					    		flag=true;
					    		
					    	}
					    	
					    }
				    	
				    		if(flag==false){
				    			continue;}
				    		
				    		
				    		
				    		
				    		if(titleList.get(index).equals(p.get("cMc"))&&titleList.get(index).equals(pNext.get("cMc"))){
				    			
				    			 if(list.get(i).get("cZbcw")!=null){
				    				 out.println(list.get(i).get("cZbcw") +":"+p.get("cXm"));
								 }else{
				    				 out.println(p.get("cXm"));
								 }
				    			
				    		}
		      		    else if(titleList.get(index).equals(p.get("cMc"))&&!titleList.get(index).equals(pNext.get("cMc"))){
				    			
				    			
				    			index=index+1;
				    			if(index>8){
				    				 if(list.get(i).get("cZbcw")!=null){
					    				 out.println(list.get(i).get("cZbcw") +":"+p.get("cXm")+"");
									 }else{
										 out.println(p.get("cXm")+"");
									 }
				    				
				    			}else{
				    				 if(list.get(i).get("cZbcw")!=null){
					    				 out.println(list.get(i).get("cZbcw") +":"+p.get("cXm")+"</th><th>");
									 }else{
											out.println(p.get("cXm")+"</th><th>");
									 }
				    			
				    			}
				    			
				    		}else{
				    			if(index>7){
				    			}else{
				    				out.println("</th><th>");
				    			}
				    			
				    			i=i-1;
				    			index=index+1;
				    			
				    		}
				    	 if(index>8){
				    		// i=i-1;
				    		if(i-1>0){
				    		      out.println("<th>"+list.get(i-1).get("dSj")+"</th>");
				    		}else{
						    		out.println("<th>"+list.get(i).get("dSj")+"</th>");
				    		}
				    		if(i==list.size()-1){
				    		out.println("</tr>");
							out.println("");
				    		}else{
				    			out.println("</tr><tr>");
								out.println("<th>");
				    			
				    		}
							
							index=0;
				    		
				    	}
				    	
				    }

		    		if(index!=0){
				    for(int i=index+1;i<titleList.size()-1;i++){
				    	
				    	out.println("</th><th>");
				    }
				    out.println("<th>"+	list.get(list.size()-1).get("dSj")+"</th>");
				    out.println("</th></tr>");
		    		}
				}
				%>
				<tr>
						<th colspan="10">
1.第二天值班人员作为前一天值班的备班人员，保持24小时通讯畅通。值班人员要坚守岗位,不得擅自脱岗、空岗，上午9时至下午6时外出时需向本单位主要领导请假；下午6时至第二天上午9时外出需向本单位主要领导和当日值班大队长分别请假，获批后由值班大队长向总队领导报告，并向值班室报备。						
						</th>
						</tr>
						<tr>
						<th colspan="10">
						2.不能参加当日值班的人员必须提前找人替换，由所在单位领导报总队值班室。唐屴、杨国章、郭荫茂、席志勇毒品库值班。</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>
