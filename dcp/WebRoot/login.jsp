<%@page import="com.unis.app.userinfo.service.UserInfoSvc"%>
<%@page import="com.unis.core.util.IPUtil"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>	
<%
String paths = request.getContextPath();
String basePaths = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+paths+"/";


String ip=IPUtil.getUserIP(request);
if(ip!=null){
	Map p=new HashMap();
	p.put("cYxip", ip);
	List list=new UserInfoSvc().queryAll(p);
	if(list.size()!=0){
		Map rp=(Map)list.get(0);
		session.setAttribute("userId",rp.get("userId") );
		session.setAttribute("cJb",rp.get("cJb") );
		session.setAttribute("cYhz",rp.get("cYhz") );
		session.setAttribute("cZc",rp.get("cZc") );
		session.setAttribute("cXm",rp.get("cXm") );
		session.setAttribute("nXb",rp.get("nXb") );
		session.setAttribute("dSr",rp.get("dSr") );
		session.setAttribute("cGj",rp.get("cGj") );
		session.setAttribute("cCsd",rp.get("cCsd") );
		session.setAttribute("cHyzk",rp.get("cHyzk") );
		session.setAttribute("cXl",rp.get("cXl") );
		session.setAttribute("cByyx",rp.get("cByyx") );
		session.setAttribute("cZy",rp.get("cZy") );
		session.setAttribute("cKh",rp.get("cKh") );
		session.setAttribute("cHkszd",rp.get("cHkszd") );
		session.setAttribute("cDhhm",rp.get("cDhhm") );
		session.setAttribute("cSjhm",rp.get("cSjhm") );
		session.setAttribute("cYx",rp.get("cYx") );
		session.setAttribute("cDz",rp.get("cDz") );
		session.setAttribute("dGzsj",rp.get("dGzsj") );
		session.setAttribute("dRzsj",rp.get("dRzsj") );
		session.setAttribute("cJcjl",rp.get("cJcjl") );
		session.setAttribute("cBz",rp.get("cBz") );
		session.setAttribute("nDlcs",rp.get("nDlcs") );
		session.setAttribute("nZxsc",rp.get("nZxsc") );
		session.setAttribute("cLx",rp.get("cLx") );
		session.setAttribute("cYxip",rp.get("cYxip") );
		
		
	}else{
		session.setAttribute("cXm", "游客");
		session.setAttribute("userId", "0");
		session.setAttribute("cYhz", "0");
		session.setAttribute("cLx", "0");
	}
	
}else{
	session.setAttribute("cXm", "游客");
	session.setAttribute("userId", "0");
	session.setAttribute("cYhz", "0");
	session.setAttribute("cLx", "0");
	
}


%>
<Script>
alert('<%=ip%>');
</Script>