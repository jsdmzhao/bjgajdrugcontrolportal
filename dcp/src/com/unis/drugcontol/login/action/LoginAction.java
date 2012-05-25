package com.unis.drugcontol.login.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.drugcontol.login.model.User;

@Controller
@Scope(value="prototype")
public class LoginAction {

	private User user;
	
	@Autowired
	private AbsServiceAdapter<Integer> loginService = null;
	
	@SuppressWarnings("unchecked")
	public String checkUser(String c_user_id, String c_pass){
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("c_user_id", c_user_id);
		sqlParamMap.put("c_pass", c_pass);
		List<User> list = (List<User>) loginService.selectList("UserMapper.checkUser", sqlParamMap);
		if(list != null && list.size() > 0){
			return "success";
		}
		return "failure";
		
	}
	
	@SuppressWarnings("unchecked")
	public String login() throws Exception{
		/*
		 *
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("c_user_id", user.getC_user_id());
		sqlParamMap.put("c_pass", user.getC_pass());
		List<User> list = (List<User>) loginService.selectList("UserMapper.checkUser", sqlParamMap);
		*
		*/
		
		List<User> list = (List<User>) loginService.selectList("UserMapper.checkUser", user);
		if(list != null && list.size() > 0){
			return "success";
		}
		return "failure";
	}
	
	public String add() throws Exception{
		loginService.insert("UserMapper.insertUser", user);
		return "success";
	}
	
	public String view() throws Exception{
		user = (User)loginService.selectOne("UserMapper.getUser", user.getN_xh());
		return "success";
	}

	@SuppressWarnings("unchecked")
	public List<User> checkUserByName(String c_user_id){
		return (List<User>) loginService.selectList("UserMapper.getUserByName", c_user_id);
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setLoginService(AbsServiceAdapter<Integer> loginService) {
		this.loginService = loginService;
	}
	
}
