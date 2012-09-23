package com.unis.app.desktop.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.desktop.service.dao.WdzmDao;

 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class WdzmSvc  {
 
	@Autowired
	private WdzmDao wdzmDao;

	public Object save(Map p) throws SQLException {
		return wdzmDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return wdzmDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return wdzmDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return wdzmDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return wdzmDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return wdzmDao.queryAllInfo(p);
	}
	public List queryCd(Map p) throws SQLException {
		return wdzmDao.queryCd(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return wdzmDao.queryByPageInfo(p, page);
	}

}