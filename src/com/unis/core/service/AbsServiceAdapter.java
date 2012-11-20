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
     * @param o ��������
     * @return
     */
    public Object insert(String statmentId, Object o) {
        return dataSetProvider.insert(statmentId, o);
    };

    /**
     * @param statmentId
     * @param o �޸Ĳ���
     * @return
     */
    public Object update(String statmentId, Object o) {
    	System.out.println("@@@@AbsServiceAdapter@@update@statmentId : " +statmentId);
    	System.out.println("@@@@AbsServiceAdapter@@update@o : " +o);
        return dataSetProvider.update(statmentId, o);
    };

    /**
     * @param statmentId
     * @param o ��ѯList����
     * @return
     */
    public List<?> selectList(String statmentId, Object o) {
        return dataSetProvider.selectList(statmentId, o);
    };

    /**
     * @param statmentId
     * @param o ��ѯ�����������
     * @return
     */
    public Object selectOne(String statmentId, Object o) {
        return dataSetProvider.selectOne(statmentId, o);
    };
    
    
    public Object delete(String statmentId, Object o) {
        return dataSetProvider.delete(statmentId, o);
    };
    
   
}
