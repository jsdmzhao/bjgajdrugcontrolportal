package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqYbjlDao;
import com.unis.app.system.service.dao.SysUserDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqYbjlSvc  {
 
	@Autowired
	private KqYbjlDao kqYbjlDao;

	public Object save(Map p) throws SQLException {
		return kqYbjlDao.saveInfo(p);
	}
	
	//
	public Object setDkInfo(Map p) throws SQLException {
		return kqYbjlDao.setDkInfo(p);
	}
	
	
	
	public Object saveAll(Map p) throws SQLException {
		return kqYbjlDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return kqYbjlDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqYbjlDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return kqYbjlDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return kqYbjlDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqYbjlDao.queryByPageInfo(p, page);
	}

}