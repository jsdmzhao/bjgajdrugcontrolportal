package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysPermissionDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysPermissionSvc  {
 
	@Autowired
	private SysPermissionDao sysPermissionDao;

	public Object save(Map p) throws SQLException {
		return sysPermissionDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return sysPermissionDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysPermissionDao.removeInfo(p);
	}
	
	public Object update(Map p) throws SQLException {
		return sysPermissionDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysPermissionDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysPermissionDao.queryAllInfo(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysPermissionDao.queryByPageInfo(p, page);
	}
	
}