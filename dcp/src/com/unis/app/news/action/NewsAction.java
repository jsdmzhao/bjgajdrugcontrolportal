package com.unis.app.news.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.news.model.News;

@Controller
@Scope(value="prototype")
public class NewsAction {

	private News news;
	
	private Map<String, Object> resMap; 
	public Map<String, Object> getResMap() {
		return resMap;
	}

	public void setResMap(Map<String, Object> resMap) {
		this.resMap = resMap;
	}

	@Autowired
	private AbsServiceAdapter<Integer> newsService = null;
	
/*	public String newsSave(){
		//HttpServletRequest request = ServletActionContext.getRequest();
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		WebContext context = WebContextFactory.get();
		HttpServletRequest request = context.getHttpServletRequest();
	    sqlParamMap = WebUtil.getParamsFromRequest(request);
		//System.out.println(request.getParameter("c_bt")+"------56-----"+sqlParamMap.get("c_bt"));
		newsService.insert("NewsMapper.insertNews", sqlParamMap);
		return Globals.SUCCESS;
	}*/
	
	public String newsSave(Map<String, String> sqlParamMap){
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			newsService.update("NewsMapper.updateNews", sqlParamMap);
		} else {
			newsService.insert("NewsMapper.insertNews", sqlParamMap);
		}
		return Globals.SUCCESS;
	}
	
	public String newsOperate(String operateType, String value, String n_xh){
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("value", value);
		sqlParamMap.put("n_xh", n_xh);
	    newsService.update("NewsMapper.operateNews", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> newsList(String c_lm){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsList", c_lm);
		resMap.put("Rows", newsList);
		resMap.put("Total", newsList.size());
		return resMap;
	}
	
	public String newsUpdate(){
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		//newsService.update("NewsMapper.updateNews", news);
		return Globals.SUCCESS;
	}
	
	public String  newsindexList(){
		resMap = new HashMap<String, Object>();
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsList", news);
		resMap.put("Rows", newsList);
		resMap.put("Total", newsList.size());
		return  Globals.SUCCESS;
	}
	
	public String newsView(){
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		//newsService.update("NewsMapper.updateNews", news);
		return Globals.SUCCESS;
	}
	
	public String newsDelete(String n_xh){
		
		newsService.update("NewsMapper.deleteNews", n_xh);
		return Globals.SUCCESS;
	}
	
	public String newsQuery(){
		
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		return Globals.SUCCESS;
	}
	
	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public AbsServiceAdapter<Integer> getNewsService() {
		return newsService;
	}

	public void setNewsService(AbsServiceAdapter<Integer> newsService) {
		this.newsService = newsService;
	}

	
}
