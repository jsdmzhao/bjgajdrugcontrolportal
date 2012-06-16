package com.unis.app.kit.service.dao;



import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;


@Repository
public class KitDao  extends SqlSessionDaoSupport {
	
	public List querySjgsdInfo(Map p){
		return  getSqlSession().selectList("KitMapper.querySjgsdInfo", p);
	}

	

}