package com.unis.app.duty.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.duty.service.dao.KqYbjlDao;
import com.unis.app.system.service.dao.SysUserDao;
import com.unis.app.userinfo.service.dao.UserInfoDao;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class KqYbjlSvc  {
 
	@Autowired
	private KqYbjlDao kqYbjlDao;
	@Autowired
	private UserInfoDao userInfoDao;

	public Object save(Map p) throws SQLException {
		if(p.get("userId")!=null){
			Map tp=new HashMap();
			tp.put("userId", p.get("userId"));
			List<Map> tlist=userInfoDao.queryAllInfo(tp);
			if(tlist.size()>0){
				Map<String,String> userMap=tlist.get(0);
				
				String jb=userMap.get("cJb");
				String bm=userMap.get("cYhz");
				String ks=userMap.get("cKs");
				
				
				if("5".equals(jb)||"4".equals(jb)||"3".equals(jb)){
					
					 p.put("cShjb", userInfoDao.getSupJb(userMap));
					
				}else if("2".equals(jb)){
					
					 p.put("cShjb", "1");
					
				}else if("1".equals(jb)){
					 p.put("cShjb", "0");
				}
				
				return kqYbjlDao.saveInfo(p);
			}
		
			
		}
		
		
		return null;
		
	
	}
	
	//
	public Object setDkInfo(Map p) throws SQLException {
		return kqYbjlDao.setDkInfo(p);
	}
	
	
	
	public Object saveAll(Map p) throws SQLException {
		return kqYbjlDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return kqYbjlDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return kqYbjlDao.updateInfo(p);
	}
	
	
	
	public Object xiaojia(Map p) throws SQLException {
		Map tp=new HashMap();
		tp.put("nXh", p.get("nXh"));
		tp.put("cShzt", "4");
		return kqYbjlDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return kqYbjlDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return kqYbjlDao.queryAllInfo(p);
	}
	
	
	public List queryShenhe(Map p) throws SQLException {
		if(p.get("userId")!=null){
			Map tp=new HashMap();
			tp.put("userId", p.get("userId"));
			List<Map> tlist=userInfoDao.queryAllInfo(tp);
			if(tlist.size()>0){
				Map<String,String> userMap=tlist.get(0);
				
				
				String jb=userMap.get("cJb");
				String bm=userMap.get("cYhz");
				String ks=userMap.get("cKs");
				
				if("4".equals(jb)){
					 p.put("cShjb", "4");
					 p.put("cKs", ks);
					
				}else if("3".equals(jb)){
					 p.put("cShjb", "3");
					 p.put("cKs", ks);
					
				}else if("2".equals(jb)){
					 p.put("cShjb", "2");
					 p.put("cYhz", bm);
					
				}else if("1".equals(jb)){
					 p.put("cShjb", "1");
					
				}else if("0".equals(jb)){
					 p.put("cShjb", "0");
				}else{
					return null; 
				}
				
				kqYbjlDao.queryShenhe(p);
			}
		
			
		}
		
		
		return kqYbjlDao.queryShenhe(null);
	}

	
	
	public Map queryByPage(Map p, Map page) throws SQLException {
		return kqYbjlDao.queryByPageInfo(p, page);
	}

}