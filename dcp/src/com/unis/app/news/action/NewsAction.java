package com.unis.app.news.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.app.column.model.Column;
import com.unis.app.duty.service.KqZbSvc;
import com.unis.app.limit.service.ClxxSvc;
import com.unis.app.news.model.News;
import com.unis.app.pagination.Pagination;
import com.unis.app.userinfo.service.UserInfoSvc;
import com.unis.app.website.model.Website;
import com.unis.core.commons.Combox;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.DateUtil;
import com.unis.core.util.Globals;
import com.unis.core.util.IPUtil;
import com.unis.core.util.PageModel;

@Controller
@Scope(value="prototype")
public class NewsAction {

	private News news;
	
	private String pageNo;
	
	private Map<String, Object> resMap; 
	
	private PageModel pageModel;
	
	private Integer pagesize;
	
	private Integer page;

	private List<News> Querys;
	
	@Autowired
	private AbsServiceAdapter<Integer> newsService = null;
	
	@Autowired
	private ClxxSvc clxxSvc = null;
	
	@Autowired
	private KqZbSvc kqzbSvc = null;
	
	@Autowired
	private UserInfoSvc userInfoSvc = null;
	
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
	public void newsCombox() throws IOException{
		

		List<Combox> newsList = (List<Combox>) newsService.selectList("NewsMapper.getNewsDmCombox", "NDEP");

		ObjectMapper mapper = new ObjectMapper();
    	HttpServletResponse response = ServletActionContext.getResponse();
    	response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		mapper.writeValue(out, newsList);
		out.flush();
		out.close();
	}
	
	@SuppressWarnings("unchecked")
	public void newsPageList() throws IOException{
		
		//HttpServletRequest request = ServletActionContext.getRequest();
		//HttpSession session = request.getSession();
		
		//String c_yhid = session.getAttribute("userId")+"";
		//String c_yhzid = session.getAttribute("cYhz")+"";
		
		//news.setC_yhzid(c_yhzid);
		//news.setC_yhid(c_yhid);
		
		news.setStart(String.valueOf(((page.intValue()-1)*pagesize.intValue())));
		news.setLimit(String.valueOf((page.intValue()*pagesize.intValue())));
		
		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexPageList", news);
		Long totalRecords = (Long) newsService.selectOne("NewsMapper.getNewsIndexPageCnt", news);
		Map<String, Object> resMap = new HashMap<String, Object>();
		
		resMap.put("Rows", newsList);
		resMap.put("Total", totalRecords);
		
		ObjectMapper mapper = new ObjectMapper();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		mapper.writeValue(out, resMap);
		out.flush();
		out.close();
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
		
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		Map<String, Object> resMap = new HashMap<String, Object>();
		
		//banner导航菜单
		sqlParamMap.put("c_sjlmdm", "0000");
		List<Column> columnList = (List<Column>) newsService.selectList("ColumnMapper.getColumnIndexList", sqlParamMap);
		resMap.put("dhcdList", columnList);
		
		//二级菜单
		List<List<Column>> cdlist = new ArrayList<List<Column>>();
		for(int i = 0; i < columnList.size(); i++ ){
			sqlParamMap.put("c_sjlmdm", columnList.get(i).getC_lmdm());
			List<Column> colList = (List<Column>) newsService.selectList("ColumnMapper.getColumnIndexList", sqlParamMap);
			cdlist.add(i, colList);
		}
		resMap.put("dhejcdList", cdlist);
		
		pageModel.setResMap(resMap);
		pageModel.setList(newsList);
		pageModel.setTotalRecords(totalRecords);
		pageModel.setPageNo(Long.valueOf(pageNo));
		pageModel.setKeyWords(keyWords);
		pageModel.setSysdate(DateUtil.getSysDate("yyyy-MM-dd"));
		//news.c_lm=1239
	//	if("1239".equals(news.getC_lm())){
	//		return Globals.INPUT;
	//	}
		if("12390".equals(news.getC_lm())){
			return Globals.INPUT;
		}
		
		
		
		return Globals.SUCCESS;
	}
	
	public String newsUpdate(){
		news = (News) newsService.selectOne("NewsMapper.getNews", news);
		//newsService.update("NewsMapper.updateNews", news);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String  newsIndexList() throws SQLException{
		
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		
		resMap = new HashMap<String, Object>();
		
		//banner导航菜单
		sqlParamMap.put("c_sjlmdm", "0000");
		List<Column> columnList = (List<Column>) newsService.selectList("ColumnMapper.getColumnIndexList", sqlParamMap);
		resMap.put("dhcdList", columnList);
		
		//二级菜单
		List<List> cdlist = new ArrayList<List>();
		for(int i = 0; i < columnList.size(); i++ ){
			sqlParamMap.put("c_sjlmdm", columnList.get(i).getC_lmdm());
			List<Column> colList = (List<Column>) newsService.selectList("ColumnMapper.getColumnIndexList", sqlParamMap);
			cdlist.add(i, colList);
		}
		resMap.put("dhejcdList", cdlist);
		
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
		
		//禁毒文件
		sqlParamMap.put("c_lm", "1197");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("jdwjList", newsList);
		
		//队伍建设
		sqlParamMap.put("c_lm", "1196");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("dwjsList", newsList);
		
		//学习十八大
		sqlParamMap.put("c_lm", "1140");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("xxsbdList", newsList);
		
		
		//每日警情
		sqlParamMap.put("c_lm", "1350");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("mrjqList", newsList);
		
		
		//区县动态
		sqlParamMap.put("c_lm", "1351");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("qxdtList", newsList);
		
		
		//动态管控
		sqlParamMap.put("c_lm", "1267");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("dtgkList", newsList);
		
		
		//预防教育
		sqlParamMap.put("c_lm", "1188");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("yfjyList", newsList);
		
		//场所管理
		sqlParamMap.put("c_lm", "1146");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("csglList", newsList);
		
		//两品管理 
		sqlParamMap.put("c_lm", "1105");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("lpglList", newsList);
		
		
		//情报信息
		sqlParamMap.put("c_lm", "1101");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("qbxxList", newsList);
		
		//执法规范
		sqlParamMap.put("c_lm", "1107");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("zfgfList", newsList);
		
		//禁毒考核
		sqlParamMap.put("c_lm", "1108");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("jdkhList", newsList);
		
		//目标案件
		sqlParamMap.put("c_lm", "1102");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("mbajList", newsList);
		
		//打零收戒
		sqlParamMap.put("c_lm", "1103");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("dlsjList", newsList);
		
		//堵源截流
		sqlParamMap.put("c_lm", "1104");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("dyjlList", newsList);
		
		
		//调研交流 1352 领导讲话 1353 禁毒视角 1354
		sqlParamMap.put("c_lm", "1352");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("dyjl2List", newsList);
		
		//领导讲话
		sqlParamMap.put("c_lm", "1353");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("ldjhList", newsList);
		
		//禁毒视角
		sqlParamMap.put("c_lm", "1354");
		sqlParamMap.put("rownum", "7");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("jdsjList", newsList);
		
		//公告栏
		sqlParamMap.put("c_lm", "1200");
		sqlParamMap.put("rownum", "8");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("gglList", newsList);
		
		//应用导航
		sqlParamMap.put("c_lm", "1509");
		sqlParamMap.put("rownum", "6");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", sqlParamMap);
		resMap.put("yydhList", newsList);
		
		//滚动专题专栏
		sqlParamMap.put("c_lm", "1283");
		sqlParamMap.put("rownum", "");
		newsList = (List<News>) newsService.selectList("NewsMapper.getNewsIndexNoLimitList", sqlParamMap);
		resMap.put("ztzlList", newsList);
		
		//全国导航
		sqlParamMap.put("n_lbxh", "1003");
		sqlParamMap.put("rownum", "");
		List<Website> webList = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", sqlParamMap);
		//List<Website> websites = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", "1202");
		resMap.put("qgdhList", webList);
		
		//市局导航
		sqlParamMap.put("n_lbxh", "1001");
		sqlParamMap.put("rownum", "");
		webList = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", sqlParamMap);
		resMap.put("sjdhList", webList);
		
		//分县局导航
		sqlParamMap.put("n_lbxh", "1002");
		sqlParamMap.put("rownum", "");
		webList = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", sqlParamMap);
		resMap.put("fxjdhList", webList);
		
		//禁毒导航
		sqlParamMap.put("n_lbxh", "1005");
		sqlParamMap.put("rownum", "");
		webList = (List<Website>) newsService.selectList("WebsiteMapper.getWebsiteLists", sqlParamMap);
		resMap.put("jddhList", webList);
		
		//信息排行
		newsList = (List<News>) newsService.selectList("NewsMapper.sortIndexSJCnt","");
		resMap.put("sjphList", newsList);
		
		newsList = (List<News>) newsService.selectList("NewsMapper.sortIndexQXCnt","");
		resMap.put("qxphList", newsList);
		
		//车辆限行
		resMap.put("clxxStr", clxxSvc.getWh());
		
		//值班表
		resMap.put("zbbStr", kqzbSvc.getZb());
		
		//生日提醒
		resMap.put("srtsStr", userInfoSvc.getSr());
		
		
		String ip=IPUtil.getUserIP(request);
		if(ip!=null){
			Map p=new HashMap();
			p.put("cYxip", ip);
			List list=userInfoSvc.queryAll(p);
			if(list.size()!=0){
				Map rp=(Map)list.get(0);
				session.setAttribute("userId",rp.get("userId") );
				session.setAttribute("cJb",rp.get("cJb") );
				session.setAttribute("cYhz",rp.get("cYhz") );
				session.setAttribute("cLx",rp.get("cLx") );
				
			}else{
				session.setAttribute("cXm", "游客");
				session.setAttribute("userId", "0");
				session.setAttribute("cYhz", "0");
				session.setAttribute("cLx", "0");
			}
		}
		//当前日期
		//resMap.put("sysdate", DateUtil.getSysDate("MM-dd"));
		
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
	
	
	@SuppressWarnings("unchecked")
	public String newsSort(){
		
		resMap = new HashMap<String, Object>();

		List<News> newsList = (List<News>) newsService.selectList("NewsMapper.sortIndexSJCnt","");
		resMap.put("sjphList", newsList);
		
		newsList = (List<News>) newsService.selectList("NewsMapper.sortIndexQXCnt","");
		resMap.put("qxphList", newsList);
		
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String newsDetail(){
		
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		Map<String, Object> resMap = new HashMap<String, Object>();
		
		//banner导航菜单
		sqlParamMap.put("c_sjlmdm", "0000");
		List<Column> columnList = (List<Column>) newsService.selectList("ColumnMapper.getColumnIndexList", sqlParamMap);
		resMap.put("dhcdList", columnList);
		
		//二级菜单
		List<List<Column>> cdlist = new ArrayList<List<Column>>();
		for(int i = 0; i < columnList.size(); i++ ){
			sqlParamMap.put("c_sjlmdm", columnList.get(i).getC_lmdm());
			List<Column> colList = (List<Column>) newsService.selectList("ColumnMapper.getColumnIndexList", sqlParamMap);
			cdlist.add(i, colList);
		}
		resMap.put("dhejcdList", cdlist);
		
		if("1507".equals(news.getC_lm())||"1506".equals(news.getC_lm())||"1505".equals(news.getC_lm())||"1503".equals(news.getC_lm())||"1502".equals(news.getC_lm())){
			news = (News) newsService.selectOne("NewsMapper.getIndexNews", news);
			return Globals.INPUT;
		}
		news = (News) newsService.selectOne("NewsMapper.getIndexNews", news);
		news.setResMap(resMap);
		return Globals.SUCCESS;
	}
	
/*	
 * @SuppressWarnings("unchecked")
	public String newsQuerys(){
		Querys= (List<News>) newsService.selectList("NewsMapper.getNewsIndexList", news);
        return Globals.SUCCESS;
	}
*/	
	
	
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

	public Integer getPagesize() {
		return pagesize;
	}

	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
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

	public ClxxSvc getClxxSvc() {
		return clxxSvc;
	}

	public void setClxxSvc(ClxxSvc clxxSvc) {
		this.clxxSvc = clxxSvc;
	}

	public KqZbSvc getKqzbSvc() {
		return kqzbSvc;
	}

	public void setKqzbSvc(KqZbSvc kqzbSvc) {
		this.kqzbSvc = kqzbSvc;
	}

	public UserInfoSvc getUserInfoSvc() {
		return userInfoSvc;
	}

	public void setUserInfoSvc(UserInfoSvc userInfoSvc) {
		this.userInfoSvc = userInfoSvc;
	}

	public Map<String, Object> getResMap() {
		return resMap;
	}
	
	public List<News> getQuerys() {
		return Querys;
	}

	public void setQuerys(List<News> newsQuerys) {
		this.Querys = newsQuerys;
	}

	public void setResMap(Map<String, Object> resMap) {
		this.resMap = resMap;
	} 
}
