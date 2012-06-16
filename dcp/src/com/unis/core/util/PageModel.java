package com.unis.core.util;

import java.util.List;

public class PageModel {

	private Long pageNo;
	
	private Integer pageSize = Globals.pageSize;
	
	@SuppressWarnings("unchecked")
	private List list;
	
	private Long totalRecords;

	public Long getPageNo() {
		return pageNo;
	}

	public void setPageNo(Long pageNo) {
		this.pageNo = pageNo;
	}

	@SuppressWarnings("unchecked")
	public List getList() {
		return list;
	}

	@SuppressWarnings("unchecked")
	public void setList(List list) {
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

}
