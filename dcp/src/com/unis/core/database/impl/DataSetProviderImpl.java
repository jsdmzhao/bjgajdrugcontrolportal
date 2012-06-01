package com.unis.core.database.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.unis.core.database.IDataSetProvider;

/**
 *
 * @param <T>
 */
public class DataSetProviderImpl<T> implements IDataSetProvider<T> {
	
	protected  SqlSession sqlSession;

	/* (non-Javadoc)
	 * @see com.unis.core.database.IDataSetProvider#insert(java.lang.String, java.lang.Object)
	 */
	public Object insert(String statmentId, Object o) {
		return getSqlSession().insert(statmentId, o);
    }

    /* (non-Javadoc)
     * @see com.unis.core.database.IDataSetProvider#selectList(java.lang.String, java.lang.Object)
     */
    public List<?> selectList(String statmentId, Object o) {
        return getSqlSession().selectList(statmentId, o);
    }

	/* (non-Javadoc)
	 * @see com.unis.core.database.IDataSetProvider#selectOne(java.lang.String, java.lang.Object)
	 */
	public Object selectOne(String statmentId, Object o) {
        return getSqlSession().selectOne(statmentId, o);
    }


    /* (non-Javadoc)
     * @see com.unis.core.database.IDataSetProvider#update(java.lang.String, java.lang.Object)
     */
    public Object update(String statmentId, Object o) {
        return getSqlSession().update(statmentId, o);
        
    }

	/**
	 * @return
	 */
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	/**
	 * @param sqlSession
	 */
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

}
