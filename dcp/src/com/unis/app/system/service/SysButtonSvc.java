package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysButtonDao;
import com.unis.app.system.service.dao.SysMenuDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysButtonSvc  {
 
	@Autowired
	private SysButtonDao sysButtonDao;

	public Object save(Map p) throws SQLException {
		return sysButtonDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return sysButtonDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysButtonDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return sysButtonDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysButtonDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysButtonDao.queryAllInfo(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysButtonDao.queryByPageInfo(p, page);
	}

}