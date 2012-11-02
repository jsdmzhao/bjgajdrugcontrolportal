package com.unis.app.limit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.limit.service.dao.ClxxDao;
import com.unis.app.system.service.dao.SysUserDao;


@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class ClxxSvc  {
 
	@Autowired
	private ClxxDao ClxxDao;

	public Object save(Map p) throws SQLException {
		return ClxxDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return ClxxDao.saveAllInfo(p);
	}
	
	public Object saveInfo(List<Map<String,String>> list) throws SQLException {
		System.out.println(list);
		   Map p=new HashMap();
		List<Map> tlist=queryAll(p);
			for (int i = 0; i < tlist.size(); i++) {
				remove(tlist.get(i));
		}
		
		for (int i = 0; i < list.size(); i++) {
			
				save(list.get(i));
		}
		return true;
	}


	public Object remove(Map p) throws SQLException {
		return ClxxDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return ClxxDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return ClxxDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return ClxxDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return ClxxDao.queryByPageInfo(p, page);
	}

}