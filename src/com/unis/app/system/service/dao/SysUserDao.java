package  com.unis.app.system.service.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.unis.core.dao.SimpleDaoSupport;
import com.unis.core.pagination.Pagination;

@Repository
public class SysUserDao extends SimpleDaoSupport {

	public Object saveInfo(Map p) throws SQLException {
		return getSqlSession().insert("sysUserInfo.saveInfo", p);
	}

	public Object saveAllInfo(Map p) throws SQLException {
		return getSqlSession().insert("sysUserInfo.saveAllInfo", p);
	}

	public Object removeInfo(Map p) throws SQLException {
		return getSqlSession().delete("sysUserInfo.removeInfo", p);
	}

	public Object updateInfo(Map p) throws SQLException {
		return getSqlSession().update("sysUserInfo.updateInfo", p);
	}

	public Object updateAllInfo(Map p) throws SQLException {
		return getSqlSession().update("sysUserInfo.updateAllInfo", p);
	}

	public List queryAllInfo(Map p) throws SQLException {
		return getSqlSession().selectList("sysUserInfo.queryAllInfo", p);
	}

	public List queryInfo(Map p) throws SQLException {
		return getSqlSession().selectList("sysUserInfo.queryInfo", p);
	}

	public Object queryCountInfo(Map p) throws SQLException {
		return getSqlSession().selectOne("sysUserInfo.queryCountInfo", p);
	}

	public Map queryByPageInfo(Map p, Map page) throws SQLException {
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