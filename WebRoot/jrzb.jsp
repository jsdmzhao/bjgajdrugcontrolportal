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
	ApplicationContext ctx = WebApplicationContextUtils .getWebApplicationContext(request.getSession() .getServletContext());
	KqZbSvc kqZbSvc = (KqZbSvc) ctx.getBean("kqZbSvc");
	out.print(kqZbSvc.getJrZb());
	
	
%>
