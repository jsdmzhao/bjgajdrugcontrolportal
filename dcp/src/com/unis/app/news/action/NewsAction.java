package com.unis.app.news.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.app.news.model.News;
import com.unis.app.pagination.Pagination;
import com.unis.core.action.CreateIndexAction;
import com.unis.core.commons.Combox;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.DateUtil;
import com.unis.core.util.Globals;
import com.unis.core.util.PageModel;

@Controller
@Scope(value="prototype")
public class NewsAction {

	private News news;
	
	private String pageNo;
	
	private Map<String, Object> resMap; 
	
	private PageModel pageModel;
	
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
	public String getNewsLanmuCombox(HttpServletRequest request){
		HttpSession session = request.getSession();
		String c_yhzid = session.getAttribute("cYhz")+"";
		StringBuffer sbf = new StringBuffer("[");
		List<Combox> comboxList = (List<Combox>) newsService.selectList("NewsMapper.getNewsLanmuCombox", c_yhzid);
		
		for(Combox combox : comboxList){
			sbf.append("{text:'"+combox.getText()+"', value:'"+combox.getValue()+"'");
			List<Combox> childList = getLanmuChilden(combox.getValue(),c_yhzid);
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
	public List<Combox> getLanmuChilden(String c_sjdm,String c_yhzid){
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("c_sjlmdm", c_sjdm);
		sqlParamMap.put("c_yhzid", c_yhzid);
		List<Combox> comboxList = (List<Combox>) newsService.selectList("NewsMapper.getLanmuChilden", sqlParamMap);
		return comboxList;
	}
	
	public String newsSave(Map<String, String> sqlParamMap, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			newsService.update("NewsMapper.updateNews", sqlParamMap);
		} else {
			String c_yhid = session.getAttribute("userId")+"";
			String c_yhzid = session.getAttribute("cYhz")+"";
			sqlParamMap.put("c_yhid", c_yhid);
			sqlParamMap.put("c_yhzid", c_yhzid);
			newsService.insert("NewsMapper.insertNews", sqlParamMap);
		}
		return Globals.SUCCESS;
	}
	
	
	public String newsOperate(String operateType, String value, String n_xh, HttpServletRequest request) throws IOException{
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		//String path = request.getContextPath();
		//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		String c_yhzid = session.getAttribute("cYhz")+"";
		sqlParamMap.put("c_yhid", c_yhid);
		sqlParamMap.put("c_yhzid", c_yhzid);
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("value", value);
		sqlParamMap.put("n_xh", n_xh);
	    newsService.update("NewsMapper.operateNews", sqlParamMap);
		//if("zd".equals(operateType) || "sh".equals(operateType)){
		//	createdIndexAction.createIndexHtml(basePath+"index.jsp");
		//}
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> newsList(String c_lm,String c_bt, String c_sfsh, HttpServletRequest request){
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		String c_yhzid = session.getAttribute("cYhz")+"";
		news = new News();
		news.setC_lm(c_lm);
		news.setC_bt(c_bt);
		news.setC_yhzid(c_yhzid);
		news.setC_yhid(c_yhid);
		news.setC_sfsh(c_sfsh);
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsList", news);
		resMap.put("Rows", newsList);
		resMap.put("Total", newsList.size());
		return resMap;
	}
	
	@SuppressWarnings("unchecked")
	public String newsCenterList() throws UnsupportedEncodingException{
		
		pageModel = new PageModel();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		String c_yhzid = session.getAttribute("cYhz")+"";
		
		//if(StringUtils.isNotEmpty(news.getC_bt())){
			//news.setC_bt(URLDecoder.decode(news.getC_bt(), "UTF-8"));
		//}
		news.setC_yhzid(c_yhzid);
		news.setC_yhid(c_yhid);
		news.setStart(String.valueOf(((Integer.parseInt(pageNo)-1)*Globals.pageSize)));
		news.setLimit(String.valueOf((Integer.parseInt(pageNo)*Globals.pageSize)));
		
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexPageList", news);
		Long totalRecords = (Long) newsService.selectOne("NewsMapper.getNewsIndexPageCnt", news);
		String keyWords = "信息检索";
		if(StringUtils.isNotEmpty(news.getC_lm())){
			keyWords = (String) newsService.selectOne("NewsMapper.getLanmuName", news.getC_lm());
		}
		
		      
		pageModel.setList(newsList);
		pageModel.setTotalRecords(totalRecords);
		pageModel.setPageNo(Long.valueOf(pageNo));
		pageModel.setKeyWords(keyWords);
		//news.c_lm=1239
		if("1239".equals(news.getC_lm())){
			return Globals.INPUT;
		}
		return Globals.SUCCESS;
	}
	
	public String newsUpdate(){
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		//newsService.update("NewsMapper.updateNews", news);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String  newsIndexList(){
		
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		
		resMap = new HashMap<String, Object>();
		
		//工作要闻
		sqlParamMap.put("c_lm", "1081");
		sqlParamMap.put("rownum", "14");
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("lddtList", newsList);
		
		//工作要闻有图的三个
		sqlParamMap.put("c_lm", "1081");
		sqlParamMap.put("rownum", "4");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("hdpList", newsList);
		
		//通知通报
		sqlParamMap.put("c_lm", "1194");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("tztbList", newsList);
		
		//队伍建设
		sqlParamMap.put("c_lm", "1196");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("dwjsList", newsList);
		
		//公告栏
		sqlParamMap.put("c_lm", "1200");
		sqlParamMap.put("rownum", "11");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("gglList", newsList);
		
		//禁毒动态
		sqlParamMap.put("c_lm", "1193");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("jddtList", newsList);
		
		//禁毒文件
		sqlParamMap.put("c_lm", "1197");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("jdwjList", newsList);
		
		//区县警讯
		sqlParamMap.put("c_lm", "1199");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("qxjxList", newsList);
		
		//媒体关注
		sqlParamMap.put("c_lm", "1198");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("mtgzList", newsList);
		
		//滚动专题专栏
		sqlParamMap.put("c_lm", "1283");
		sqlParamMap.put("rownum", "");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexNoLimitList", sqlParamMap);
		resMap.put("ztzlList", newsList);
		
		//全国导航
		sqlParamMap.put("c_lm", "1202");
		sqlParamMap.put("rownum", "");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexNoLimitList", sqlParamMap);
		//List<Website> websites = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", "1202");
		resMap.put("qgdhList", newsList);
		
		//市局导航
		sqlParamMap.put("c_lm", "1203");
		sqlParamMap.put("rownum", "");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexNoLimitList", sqlParamMap);
		resMap.put("sjdhList", newsList);
		
		//分县局导航
		sqlParamMap.put("c_lm", "1205");
		sqlParamMap.put("rownum", "");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexNoLimitList", sqlParamMap);
		resMap.put("fxjdhList", newsList);
		
		//禁毒导航
		sqlParamMap.put("c_lm", "1204");
		sqlParamMap.put("rownum", "");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexNoLimitList", sqlParamMap);
		resMap.put("jddhList", newsList);
		
		//信息排行
		newsList = (List<News>) newsService.selectList("NewsMapper.sortIndexCnt","");
		resMap.put("xxphList", newsList);
		
		//当前日期
		resMap.put("sysdate", DateUtil.getSysDate("yyyy-MM-dd"));
		
		return  Globals.SUCCESS;
	}
	
	public String getPageNo() {
		return pageNo;
	}

	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}

	public String newsView(){
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		//newsService.update("NewsMapper.updateNews", news);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String newsCenter(){
		
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		
		resMap = new HashMap<String, Object>();
		
		/*
		sqlParamMap.put("c_lm", "1193");//禁毒动态
		sqlParamMap.put("rownum", "10");
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsCenterList", sqlParamMap);
		resMap.put("Rows1", newsList);
		
		sqlParamMap.put("c_lm", "1189");//禁毒情报
		sqlParamMap.put("rownum", "10");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsCenterList", sqlParamMap);
		resMap.put("Rows2", newsList);
		
		sqlParamMap.put("c_lm", "1223");//禁毒在线
		sqlParamMap.put("rownum", "10");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsCenterList", sqlParamMap);
		resMap.put("Rows3", newsList);
		
		sqlParamMap.put("c_lm", "1190");//侦察破案
		sqlParamMap.put("rownum", "10");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsCenterList", sqlParamMap);
		resMap.put("Rows4", newsList);
		*/
		
		sqlParamMap.put("c_lm", "1219");//新闻时事
		sqlParamMap.put("rownum", "10");
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsCenterList", sqlParamMap);
		resMap.put("Rows5", newsList);
		
		return Globals.SUCCESS;
	}
	
	public String newsDelete(String n_xh, HttpServletRequest request) throws IOException{
		//String path = request.getContextPath();
		//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		newsService.update("NewsMapper.deleteNews", n_xh);

		//createdIndexAction.createIndexHtml(basePath+"index.jsp");
		return Globals.SUCCESS;
	}
	
	public String newsQuery(){
		news = (News) newsService.selectOne("NewsMapper.getIndexNews", news);
		return Globals.SUCCESS;
	}
	
	public String newsDetail(){
		news = (News) newsService.selectOne("NewsMapper.getIndexNews", news);
		return Globals.SUCCESS;
	}
	
/*	
 * @SuppressWarnings("unchecked")
	public String newsQuerys(){
		Querys= (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", news);
        return Globals.SUCCESS;
	}
*/	
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

	
	
	
	@SuppressWarnings("rawtypes")
	public List queryInfo(Map p){
		return newsService.selectList("NewsMapper.queryInfo", p);
	}

	@SuppressWarnings("rawtypes")
	public Object queryCountInfo(Map p) {
		return newsService.selectOne("NewsMapper.queryCountInfo", p);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String newsQuerys() throws UnsupportedEncodingException{
		
		resMap = new HashMap<String, Object>();
		
		String c_lm="";
		String c_bt="";
		int pageIndex=1;
		int pageSize=10;
		
		if(news.getC_lm()!=null){
			c_lm=news.getC_lm();
		}
		
		if(news.getC_bt()!=null){
			c_bt=news.getC_bt();
			c_bt = URLDecoder.decode(c_bt, "UTF-8");
		}
		
		if(news.getPageIndex()!=null ){
			pageIndex=news.getPageIndex();
		}
		
		if(news.getPageSize()!=null){
			pageSize=news.getPageSize();
		}
		
		Map p=new HashMap();
		p.put("c_lm", c_lm);
		p.put("c_bt", c_bt);
		Map page=new HashMap();
		page.put("pageIndex", pageIndex);
		page.put("pageSize", pageSize);
		
		String count = String.valueOf((Integer)queryCountInfo(p));
		if("0".equals(count)){
			return Globals.SUCCESS;
		}else{ 
			page.put("recordCount", count);
			Pagination pagination = new Pagination(page);
			page.put("pageCount", pagination.getPageCount());
			p.put("startIndex", pagination.getStartIndex());
			p.put("lastIndex", pagination.getLastIndex());
			List<News> list = queryInfo(p);
			//Map retMap = new HashMap();
			
			resMap.put("data", list);
			resMap.put("page", page);
			
			return Globals.SUCCESS;
			
		}
	}

	public PageModel getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel pageModel) {
		this.pageModel = pageModel;
	}
	
	 
}
