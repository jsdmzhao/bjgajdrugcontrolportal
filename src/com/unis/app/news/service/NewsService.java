package com.unis.app.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;

public class NewsService<T> extends AbsServiceAdapter<T> {

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
