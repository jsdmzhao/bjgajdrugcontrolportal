package com.unis.app.mobile.action;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.unis.app.mobile.model.Mobile;
import com.unis.core.service.AbsServiceAdapterMySql;
import com.unis.core.util.Globals;


@Controller
@Scope(value="prototype")
public class MobileAction {

	private Mobile mobile;

	private Integer pagesize;
	
	private Integer page;

	@Autowired
	private AbsServiceAdapterMySql<Integer> mobileService = null;
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String mobileSave(Map sqlParamMap, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		String c_sjhm = session.getAttribute("cSjhm")+"";
		sqlParamMap.put("c_yhid", c_yhid);
		sqlParamMap.put("c_sjhm", c_sjhm);
		String jsrStr = (String) sqlParamMap.get("c_jsr");
		if(StringUtils.isNotEmpty(jsrStr)){
			String[] jsrs = jsrStr.split(";");
			List<Mobile> list = new ArrayList<Mobile>();
			for(String jsr : jsrs){
				Mobile msg = new Mobile();
				String yhid = jsr.substring(0, jsr.indexOf("=")-1);
				String dhhm = jsr.substring(jsr.indexOf("=")+1, jsr.length());
				msg.setC_yhid(yhid);
				msg.setC_jsr(dhhm);
				list.add(msg);
			}
			sqlParamMap.put("list", list);
		}
		mobileService.insert("MobileMapper.insertMobile", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String mobileOutSave(Map sqlParamMap, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		
		String jsrStr = sqlParamMap.get("c_jsr").toString();
		if(StringUtils.isNotEmpty(jsrStr)){
			String[] jsrs = jsrStr.split(";");
			List<Mobile> list = new ArrayList<Mobile>();
			for(String jsr : jsrs){
				Mobile msg = new Mobile();
				msg.setC_jsr(jsr);
				list.add(msg);
			}
			sqlParamMap.put("list", list);
		}
		sqlParamMap.put("c_yhid", c_yhid);
		mobileService.insert("MobileMapper.insertMobile", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> mobileList(HttpServletRequest request){
		Map<String, Object> resMap  = new HashMap<String, Object>();
		HttpSession session = request.getSession();
		String c_sjhm = session.getAttribute("cSjhm")+"";
		
		List<Mobile> mobileList = (List<Mobile>) mobileService.selectList("MobileMapper.getMobileList",c_sjhm);
		resMap.put("Rows", mobileList);
		resMap.put("Total", mobileList.size());
		return resMap;
	}
	
	
	@SuppressWarnings("unchecked")
	public void mobilePageList() throws IOException{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		HttpSession session = request.getSession();
		String userId =  session.getAttribute("userId")+"";
		Map<String, String> sqlParamMap = new HashMap<String, String>();

		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("start", String.valueOf(((page.intValue()-1)*pagesize.intValue())));
		sqlParamMap.put("limit", pagesize.toString());
		Map<String, Object> resMap = new HashMap<String, Object>();

		List<Mobile> mobileList = (List<Mobile>) mobileService.selectList("MobileMapper.getMobileSendPageList",sqlParamMap);
		Long cnt = (Long) mobileService.selectOne("MobileMapper.getMobileSendPageListCnt",sqlParamMap);

		resMap.put("Rows", mobileList);
		resMap.put("Total", cnt);

		ObjectMapper mapper = new ObjectMapper();
		
    	HttpServletResponse response = ServletActionContext.getResponse();
    	response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		mapper.writeValue(out, resMap);
		out.flush();
		out.close();
	}
	
	public String mobileUpdate(){
		mobile = (Mobile) mobileService.selectOne("MobileMapper.getMobile", mobile);
		return Globals.SUCCESS;
	}
	
	
	public String mobileView(){
		mobile = (Mobile) mobileService.selectOne("MobileMapper.getMobile", mobile);
		return Globals.SUCCESS;
	}
	
	public String mobileDelete(String n_xh){
		
		mobileService.update("MobileMapper.deleteMobile", n_xh);
		return Globals.SUCCESS;
	}
	
	public String mobileQuery(){
		
		mobile = (Mobile) mobileService.selectOne("MobileMapper.getMobile", mobile);
		return Globals.SUCCESS;
	}
	
	public Mobile getMobile() {
		return mobile;
	}

	public void setMobile(Mobile mobile) {
		this.mobile = mobile;
	}

	public AbsServiceAdapterMySql<Integer> getMobileService() {
		return mobileService;
	}

	public void setMobileService(AbsServiceAdapterMySql<Integer> mobileService) {
		this.mobileService = mobileService;
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

}
