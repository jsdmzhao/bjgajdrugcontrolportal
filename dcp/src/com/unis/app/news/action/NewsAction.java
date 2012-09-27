package com.unis.app.news.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.action.CreateIndexAction;
import com.unis.core.commons.Combox;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.news.model.News;
import com.unis.app.website.model.Website;

@Controller
@Scope(value="prototype")
public class NewsAction {

	private News news;
	
	private Map<String, Object> resMap; 
	public Map<String, Object> getResMap() {
		return resMap;
	}
	private List<News> Querys;
	public List<News> getQuerys() {
		return Querys;
	}

	public void setQuerys(List<News> newsQuerys) {
		this.Querys = newsQuerys;
	}

	public void setResMap(Map<String, Object> resMap) {
		this.resMap = resMap;
	}

	@Autowired
	private AbsServiceAdapter<Integer> newsService = null;
	@Autowired
	private CreateIndexAction createdIndexAction = null;
	
	@SuppressWarnings("unchecked")
	public String getNewsLanmuCombox(){
		StringBuffer sbf = new StringBuffer("[");
		List<Combox> comboxList = (List<Combox>) newsService.selectList("NewsMapper.getNewsLanmuCombox", "0");
		
		for(Combox combox : comboxList){
			sbf.append("{text:'"+combox.getText()+"', value:'"+combox.getValue()+"'");
			List<Combox> childList = getLanmuChilden(combox.getValue());
			if(!childList.isEmpty()){
				sbf.append(",children: [");
				for(Combox combChild : childList){
					sbf.append("{text:'"+combChild.getText()+"', value:'"+combChild.getValue()+"'},");
				}
				sbf.replace(sbf.lastIndexOf(","), sbf.length(), "");
				sbf.append("]},");
			} else {
				sbf.append("},");
			}
		}
		sbf.replace(sbf.lastIndexOf(","), sbf.length(), "");
		sbf.append("]");
		
		return sbf.toString();
	}
	
	@SuppressWarnings("unchecked")
	public List<Combox> getLanmuChilden(String c_sjdm){
		List<Combox> comboxList = (List<Combox>) newsService.selectList("NewsMapper.getLanmuChilden", c_sjdm);
		return comboxList;
	}
	
	public String newsSave(Map<String, String> sqlParamMap){
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			newsService.update("NewsMapper.updateNews", sqlParamMap);
		} else {
			newsService.insert("NewsMapper.insertNews", sqlParamMap);
		}
		return Globals.SUCCESS;
	}
	
	
	public String newsOperate(String operateType, String value, String n_xh, HttpServletRequest request) throws IOException{
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		sqlParamMap.put("c_yhid", c_yhid);
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("value", value);
		sqlParamMap.put("n_xh", n_xh);
		if("zd".equals(operateType) || "sh".equals(operateType)){
			createdIndexAction.createIndexHtml("http://localhost:8080/dcp/index.jsp");
		}
	    newsService.update("NewsMapper.operateNews", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> newsList(String c_lm,String c_bt, HttpServletRequest request){
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		String c_yhzid = session.getAttribute("cYhz")+"";
		news = new News();
		news.setC_lm(c_lm);
		news.setC_bt(c_bt);
		news.setC_yhzid(c_yhzid);
		news.setC_yhid(c_yhid);
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsList", news);
		resMap.put("Rows", newsList);
		resMap.put("Total", newsList.size());
		return resMap;
	}
	
	public String newsUpdate(){
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		//newsService.update("NewsMapper.updateNews", news);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String  newsindexList(){

		resMap = new HashMap<String, Object>();
		News n =new News();
		n.setC_lm("1195");
		List<News> newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows1", newsList1);
		n.setC_lm("1221");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows2", newsList1);
		n.setC_lm("1255");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows3", newsList1);
		n.setC_lm("1196");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows4", newsList1);
		n.setC_lm("1197");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows5", newsList1);
		n.setC_lm("1198");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows6", newsList1);
		n.setC_lm("1199");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows7", newsList1);
		n.setC_lm("1191");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows8", newsList1);
		n.setC_lm("1189");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows9", newsList1);
		n.setC_lm("1237");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", n);
		resMap.put("Rows10", newsList1);
		List<Website> websites = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", "1001");
		resMap.put("Rows11", websites);
		 websites = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", "1002");
		resMap.put("Rows12", websites);
		 websites = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", "1003");
		resMap.put("Rows13", websites);
		 websites = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", "1004");
		resMap.put("Rows14", websites);
		 websites = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", "1005");
		resMap.put("Rows15", websites);
		
		n.setC_lm("1201");
		newsList1 = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList",n);
		resMap.put("RowsPic", newsList1);
		
		newsList1 = (List<News>) newsService.selectList("NewsMapper.sortIndexCnt","");
		resMap.put("RowsSort", newsList1);
		
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
	
	@SuppressWarnings("unchecked")
	public String newsQuerys(){
		Querys= (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", news);
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

	public CreateIndexAction getCreatedIndexAction() {
		return createdIndexAction;
	}

	public void setCreatedIndexAction(CreateIndexAction createdIndexAction) {
		this.createdIndexAction = createdIndexAction;
	}

}
