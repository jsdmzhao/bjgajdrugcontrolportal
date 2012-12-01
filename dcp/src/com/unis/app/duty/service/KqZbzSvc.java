package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqZbzDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqZbzSvc  {
 
	@Autowired
	private KqZbzDao kqZbzDao;

	public Object save(Map p) throws SQLException {
		return kqZbzDao.saveInfo(p);
	}

	
	public Object saveInfo(List<Map<String,String>> list) throws SQLException {
		
		List<Map> tlist=queryAll(list.get(0));
			for (int i = 0; i < tlist.size(); i++) {
				remove(tlist.get(i));
		}
		
		for (int i = 1; i < list.size(); i++) {
			
				save(list.get(i));
		}
		return true;
	}


	public Object remove(Map p) throws SQLException {
		return kqZbzDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqZbzDao.updateInfo(p);
	}


	public List queryAll(Map p) throws SQLException {
		return kqZbzDao.queryAllInfo(p);
	}
	
	
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqZbzDao.queryByPageInfo(p, page);
	}

}