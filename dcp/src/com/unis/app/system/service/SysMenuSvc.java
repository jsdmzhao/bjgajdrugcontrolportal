package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysMenuDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysMenuSvc  {
 
	@Autowired
	private SysMenuDao sysMenuDao;

	public Object save(Map p) throws SQLException {
		return sysMenuDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return sysMenuDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysMenuDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return sysMenuDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysMenuDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysMenuDao.queryAllInfo(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysMenuDao.queryByPageInfo(p, page);
	}

}