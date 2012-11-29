package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqHytsDao;
import com.unis.app.system.service.dao.SysUserDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqHytsSvc  {
 
	@Autowired
	private KqHytsDao kqHytsDao;

	public Object save(Map p) throws SQLException {
		return kqHytsDao.saveInfo(p);
	}
	//

	public Object remove(Map p) throws SQLException {
		return kqHytsDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqHytsDao.updateInfo(p);
	}


	public List queryAll(Map p) throws SQLException {
		return kqHytsDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqHytsDao.queryByPageInfo(p, page);
	}

}