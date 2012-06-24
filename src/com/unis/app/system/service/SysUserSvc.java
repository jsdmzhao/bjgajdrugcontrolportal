package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysUserDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysUserSvc  {
 
	@Autowired
	private SysUserDao sysUserDao;

	public Object save(Map p) throws SQLException {
		Object userId =sysUserDao.saveInfo(p);
	//	sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return userId;
	}

	public Object saveAll(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return sysUserDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		//sysUserDao.saveGRInfo(p);
		return sysUserDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return sysUserDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return sysUserDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysUserDao.queryAllInfo(p);
	}
	
	public Object login(Map p,HttpServletRequest request) throws SQLException {
		List<Map> list=sysUserDao.queryAllInfo(p);
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
		List<Map> list=sysUserDao.queryAllInfo(p);
		if(list.size()>0){
			p.put("userPassword", p.get("LoginPassword"));
			return sysUserDao.updateInfo(p);
		}
		return null;
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysUserDao.queryByPageInfo(p, page);
	}

}