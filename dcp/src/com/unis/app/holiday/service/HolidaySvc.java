package com.unis.app.holiday.service;


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
import com.unis.core.util.DateUtil;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class HolidaySvc  {
 
	@Autowired
	private HolidayDao holidayDao;

	public Object save(Map p) throws SQLException {
		return holidayDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return holidayDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return holidayDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return holidayDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return holidayDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return holidayDao.queryAllInfo(p);
	}
	
	public Map queryByPage(Map p, Map page) throws SQLException {
		return holidayDao.queryByPageInfo(p, page);
	}
	
	public Object quick() throws SQLException  {
		Map p=new HashMap();
		Calendar c = Calendar.getInstance();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sf.format(new java.util.Date());
        List<Map> list = queryAll(p);
        if(list.size()>0){
        	date=list.get(0).get("dRq")+"";
        }
        for (int i = 0; i < 7; i++) {
        	p.put("dRq", date);
        	p.put("cZt", DateUtil.getHoliday(date));
        	holidayDao.saveInfo(p);
        	date=DateUtil.getSpecifiedDayAfter(date);
		}
		return true;
	}
	

}