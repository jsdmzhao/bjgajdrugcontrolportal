package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
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

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysUserDao.queryByPageInfo(p, page);
	}

}