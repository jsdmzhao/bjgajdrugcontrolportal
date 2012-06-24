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
		System.out.println("@@@@@ p@@@@@ : "+p);
		Object userId =userDao.saveInfo(p);
		return userId;
	}

	public Object saveAll(Map p) throws SQLException {
		return userDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return userDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return userDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return userDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return userDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return userDao.queryByPageInfo(p, page);
	}

}