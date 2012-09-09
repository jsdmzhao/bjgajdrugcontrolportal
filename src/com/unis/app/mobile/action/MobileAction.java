package com.unis.app.mobile.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.app.mobile.model.Mobile;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;


@Controller
@Scope(value="prototype")
public class MobileAction {

	private Mobile mobile;

	@Autowired
	private AbsServiceAdapter<Integer> mobileService = null;
	
	@SuppressWarnings("unchecked")
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
				msg.setC_yhid(jsr);
				list.add(msg);
			}
			sqlParamMap.put("list", list);
		}
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

	public AbsServiceAdapter<Integer> getMobileService() {
		return mobileService;
	}

	public void setMobileService(AbsServiceAdapter<Integer> mobileService) {
		this.mobileService = mobileService;
	}

	
}
