package com.unis.core.dao;

import java.util.List;

import com.unis.core.service.AbsServiceAdapter;

public class SimpleDaoSupport extends AbsServiceAdapter {
	
	@Override
	public Object insert(String id, Object p) {
		// TODO Auto-generated method stub
		return super.insert(id, p);
	}

	@Override
	public List<?> selectList(String id, Object p) {
		// TODO Auto-generated method stub
		return super.selectList(id, p);
	}

	@Override
	public Object selectOne(String id, Object p) {
		// TODO Auto-generated method stub
		return super.selectOne(id, p);
	}

	@Override
	public Object update(String id, Object p) {
		// TODO Auto-generated method stub
		return super.update(id, p);
	}
	
	public Object delete(String id, Object p) {
		// TODO Auto-generated method stub
		return super.update(id, p);
	}

	
}
