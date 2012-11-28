package com.unis.app.userinfo.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.DmDao;
import com.unis.app.userinfo.service.dao.UserInfoDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class UserInfoSvc  {
 
	@Autowired
	private UserInfoDao userDao;
	@Autowired
	private DmDao dmDao;

	@SuppressWarnings("rawtypes")
	public Object save(Map p) throws SQLException {
		Object userId =userDao.saveInfo(p);
		return userId;
	}

	@SuppressWarnings("rawtypes")
	public Object saveAll(Map p) throws SQLException {
		return userDao.saveAllInfo(p);
	}

	@SuppressWarnings("rawtypes")
	public Object remove(Map p) throws SQLException {
		return userDao.removeInfo(p);
	}

	@SuppressWarnings("rawtypes")
	public Object update(Map p) throws SQLException {
		if(p.get("nXh")==null||"".equals(p.get("nXh"))){
			return userDao.saveInfo(p);
		}
		return userDao.updateInfo(p);
	}

	@SuppressWarnings("rawtypes")
	public Object updateAll(Map p) throws SQLException {
		if(p.get("nXh")==null||"".equals(p.get("nXh"))){
			return userDao.saveInfo(p);
		}
		return userDao.updateAllInfo(p);
	}

	@SuppressWarnings("rawtypes")
	public List queryAll(Map p) throws SQLException {
		return userDao.queryAllInfo(p);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List choose() throws SQLException {
		Map p=new HashMap();
		p.put("cBxh", "DEP");
		List<Map> list=dmDao.queryAllInfo(p);
		for (int i = 0; i < list.size(); i++) {
			Map tp=list.get(i);
			tp.put("text", tp.get("cMc"));
			Map ctp=new HashMap();
			ctp.put("cYhz", tp.get("cDm"));
			List<Map> clist=userDao.queryAllInfo(ctp);
			for (int j = 0; j < clist.size(); j++) {
				Map cp=clist.get(j);
				cp.put("text", cp.get("cXm"));
				cp.put("value", cp.get("userId"));
				cp.put("id", cp.get("userId"));
				cp.put("tel", cp.get("cDhhm"));
			}
			tp.put("children", clist);
		}
		return list;
	}
	
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List chooseMobile() throws SQLException {
		Map p=new HashMap();
		p.put("cBxh", "DEP");
		List<Map> list=dmDao.queryAllInfo(p);
		for (int i = 0; i < list.size(); i++) {
			Map tp=list.get(i);
			tp.put("text", tp.get("cMc"));
			Map ctp=new HashMap();
			ctp.put("cYhz", tp.get("cDm"));
			List<Map> clist=userDao.queryAllInfo(ctp);
			for (int j = 0; j < clist.size(); j++) {
				Map cp=clist.get(j);
				cp.put("text", cp.get("cXm"));
				cp.put("value", cp.get("userId")+"="+cp.get("cSjhm"));
				cp.put("id", cp.get("userId"));
			}
			tp.put("children", clist);
		}
		return list;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<Map> chooseWithDep() throws SQLException {
		
		List<Map> rlist=new ArrayList();
		Map p=new HashMap();
		p.put("cBxh", "DEP");
		List<Map> list=dmDao.queryAllInfo(p);
		for (int i = 0; i < list.size(); i++) {
			Map tp=list.get(i);
			Map ctp=new HashMap();
			ctp.put("cYhz", tp.get("cDm"));
			List<Map> clist=userDao.queryAllInfo(ctp);
			for (int j = 0; j < clist.size(); j++) {
				Map cp=clist.get(j);
				cp.put("text", tp.get("cMc")+"----"+cp.get("cXm"));
				cp.put("value", cp.get("userId"));
				cp.put("id", cp.get("userId"));
				rlist.add(cp);
			}
		}
		return rlist;
	}
	
	
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List chooseOnlyUser() throws SQLException {
		Map ctp=new HashMap();
		List<Map> clist=userDao.queryAllInfo(ctp);
			for (int j = 0; j < clist.size(); j++) {
				Map cp=clist.get(j);
				cp.put("text", cp.get("cXm"));
				cp.put("value", cp.get("userId"));
				cp.put("id", cp.get("userId"));
		}
		return clist;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List getDep() throws SQLException {
		Map p=new HashMap();
		p.put("cBxh", "DEP");
		List<Map> list=dmDao.queryAllInfo(p);
		for (int i = 0; i < list.size(); i++) {
			Map tp=list.get(i);
			tp.put("id", tp.get("cDm"));
			tp.put("text", tp.get("cMc"));
		//	tp.put("value", tp.get("cDm"));
			
		}
		return list;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List getOff() throws SQLException {
		Map p=new HashMap();
		p.put("cBxh", "OFF");
		List<Map> list=dmDao.queryAllInfo(p);
		for (int i = 0; i < list.size(); i++) {
			Map tp=list.get(i);
			tp.put("id", tp.get("cDm"));
			tp.put("text", tp.get("cMc"));
			tp.put("pid", tp.get("cSjdm"));
		//	tp.put("value", tp.get("cDm"));
			
		}
		return list;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String getSr() throws SQLException {
		
	
		String returnValue="";
		List<Map> list=userDao.getSr();
		 for (int i = 0; i < list.size(); i++) {
			 
			 returnValue=returnValue+list.get(i).get("cXm")+"，";
			
		}
		 if(returnValue.length()>0){
			 returnValue=returnValue.substring(0, returnValue.length()-1);
		 }
		 return returnValue;
	}
	
	
	@SuppressWarnings("rawtypes")
	public Map queryByPage(Map p, Map page) throws SQLException {
		return userDao.queryByPageInfo(p, page);
	}

}