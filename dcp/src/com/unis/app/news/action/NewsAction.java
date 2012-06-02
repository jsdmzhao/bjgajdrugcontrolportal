package com.unis.app.news.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.shgk.common.util.WebUtil;
import com.unis.app.news.model.News;

@Controller
@Scope(value="prototype")
public class NewsAction {

	private News news;
	
	@Autowired
	private AbsServiceAdapter<Integer> newsService = null;
	
	public String newsSave(){
		//HttpServletRequest request = ServletActionContext.getRequest();
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		WebContext context = WebContextFactory.get();
		HttpServletRequest request = context.getHttpServletRequest();
	    sqlParamMap = WebUtil.getParamsFromRequest(request);
		//System.out.println(request.getParameter("c_bt")+"------56-----"+sqlParamMap.get("c_bt"));
		newsService.insert("NewsMapper.insertNews", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	public String newsUpdate(){
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		//newsService.update("NewsMapper.updateNews", news);
		return Globals.SUCCESS;
	}
	
	public String newsDelete(){
		
		newsService.update("NewsMapper.deleteNews", news);
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
