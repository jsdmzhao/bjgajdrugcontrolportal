package com.unis.app.email.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.email.model.Email;
import com.unis.app.login.model.User;
import com.unis.app.system.model.SysUser;

@Controller
@Scope(value="prototype")
public class EmailAction {

	private Email email;

	@Autowired
	private AbsServiceAdapter<Integer> emailService = null;
	
	
	public String emailSave(Map<String, String> sqlParamMap, HttpServletRequest request){
		
		/***
		 * 
		 * 
		
		String jsrStr = (String) sqlParamMap.get("c_jsr");
		if(StringUtils.isNotEmpty(jsrStr)){
			String[] jsrs = jsrStr.split(",");
			List<Email> list = new ArrayList<Email>();
			for(String jsr : jsrs){
				Email msg = new Email();
				msg.setC_yhid(jsr);
				list.add(msg);
			}
			//sqlParamMap.put("c_jsr", list);
		}
		
		*
		***/
		//HttpSession session = request.getSession();
		//String userId = (String) session.getAttribute("userId");
		emailService.insert("EmailMapper.insertEmail", sqlParamMap);
		//emailService.insert("EmailMapper.insertEmailRecieve", sqlParamMap);
		
		/**
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			emailService.update("EmailMapper.updateEmail", sqlParamMap);
		} else {
			emailService.insert("EmailMapper.insertEmail", sqlParamMap);
		}
		**/
		return Globals.SUCCESS;
	}
	
	public String emailOperate(String operateType, String value, String n_xh){
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("value", value);
		sqlParamMap.put("n_xh", n_xh);
	    emailService.update("EmailMapper.operateEmail", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> emailList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Email> emailList = (List<Email>) emailService.selectList("EmailMapper.getEmailList","");
		resMap.put("Rows", emailList);
		resMap.put("Total", emailList.size());
		return resMap;
	}
	
	public String emailUpdate(){
		email = (Email) emailService.selectOne("EmailMapper.getEmail", email);
		return Globals.SUCCESS;
	}
	
	
	public String emailView(){
		email = (Email) emailService.selectOne("EmailMapper.getEmail", email);
		return Globals.SUCCESS;
	}
	
	public String emailDelete(String n_xh){
		
		emailService.update("EmailMapper.deleteEmail", n_xh);
		return Globals.SUCCESS;
	}
	
	public String emailQuery(){
		
		email = (Email) emailService.selectOne("EmailMapper.getEmail", email);
		return Globals.SUCCESS;
	}
	
	public Email getEmail() {
		return email;
	}

	public void setEmail(Email email) {
		this.email = email;
	}

	public AbsServiceAdapter<Integer> getEmailService() {
		return emailService;
	}

	public void setEmailService(AbsServiceAdapter<Integer> emailService) {
		this.emailService = emailService;
	}

	
}
