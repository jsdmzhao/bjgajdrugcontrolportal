package com.unis.app.meeting.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.meeting.service.dao.HyjlDao;
import com.unis.app.system.service.dao.SysUserDao;


@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class HyjlSvc  {
 
	@Autowired
	private HyjlDao HyjlDao;

	public Object save(Map p) throws SQLException {
		return HyjlDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return HyjlDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return HyjlDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return HyjlDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return HyjlDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return HyjlDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return HyjlDao.queryByPageInfo(p, page);
	}

}