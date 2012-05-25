package com.unis.core.service;

import java.util.List;

import com.unis.core.database.IDataSetProvider;

/**
 *
 * @param <T>
 */
public abstract class AbsServiceAdapter<T> {
    
	private IDataSetProvider<T> dataSetProvider;

    /**
     * @param dataSetProvider
     */
    public void setDataSetProvider(IDataSetProvider<T> dataSetProvider) {
        this.dataSetProvider = dataSetProvider;
    }

    /**
     * @param statmentId
     * @param o 新增操作
     * @return
     */
    public Object insert(String statmentId, Object o) {
        return dataSetProvider.insert(statmentId, o);
    };

    /**
     * @param statmentId
     * @param o 修改操作
     * @return
     */
    public Object update(String statmentId, Object o) {
        return dataSetProvider.update(statmentId, o);
    };

    /**
     * @param statmentId
     * @param o 查询List操作
     * @return
     */
    public List<?> selectList(String statmentId, Object o) {
        return dataSetProvider.selectList(statmentId, o);
    };

    /**
     * @param statmentId
     * @param o 查询单个对象操作
     * @return
     */
    public Object selectOne(String statmentId, Object o) {
        return dataSetProvider.selectOne(statmentId, o);
    };
   
}
