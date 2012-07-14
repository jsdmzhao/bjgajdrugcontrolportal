package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqQqsbDao;
import com.unis.app.system.service.dao.SysUserDao;


@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqQqsbSvc  {
 
	@Autowired
	private KqQqsbDao kqQqsbDao;

	public Object save(Map p) throws SQLException {
		return kqQqsbDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return kqQqsbDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return kqQqsbDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqQqsbDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return kqQqsbDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return kqQqsbDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqQqsbDao.queryByPageInfo(p, page);
	}

}