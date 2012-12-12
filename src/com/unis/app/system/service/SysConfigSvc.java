package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysConfigDao;
import com.unis.app.system.service.dao.SysMenuDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysConfigSvc  {
 
	@Autowired
	private SysConfigDao sysConfigDao;

	public Object save(Map p) throws SQLException {
		return sysConfigDao.saveInfo(p);
	}
	
	
	public Object addFwcs() throws SQLException {
		int count=getFwcs();
		count=count+1;
		Map p=new  HashMap();
		p.put("configId", "100");
		p.put("configPara", count+"");
		return update(p);
	}
	
	public int getFwcs() throws SQLException {
		Map p=new  HashMap();
		p.put("configId", "100");
		List<Map<String,String>> list=queryAll(p);
		if(list.size()>0){
			return Integer.parseInt(list.get(0).get("configPara"));
		}
		return 0; 
	}

	public Object saveAll(Map p) throws SQLException {
		return sysConfigDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysConfigDao.removeInfo(p);
	}
	

	public Object update(Map p) throws SQLException {
		return sysConfigDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysConfigDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysConfigDao.queryAllInfo(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysConfigDao.queryByPageInfo(p, page);
	}
	
	

}