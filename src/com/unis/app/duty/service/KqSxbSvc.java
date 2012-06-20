package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqSxbDao;
import com.unis.app.system.service.dao.SysUserDao;
import com.unis.app.userinfo.service.dao.UserInfoDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqSxbSvc  {
 
	@Autowired
	private KqSxbDao kqSxbDao;

	public Object save(Map p) throws SQLException {
		return kqSxbDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return kqSxbDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return kqSxbDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqSxbDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return kqSxbDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return kqSxbDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqSxbDao.queryByPageInfo(p, page);
	}

}