package com.unis.app.mobile.service;

import java.util.List;

import com.unis.core.service.AbsServiceAdapter;

public class MobileService<T> extends AbsServiceAdapter<T> {

	@Override
	public Object insert(String statmentId, Object o) {
		// TODO Auto-generated method stub
		return super.insert(statmentId, o);
	}

	@Override
	public List<?> selectList(String statmentId, Object o) {
		// TODO Auto-generated method stub
		return super.selectList(statmentId, o);
	}

	@Override
	public Object selectOne(String statmentId, Object o) {
		// TODO Auto-generated method stub
		return super.selectOne(statmentId, o);
	}

	@Override
	public Object update(String statmentId, Object o) {
		// TODO Auto-generated method stub
		return super.update(statmentId, o);
	}
	
}
