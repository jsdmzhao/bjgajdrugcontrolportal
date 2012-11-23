package com.unis.core.service;

import java.util.List;

import com.unis.core.database.IDataSetProviderMySql;

/**
 *
 * @param <T>
 */
public abstract class AbsServiceAdapterMySql<T> {
    
	private IDataSetProviderMySql<T> dataSetProviderMySql;

	/**
	 * @param dataSetProviderMySql
	 */
    public void setDataSetProviderMySql(IDataSetProviderMySql<T> dataSetProviderMySql) {
		this.dataSetProviderMySql = dataSetProviderMySql;
	}

	/**
     * @param statmentId
     * @return
     */
    public Object insert(String statmentId, Object o) {
        return dataSetProviderMySql.insert(statmentId, o);
    };

    /**
     * @param statmentId
     * @return
     */
    public Object update(String statmentId, Object o) {
        return dataSetProviderMySql.update(statmentId, o);
    };

    /**
     * @param statmentId
     * @return
     */
    public List<?> selectList(String statmentId, Object o) {
        return dataSetProviderMySql.selectList(statmentId, o);
    };

    /**
     * @param statmentId
     * @return
     */
    public Object selectOne(String statmentId, Object o) {
        return dataSetProviderMySql.selectOne(statmentId, o);
    };
    
    
    public Object delete(String statmentId, Object o) {
        return dataSetProviderMySql.delete(statmentId, o);
    };
    
   
}
