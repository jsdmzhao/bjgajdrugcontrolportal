package com.unis.app.userinfo.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysUserDao;
import com.unis.app.userinfo.service.dao.UserInfoDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class UserInfoSvc  {
 
	@Autowired
	private UserInfoDao userDao;

	public Object save(Map p) throws SQLException {
		Object userId =userDao.saveInfo(p);
	//	userDao.removeGRInfo(p);
		userDao.saveGRInfo(p);
		return userId;
	}

	public Object saveAll(Map p) throws SQLException {
		userDao.removeGRInfo(p);
		userDao.saveGRInfo(p);
		return userDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		userDao.removeGRInfo(p);
		//userDao.saveGRInfo(p);
		return userDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		userDao.removeGRInfo(p);
		userDao.saveGRInfo(p);
		return userDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		userDao.removeGRInfo(p);
		userDao.saveGRInfo(p);
		return userDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return userDao.queryAllInfo(p);
	}
	
	public Object login(Map p,HttpServletRequest request) throws SQLException {
		System.out.println("@@@@@@@@@@@ p : "+p);
		List<Map> list=userDao.queryAllInfo(p);
		if(list.size()>0){
			request.getSession().setAttribute("userName", list.get(0).get("userName"));
			request.getSession().setAttribute("userId", list.get(0).get("userId"));
			return true;
		}
		return null;
	}
	
	public Object changePassword(Map p,HttpServletRequest request) throws SQLException {
		String userId=request.getSession().getAttribute("userId")+"";
		String userName=request.getSession().getAttribute("userName")+"";
		p.put("userId", userId);
		p.put("userName", userName);
		p.put("userPassword", p.get("OldPassword"));
		List<Map> list=userDao.queryAllInfo(p);
		if(list.size()>0){
			p.put("userPassword", p.get("LoginPassword"));
			return userDao.updateInfo(p);
		}
		return null;
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return userDao.queryByPageInfo(p, page);
	}

}