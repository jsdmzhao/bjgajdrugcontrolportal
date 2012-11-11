package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqZbDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqZbSvc  {
 
	@Autowired
	private KqZbDao kqZbDao;

	public Object save(Map p) throws SQLException {
		return kqZbDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return kqZbDao.saveAllInfo(p);
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
		return kqZbDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqZbDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return kqZbDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return kqZbDao.queryAllInfo(p);
	}
	
	
	public String getZb() throws SQLException {
		String returnValue="";
		 List<Map> list=kqZbDao.getZb();
		 for (int i = 0; i < list.size(); i++) {
			 returnValue=returnValue+list.get(i).get("userName")+"，";
		}
		 if(returnValue.length()>0){
			 returnValue=returnValue.substring(0, returnValue.length()-1);
		 }
		 return returnValue;
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqZbDao.queryByPageInfo(p, page);
	}

}