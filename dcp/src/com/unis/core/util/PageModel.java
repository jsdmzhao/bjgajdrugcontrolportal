package com.unis.core.util;

import java.util.List;

public class PageModel {

	private Long pageNo;
	
	private Integer pageSize = Globals.pageSize;
	
	private List<?> list;
	
	private Long totalRecords;
	
	private String keyWords;

	public Long getPageNo() {
		return pageNo;
	}

	public void setPageNo(Long pageNo) {
		this.pageNo = pageNo;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	public Long getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(Long totalRecords) {
		this.totalRecords = totalRecords;
	}
	
	public Long getTotalPages() {
		
		if(totalRecords % pageSize == 0) {
			return totalRecords / pageSize; 
		} else {
			return totalRecords / pageSize + 1;
		}
	}
	
	public long getTopPage() {		
		return 1;
	}
	
	public long getPreviousPage() {		
		if(pageNo <= 1) {	
			return 1;
		}else {			
			return pageNo-1;
		}		
	}

	public long getNextPage() {
		
		if(pageNo >= getTotalPages()) {	
			return getTotalPages();
		}else {			
			return pageNo+1;
		}		
	}
	
	public long  getBottomPage() {
		
		return getTotalPages();
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

}
