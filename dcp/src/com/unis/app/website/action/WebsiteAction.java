package com.unis.app.website.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.commons.Combox;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.website.model.Website;

@Controller
@Scope(value="prototype")
public class WebsiteAction {

	private Website website;

	@Autowired
	private AbsServiceAdapter<Integer> websiteService = null;
	
	public String websiteSave(Map<String, String> sqlParamMap){
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			websiteService.update("WebsiteMapper.updateWebsite", sqlParamMap);
		} else {
			websiteService.insert("WebsiteMapper.insertWebsite", sqlParamMap);
		}
		return Globals.SUCCESS;
	}
	
	public String webtypeSave(Map<String, String> sqlParamMap){
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			websiteService.update("WebsiteMapper.updateWebtype", sqlParamMap);
		} else {
			websiteService.insert("WebsiteMapper.insertWebtype", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> websiteList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Website> websiteList = (List<Website>) websiteService.selectList("WebsiteMapper.getWebsiteList","");
		resMap.put("Rows", websiteList);
		resMap.put("Total", websiteList.size());
		return resMap;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> webtypeList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Website> webtypeList = (List<Website>) websiteService.selectList("WebsiteMapper.getWebtypeList","");
		resMap.put("Rows", webtypeList);
		resMap.put("Total", webtypeList.size());
		return resMap;
	}
	
	@SuppressWarnings("unchecked")
	public List<Combox> getWebtypeCombox(){
		List<Combox> comboxList = (List<Combox>) websiteService.selectList("WebsiteMapper.getWebtypeCombox", "");
		
		return comboxList;
	}
	
	public String websiteUpdate(){
		website = (Website) websiteService.selectOne("WebsiteMapper.getWebsite", website);
		return Globals.SUCCESS;
	}
	
	public String webtypeUpdate(){
		website = (Website) websiteService.selectOne("WebsiteMapper.getWebtype", website);
		return Globals.SUCCESS;
	}
	
	public String websiteView(){
		website = (Website) websiteService.selectOne("WebsiteMapper.getWebsite", website);
		return Globals.SUCCESS;
	}
	
	public String webtypeDelete(String n_xh){
		
		websiteService.update("WebsiteMapper.deleteWebtype", n_xh);
		return Globals.SUCCESS;
	}
	
	public String websiteDelete(String n_xh){
		
		websiteService.update("WebsiteMapper.deleteWebsite", n_xh);
		return Globals.SUCCESS;
	}
	
	public String websiteQuery(){
		
		website = (Website) websiteService.selectOne("WebsiteMapper.getWebsite", website);
		return Globals.SUCCESS;
	}
	
	public Website getWebsite() {
		return website;
	}

	public void setWebsite(Website website) {
		this.website = website;
	}

	public AbsServiceAdapter<Integer> getWebsiteService() {
		return websiteService;
	}

	public void setWebsiteService(AbsServiceAdapter<Integer> websiteService) {
		this.websiteService = websiteService;
	}

	
}
