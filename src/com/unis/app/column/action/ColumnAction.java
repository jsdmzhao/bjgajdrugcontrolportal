package com.unis.app.column.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.column.model.Column;

@Controller
@Scope(value="prototype")
public class ColumnAction {

	private Column column;

	@Autowired
	private AbsServiceAdapter<Integer> columnService = null;
	
	
	public String columnSave(Map<String, String> sqlParamMap){
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			columnService.update("ColumnMapper.updateColumn", sqlParamMap);
		} else {
			columnService.insert("ColumnMapper.insertColumn", sqlParamMap);
		}
		return Globals.SUCCESS;
	}
	
	public String columnOperate(String operateType, String value, String n_xh){
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("value", value);
		sqlParamMap.put("n_xh", n_xh);
	    columnService.update("ColumnMapper.operateColumn", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> columnList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Column> columnList = (List<Column>) columnService.selectList("ColumnMapper.getColumnList","");
		resMap.put("Rows", columnList);
		resMap.put("Total", columnList.size());
		return resMap;
	}
	
	public String columnUpdate(){
		column = (Column) columnService.selectOne("ColumnMapper.getColumn", column);
		return Globals.SUCCESS;
	}
	
	
	public String columnView(){
		column = (Column) columnService.selectOne("ColumnMapper.getColumn", column);
		return Globals.SUCCESS;
	}
	
	public String columnDelete(String n_xh){
		
		columnService.update("ColumnMapper.deleteColumn", n_xh);
		return Globals.SUCCESS;
	}
	
	public String columnQuery(){
		
		column = (Column) columnService.selectOne("ColumnMapper.getColumn", column);
		return Globals.SUCCESS;
	}
	
	public Column getColumn() {
		return column;
	}

	public void setColumn(Column column) {
		this.column = column;
	}

	public AbsServiceAdapter<Integer> getColumnService() {
		return columnService;
	}

	public void setColumnService(AbsServiceAdapter<Integer> columnService) {
		this.columnService = columnService;
	}

	
}
