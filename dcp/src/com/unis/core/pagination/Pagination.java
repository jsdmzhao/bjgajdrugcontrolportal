package com.unis.core.pagination;

import java.util.HashMap;
import java.util.Map;

public class Pagination {
	//默认的当前页�?
    private final static Integer PAGE_INDEX = 1;
    //默认的每页显示记录数
    private final static Integer PAGE_SIZE = 20;
    //默认的记录�?�数
    private final static Integer RECORD_COUNT = 0;
	
	/**
	 * 每页显示记录�?
	 */
	private Integer pageSize;

	/**
	 * 当前页码
	 */
	private Integer pageIndex;

	/**
	 * 记录总数
	 */
	private Integer recordCount;

	/**
	 * 总页�?
	 */
	private Integer pageCount;

	/**
	 * 起始行号
	 */
	private Integer startIndex;

	/**
	 * 结束行号
	 */
	private Integer lastIndex;

	/**
	 * 构�?�函�?1
	 * @param pageMap
	 * @param recordCount
	 */
	public Pagination(Map pageMap, Integer recordCount){
		this.setPageIndex(new Integer(pageMap.get("pageIndex").toString()));
		this.setPageSize(new Integer(pageMap.get("pageSize").toString()));
		this.setRecordCount(recordCount);
		this.setPageCount();
		this.setStartIndex();
		this.setLastIndex();
	}
	
	/**
	 * 构�?�函�?2
	 * @param pageMap
	 */
	public Pagination(Map pageMap){
		this.setRecordCount(new Integer(pageMap.get("recordCount").toString()));
		this.setPageIndex(new Integer(pageMap.get("pageIndex").toString()));
		this.setPageSize(new Integer(pageMap.get("pageSize").toString()));
		this.setPageCount();
		this.setStartIndex();
		this.setLastIndex();
	}
	
	/**
	 * 构�?�函�?3
	 * @param pageIndex
	 * @param pageSize
	 * @param recordCount
	 */
	public Pagination(Integer pageIndex, Integer pageSize, Integer recordCount){
		this.setRecordCount(recordCount);
		this.setPageIndex(pageIndex);
		this.setPageSize(pageSize);
		this.setPageCount();
		this.setStartIndex();
		this.setLastIndex();
	}
	
	public Map<String, Integer> getPage(){
		Map<String, Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("pageIndex", pageIndex);
		pageMap.put("pageSize", pageSize);
		pageMap.put("pageCount", pageCount);
		pageMap.put("recordCount", recordCount);
		return pageMap;
	}
	
	public Integer getPageSize() {
		if(pageSize == null)pageSize = PAGE_SIZE;
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPageIndex() {
		if(pageIndex == null)pageIndex = PAGE_INDEX;
		return pageIndex;
	}

	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}

	public Integer getRecordCount() {
		if(recordCount == null)recordCount = RECORD_COUNT;
		return recordCount;
	}

	public void setRecordCount(Integer recordCount) {
		this.recordCount = recordCount;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount() {
		if (recordCount%pageSize == 0) {
			this.pageCount = recordCount/pageSize;
		} else {
			this.pageCount = (recordCount/pageSize) + 1;
		}
	}

	public Integer getStartIndex() {
		return startIndex;
	}

	public void setStartIndex() {
		this.startIndex = (pageIndex - 1) * pageSize;
	}

	public Integer getLastIndex() {
		return lastIndex;
	}

	public void setLastIndex() {
		if (recordCount < pageSize) {
			this.lastIndex = recordCount;
		} else if ((recordCount % pageSize == 0)
				|| (recordCount % pageSize != 0 && pageIndex < pageCount)) {
			this.lastIndex = pageIndex * pageSize;
		} else if (recordCount % pageSize != 0 && pageIndex - pageCount == 0) {//�?后一�?
			this.lastIndex = recordCount;
		}
	}

}
