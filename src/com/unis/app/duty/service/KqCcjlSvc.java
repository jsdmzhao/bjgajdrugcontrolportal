package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqCcjlDao;
import com.unis.app.system.service.dao.SysUserDao;
import com.unis.app.userinfo.service.dao.UserInfoDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqCcjlSvc  {
 
	@Autowired
	private KqCcjlDao kqCcjlDao;

	public Object save(Map p) throws SQLException {
		return kqCcjlDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return kqCcjlDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return kqCcjlDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqCcjlDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return kqCcjlDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return kqCcjlDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqCcjlDao.queryByPageInfo(p, page);
	}

}