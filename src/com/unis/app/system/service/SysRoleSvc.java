package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysMenuDao;
import com.unis.app.system.service.dao.SysRoleDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysRoleSvc  {
 
	@Autowired
	private SysRoleDao sysRoleDao;

	public Object save(Map p) throws SQLException {
		return sysRoleDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return sysRoleDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysRoleDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return sysRoleDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysRoleDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysRoleDao.queryAllInfo(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysRoleDao.queryByPageInfo(p, page);
	}

}