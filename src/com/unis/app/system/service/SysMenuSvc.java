package com.unis.app.system.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.system.service.dao.SysMenuDao;
 
@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysMenuSvc  {
 
	@Autowired
	private SysMenuDao sysMenuDao;

	public Object save(Map p) throws SQLException {
		return sysMenuDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return sysMenuDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysMenuDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return sysMenuDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysMenuDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysMenuDao.queryAllInfo(p);
	}
	
	
	
	
	public List queryUserJwglMenu(Map p) throws SQLException {
		List<Map> list=sysMenuDao.queryUserJwglMenu(p);
		List<Map> pList=new ArrayList();
		List<Map<String,String>> cList=new ArrayList();
		Map pMap=new HashMap();
		String pNo="";
		for (int i = 0; i <list.size(); i++) {
			Map tp=list.get(i);
			if(!pNo.equals(tp.get("menuParentNo"))){
				cList=new ArrayList();
				pNo=tp.get("menuParentNo")+"";
				p.put("menuNo", pNo);
				pMap=(Map)(queryAll(p).get(0));
				pMap.put("MenuName", pMap.get("menuName"));
				pMap.put("children", cList);
				pList.add(pMap);
				tp.put("MenuName", tp.get("menuName"));
				tp.put("MenuUrl", tp.get("menuUrl"));
				tp.put("MenuIcon", tp.get("menuIcon"));
				cList.add(tp);
				
			}else{
				tp.put("MenuName", tp.get("menuName"));
				tp.put("MenuUrl", tp.get("menuUrl"));
				tp.put("MenuIcon", tp.get("menuIcon"));
				cList.add(tp);
			}
			
		//     "children":[{
        ///         "MenuName":"文章1发布",
        //         "MenuUrl":"<%=basePath%>admin/app/news/news.jsp?newsType=1",
       //          "MenuIcon":"<%=basePath%>liger/lib/icons/32X32/my_account.gif",
       //          }],
        //         "MenuName":"文章发布12"
       //           }]; 
			
		}
		//System.out.println("@@@@@@@pList@@@@@@@@@ : "+pList);
		return pList;
	}
	
	public List queryUserMenu(Map p) throws SQLException {
		List<Map> list=sysMenuDao.queryUserMenu(p);
		List<Map> pList=new ArrayList();
		List<Map<String,String>> cList=new ArrayList();
		Map pMap=new HashMap();
		String pNo="";
		for (int i = 0; i <list.size(); i++) {
			Map tp=list.get(i);
			if(!pNo.equals(tp.get("menuParentNo"))){
				cList=new ArrayList();
				pNo=tp.get("menuParentNo")+"";
				p.put("menuNo", pNo);
				pMap=(Map)(queryAll(p).get(0));
				pMap.put("MenuName", pMap.get("menuName"));
				pMap.put("children", cList);
				pList.add(pMap);
				tp.put("MenuName", tp.get("menuName"));
				tp.put("MenuUrl", tp.get("menuUrl"));
				tp.put("MenuIcon", tp.get("menuIcon"));
				cList.add(tp);
				
			}else{
				tp.put("MenuName", tp.get("menuName"));
				tp.put("MenuUrl", tp.get("menuUrl"));
				tp.put("MenuIcon", tp.get("menuIcon"));
				cList.add(tp);
			}
			
		//     "children":[{
        ///         "MenuName":"文章1发布",
        //         "MenuUrl":"<%=basePath%>admin/app/news/news.jsp?newsType=1",
       //          "MenuIcon":"<%=basePath%>liger/lib/icons/32X32/my_account.gif",
       //          }],
        //         "MenuName":"文章发布12"
       //           }]; 
			
		}
		//System.out.println("@@@@@@@pList@@@@@@@@@ : "+pList);
		return pList;
	}

	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysMenuDao.queryByPageInfo(p, page);
	}

}