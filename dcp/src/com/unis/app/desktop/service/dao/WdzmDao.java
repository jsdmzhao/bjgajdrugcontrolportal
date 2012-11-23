package com.unis.app.desktop.service.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.unis.app.pagination.Pagination;
import com.unis.core.database.impl.DataSetProviderImpl;
import com.unis.core.service.AbsServiceAdapter;

@Repository
public class WdzmDao<T> extends AbsServiceAdapter<T> {

	public Object saveInfo(Map p){
		return super.insert("WdzmMapper.saveInfo", p);
	}

	public Object saveAllInfo(Map p){
		return super.insert("WdzmMapper.saveAllInfo", p);
	}

	public Object removeInfo(Map p){
		return super.delete("WdzmMapper.removeInfo", p);
	}

	public Object updateInfo(Map p){
		return super.update("WdzmMapper.updateInfo", p);
	}

	public Object updateAllInfo(Map p){
		return super.update("WdzmMapper.updateAllInfo", p);
	}

	public List queryAllInfo(Map p){
		return super.selectList("WdzmMapper.queryAllInfo", p);
	}
	public List queryCd(Map p){
		return super.selectList("WdzmMapper.queryCd", p);
	}

	public List queryInfo(Map p){
		return super.selectList("WdzmMapper.queryInfo", p);
	}

	public Object queryCountInfo(Map p) {
		return super.selectOne("WdzmMapper.queryCountInfo", p);
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