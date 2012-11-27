package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.unis.app.system.service.dao.SysUserDao;
import com.unis.app.userinfo.service.UserInfoSvc;
import com.unis.core.util.IPUtil;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysUserSvc  {
 
	@Autowired
	private SysUserDao sysUserDao;

	public Object save(Map p) throws SQLException {
		Object userId =sysUserDao.saveInfo(p);
	//	sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return userId;
	}

	public Object saveAll(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return sysUserDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		//sysUserDao.saveGRInfo(p);
		return sysUserDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return sysUserDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		sysUserDao.removeGRInfo(p);
		sysUserDao.saveGRInfo(p);
		return sysUserDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysUserDao.queryAllInfo(p);
	}
	
	public Object login(Map p,HttpServletRequest request) throws SQLException {
		List<Map> list=sysUserDao.queryAllInfo(p);
		if(list.size()>0){
			request.getSession().setAttribute("userName", list.get(0).get("userName"));
			request.getSession().setAttribute("userId", list.get(0).get("userId"));
			
			ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
			UserInfoSvc userInfoSvc= (UserInfoSvc) ctx.getBean("userInfoSvc");

	//		String ip=IPUtil.getUserIP(request);
		//	if(ip!=null){
				Map p2=new HashMap();
				p2.put("userId", list.get(0).get("userId"));
			List list2=userInfoSvc.queryAll(p2);
			if(list2.size()!=0){
				Map rp=(Map)list2.get(0);
				request.getSession().setAttribute("userId",rp.get("userId") );
				request.getSession().setAttribute("cJb",rp.get("cJb") );
				request.getSession().setAttribute("cYhz",rp.get("cYhz") );
				request.getSession().setAttribute("cZc",rp.get("cZc") );
				request.getSession().setAttribute("cXm",rp.get("cXm") );
				request.getSession().setAttribute("nXb",rp.get("nXb") );
				request.getSession().setAttribute("dSr",rp.get("dSr") );
				request.getSession().setAttribute("cGj",rp.get("cGj") );
				request.getSession().setAttribute("cCsd",rp.get("cCsd") );
				request.getSession().setAttribute("cHyzk",rp.get("cHyzk") );
				request.getSession().setAttribute("cXl",rp.get("cXl") );
				request.getSession().setAttribute("cByyx",rp.get("cByyx") );
				request.getSession().setAttribute("cZy",rp.get("cZy") );
				request.getSession().setAttribute("cKh",rp.get("cKh") );
				request.getSession().setAttribute("cHkszd",rp.get("cHkszd") );
				request.getSession().setAttribute("cDhhm",rp.get("cDhhm") );
				request.getSession().setAttribute("cSjhm",rp.get("cSjhm") );
				request.getSession().setAttribute("cYx",rp.get("cYx") );
				request.getSession().setAttribute("cDz",rp.get("cDz") );
				request.getSession().setAttribute("dGzsj",rp.get("dGzsj") );
				request.getSession().setAttribute("dRzsj",rp.get("dRzsj") );
				request.getSession().setAttribute("cJcjl",rp.get("cJcjl") );
				request.getSession().setAttribute("cBz",rp.get("cBz") );
				request.getSession().setAttribute("nDlcs",rp.get("nDlcs") );
				request.getSession().setAttribute("nZxsc",rp.get("nZxsc") );
				request.getSession().setAttribute("cLx",rp.get("cLx") );
				request.getSession().setAttribute("cYxip",rp.get("cYxip") );
				request.getSession().setAttribute("cKs",rp.get("cKs") );
				
				return true;
		}
		//	}
		}
		return null;
	}
	
	public Object changePassword(Map p,HttpServletRequest request) throws SQLException {
		String userId=request.getSession().getAttribute("userId")+"";
		String userName=request.getSession().getAttribute("userName")+"";
		p.put("userId", userId);
		p.put("userName", userName);
		p.put("userPassword", p.get("OldPassword"));
		List<Map> list=sysUserDao.queryAllInfo(p);
		if(list.size()>0){
			p.put("userPassword", p.get("LoginPassword"));
			return sysUserDao.updateInfo(p);
		}
		return null;
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysUserDao.queryByPageInfo(p, page);
	}

}