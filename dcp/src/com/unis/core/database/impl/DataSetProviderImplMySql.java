package com.unis.core.database.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.unis.core.database.IDataSetProviderMySql;

/**
 *
 * @param <T>
 */
public class DataSetProviderImplMySql<T> implements IDataSetProviderMySql<T> {
	
	protected  SqlSession sqlSessionMySql;

	/* (non-Javadoc)
	 * @see com.unis.core.database.IDataSetProvider#insert(java.lang.String, java.lang.Object)
	 */
	public Object insert(String statmentId, Object o) {
		return getSqlSessionMySql().insert(statmentId, o);
    }

    /* (non-Javadoc)
     * @see com.unis.core.database.IDataSetProvider#selectList(java.lang.String, java.lang.Object)
     */
    public List<?> selectList(String statmentId, Object o) {
        return getSqlSessionMySql().selectList(statmentId, o);
    }

	/* (non-Javadoc)
	 * @see com.unis.core.database.IDataSetProvider#selectOne(java.lang.String, java.lang.Object)
	 */
	public Object selectOne(String statmentId, Object o) {
        return getSqlSessionMySql().selectOne(statmentId, o);
    }


    /* (non-Javadoc)
     * @see com.unis.core.database.IDataSetProvider#update(java.lang.String, java.lang.Object)
     */
    public Object update(String statmentId, Object o) {
        return getSqlSessionMySql().update(statmentId, o);
        
    }
    
    public Object delete(String statmentId, Object o) {
        return getSqlSessionMySql().delete(statmentId, o);
    }

	/**
	 * @return
	 */
	public SqlSession getSqlSessionMySql() {
		return sqlSessionMySql;
	}

	/**
	 * @param sqlSession
	 */
	public void setSqlSessionMySql(SqlSession sqlSession) {
		this.sqlSessionMySql = sqlSession;
	}

}
