package com.unis.app.userinfo.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.DmDao;
import com.unis.app.system.service.dao.SysUserDao;
import com.unis.app.userinfo.service.dao.UserInfoDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class UserInfoSvc  {
 
	@Autowired
	private UserInfoDao userDao;
	@Autowired
	private DmDao dmDao;

	public Object save(Map p) throws SQLException {
		Object userId =userDao.saveInfo(p);
		return userId;
	}

	public Object saveAll(Map p) throws SQLException {
		return userDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return userDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return userDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return userDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return userDao.queryAllInfo(p);
	}
	
	public List choose() throws SQLException {
		Map p=new HashMap();
		p.put("nBxh", "DEP");
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
			}
			tp.put("children", clist);
		}
		return list;
	}
	
	public List<Map> chooseWithDep() throws SQLException {
		
		List<Map> rlist=new ArrayList();
		Map p=new HashMap();
		p.put("nBxh", "DEP");
		List<Map> list=dmDao.queryAllInfo(p);
		for (int i = 0; i < list.size(); i++) {
			Map tp=list.get(i);
			Map ctp=new HashMap();
			ctp.put("cYhz", tp.get("cDm"));
			List<Map> clist=userDao.queryAllInfo(ctp);
			for (int j = 0; j < clist.size(); j++) {
				Map cp=clist.get(j);
				cp.put("text", tp.get("cMc")+""+cp.get("cXm"));
				cp.put("value", cp.get("userId"));
				cp.put("id", cp.get("userId"));
				rlist.add(cp);
			}
		}
		return rlist;
	}
	
	
	
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
	
	public List getDep() throws SQLException {
		Map p=new HashMap();
		p.put("nBxh", "DEP");
		List<Map> list=dmDao.queryAllInfo(p);
		for (int i = 0; i < list.size(); i++) {
			Map tp=list.get(i);
			tp.put("id", tp.get("cDm"));
			tp.put("text", tp.get("cMc"));
		//	tp.put("value", tp.get("cDm"));
			
		}
		return list;
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return userDao.queryByPageInfo(p, page);
	}

}