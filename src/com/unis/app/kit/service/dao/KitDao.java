package com.unis.app.kit.service.dao;



import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.unis.core.database.impl.DataSetProviderImpl;
import com.unis.core.service.AbsServiceAdapter;


@Repository
public class KitDao<T> extends AbsServiceAdapter<T> {
	
	public List querySjgsdInfo(Map p){
		return  super.selectList("KitMapper.querySjgsdInfo", p);
	}

	

}