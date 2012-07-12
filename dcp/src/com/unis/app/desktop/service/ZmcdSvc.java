package com.unis.app.desktop.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.desktop.service.dao.ZmcdDao;

 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class ZmcdSvc  {
 
	@Autowired
	private ZmcdDao zmcdDao;

	public Object save(Map p) throws SQLException {
		return zmcdDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return zmcdDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return zmcdDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return zmcdDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return zmcdDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return zmcdDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return zmcdDao.queryByPageInfo(p, page);
	}

}