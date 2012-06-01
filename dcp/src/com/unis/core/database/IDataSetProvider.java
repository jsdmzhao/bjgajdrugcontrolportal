package com.unis.core.database;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

/**
 *
 * @param <T>
 */
public interface IDataSetProvider<T> {

    /**
     * @param statmentId
     * @param o
     * @return
     */
    public Object insert(String statmentId, Object o);
 
    /**
     * @param statmentId
     * @param o
     * @return
     */
    public Object update(String statmentId, Object o);
   
    /**
     * @param statmentId
     * @param o
     * @return
     */
    public List<?> selectList(String statmentId, Object o);

    /**
     * @param statmentId
     * @param o
     * @return
     */
    public Object selectOne(String statmentId, Object o);
    
    public SqlSession getSqlSession() ;
    
    
    
}
