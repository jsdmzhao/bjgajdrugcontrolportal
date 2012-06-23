package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.DmDao;
import com.unis.app.system.service.dao.SysMenuDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class DmSvc  {
 
	@Autowired
	private DmDao DmDao;

	public Object save(Map p) throws SQLException {
		return DmDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return DmDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return DmDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return DmDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return DmDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return DmDao.queryAllInfo(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return DmDao.queryByPageInfo(p, page);
	}

}