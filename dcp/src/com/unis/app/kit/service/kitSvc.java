package com.unis.app.kit.service;


import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.holiday.service.dao.HolidayDao;
import com.unis.app.kit.service.dao.KitDao;
import com.unis.core.util.DateUtil;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class kitSvc  {
 
	@Autowired
	private KitDao kitDao;

	public Object querySjgsdInfo(Map p) throws SQLException {
		//background-color: #F7F7F9;border: 1px solid #E1E1E8;color: #DD1144; padding: 2px 4px;
		String nHm=p.get("nHm")+"";
		if(nHm!=null&&nHm.length()>6){
			p.put("nHmd", nHm.substring(0, 7));
			List<Map> list=kitDao.querySjgsdInfo(p);
			if(list.size()>0){
				return "查询号段: <code style='background-color: #F7F7F9;border: 1px solid #E1E1E8;color: #DD1144; padding: 2px 4px;'>1565178</code>所在城市: "+list.get(0).get("cGsd");
				
			}else{
				return "暂无信息！";
			}
		}
		
		return null;
	}

	

}