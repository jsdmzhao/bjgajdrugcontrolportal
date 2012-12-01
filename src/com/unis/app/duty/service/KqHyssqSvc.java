package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqHyssqDao;
import com.unis.app.system.service.dao.SysUserDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqHyssqSvc  {
 
	@Autowired
	private KqHyssqDao kqHyssqDao;

	public Object save(Map p) throws SQLException {
	int	count= (Integer)queryChongfu(p);
		if(count>0){
			return null;
		}
		return kqHyssqDao.saveInfo(p);
	}
	
	//
	

	public Object remove(Map p) throws SQLException {
		return kqHyssqDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		int	count= (Integer)queryChongfu(p);
		if(count>0){
			return null;
		}
		
		
		return kqHyssqDao.updateInfo(p);
	}


	public List queryAll(Map p) throws SQLException {
		return kqHyssqDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqHyssqDao.queryByPageInfo(p, page);
	}
	public Object queryChongfu(Map p) throws SQLException {
		return kqHyssqDao.queryChongfu(p);
	}
	

}