<%@page import="com.unis.app.news.model.News"%>
<%@page import="com.unis.app.news.service.NewsService"%>
<%@page import="com.unis.app.news.action.NewsAction"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String n_xh=request.getParameter("param");
ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
NewsService newsService= (NewsService) ctx.getBean("newsService");

String c_yhid = session.getAttribute("userId")+"";
String c_yhzid = session.getAttribute("cYhz")+"";

//if(StringUtils.isNotEmpty(news.getC_bt())){
	//news.setC_bt(URLDecoder.decode(news.getC_bt(), "UTF-8"));
//}
News news=new News();
news.setC_yhzid(c_yhzid);
news.setC_yhid(c_yhid);
news.setC_lm("1239");
news.setC_sfscsp("1");


List<News> list= (List<News>) newsService.selectList("NewsMapper.getVideoNewsList", news);

List<News> newsList=new ArrayList();
if(n_xh!=null&&!"".equals(n_xh)){
	news.setN_xh(n_xh);
	newsList= (List<News>) newsService.selectList("NewsMapper.getVideoNewsList", news);
}


newsList.addAll(list);

%>
<?xml version="1.0" encoding="utf-8"?>
<item>
<%  for(int i=0;i<newsList.size();i++){
	News news_r=newsList.get(i);
	
	%>
	
	<list name="<%=news_r.getC_bt() %>" videotitle="<%=news_r.getC_bt() %>" link="<%=basePath %><%=news_r.getC_spljdz() %>" >
       <thumb><%=basePath %><%=news_r.getC_spfmljdz()!=null?news_r.getC_spfmljdz():"video/images/null.png" %></thumb>      
   </list>  
	<%
}

%>
   
   
   
   
</item>