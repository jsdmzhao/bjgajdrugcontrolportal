package  com.unis.app.system.service.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unis.app.pagination.Pagination;
import com.unis.core.service.AbsServiceAdapter;

@Repository
public class SysMenuDao extends SqlSessionDaoSupport {

	public Object saveInfo(Map p){
		return getSqlSession().insert("SysMenuMapper.saveInfo", p);
	}

	public Object saveAllInfo(Map p){
		return getSqlSession().insert("SysMenuMapper.saveAllInfo", p);
	}

	public Object removeInfo(Map p){
		return getSqlSession().delete("SysMenuMapper.removeInfo", p);
	}

	public Object updateInfo(Map p){
		return getSqlSession().update("SysMenuMapper.updateInfo", p);
	}

	public Object updateAllInfo(Map p){
		return getSqlSession().update("SysMenuMapper.updateAllInfo", p);
	}

	public List queryAllInfo(Map p){
		return getSqlSession().selectList("SysMenuMapper.queryAllInfo", p);
	}

	public List queryInfo(Map p){
		return getSqlSession().selectList("SysMenuMapper.queryInfo", p);
	}

	public Object queryCountInfo(Map p) {
		return getSqlSession().selectOne("SysMenuMapper.queryCountInfo", p);
	}
	
	public List queryUserMenu(Map p){
		return getSqlSession().selectList("SysMenuMapper.queryUserMenu", p);
	}


	public Map queryByPageInfo(Map p, Map page){
		String count = String.valueOf((Integer)queryCountInfo(p));
		if("0".equals(count)){
			return null;
		}else{ 
			page.put("recordCount", count);
			Pagination pagination = new Pagination(page);
			page.put("pageCount", pagination.getPageCount());
			p.put("startIndex", pagination.getStartIndex());
			p.put("lastIndex", pagination.getLastIndex());
			List list = queryInfo(p);
			Map retMap = new HashMap();
			retMap.put("data", list);
			retMap.put("page", page);
			return retMap;
		}
	}

}