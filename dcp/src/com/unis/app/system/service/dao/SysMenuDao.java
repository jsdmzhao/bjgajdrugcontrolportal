package  com.unis.app.system.service.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unis.app.pagination.Pagination;
import com.unis.core.service.AbsServiceAdapter;

@Repository
public class SysMenuDao  {

	@Autowired 
	private AbsServiceAdapter<Integer> asa = null;
	
	public Object saveInfo(Map p){
		return asa.insert("SysMenuMapper.saveInfo", p);
	}

	public Object saveAllInfo(Map p){
		return asa.insert("SysMenuMapper.saveAllInfo", p);
	}

	public Object removeInfo(Map p){
		return asa.delete("SysMenuMapper.removeInfo", p);
	}

	public Object updateInfo(Map p){
		return asa.update("SysMenuMapper.updateInfo", p);
	}

	public Object updateAllInfo(Map p){
		return asa.update("SysMenuMapper.updateAllInfo", p);
	}

	public List queryAllInfo(Map p){
		return asa.selectList("SysMenuMapper.queryAllInfo", p);
	}

	public List queryInfo(Map p){
		return asa.selectList("SysMenuMapper.queryInfo", p);
	}

	public Object queryCountInfo(Map p) {
		return asa.selectOne("SysMenuMapper.queryCountInfo", p);
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