package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysButtonDao;
import com.unis.app.system.service.dao.SysMenuDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysButtonSvc  {
 
	@Autowired
	private SysButtonDao sysButtonDao;

	public Object save(Map p) throws SQLException {
		return sysButtonDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return sysButtonDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysButtonDao.removeInfo(p);
	}
	
	public Object removeByMenuId(Map p) throws SQLException {
		return sysButtonDao.removeInfoByMenuId(p);
	}

	public Object update(Map p) throws SQLException {
		return sysButtonDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysButtonDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysButtonDao.queryAllInfo(p);
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysButtonDao.queryByPageInfo(p, page);
	}
	
	
	public Object fastAdd(Map p,HttpServletRequest request) throws SQLException {
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		if(p.get("menuId")!=null){
			p.put("btnName", "增加");
		    p.put("btnNo", "add");
			p.put("btnIcon", "/liger/lib/icons/silkicons/add.png");
		sysButtonDao.saveInfo(p);
		    p.put("btnName", "修改");
			p.put("btnNo", "modify");
			p.put("btnIcon", "/liger/lib/icons/silkicons/application_edit.png");
		sysButtonDao.saveInfo(p);
		    p.put("btnName", "保存");
			p.put("btnNo", "delete");
			p.put("btnIcon", "/liger/lib/icons/silkicons/delete.png");
		sysButtonDao.saveInfo(p);
		return true;
		}
		return null;
	}

}