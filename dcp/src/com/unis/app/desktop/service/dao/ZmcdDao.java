package com.unis.app.desktop.service.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.unis.app.pagination.Pagination;
import com.unis.core.database.impl.DataSetProviderImpl;
import com.unis.core.service.AbsServiceAdapter;

@Repository
public class ZmcdDao<T> extends AbsServiceAdapter<T>  {

	public Object saveInfo(Map p){
		return super.insert("ZmcdMapper.saveInfo", p);
	}

	public Object saveAllInfo(Map p){
		return super.insert("ZmcdMapper.saveAllInfo", p);
	}

	public Object removeInfo(Map p){
		return super.delete("ZmcdMapper.removeInfo", p);
	}

	public Object updateInfo(Map p){
		return super.update("ZmcdMapper.updateInfo", p);
	}

	public Object updateAllInfo(Map p){
		return super.update("ZmcdMapper.updateAllInfo", p);
	}

	public List queryAllInfo(Map p){
		return super.selectList("ZmcdMapper.queryAllInfo", p);
	}

	public List queryInfo(Map p){
		return super.selectList("ZmcdMapper.queryInfo", p);
	}

	public Object queryCountInfo(Map p) {
		return super.selectOne("ZmcdMapper.queryCountInfo", p);
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