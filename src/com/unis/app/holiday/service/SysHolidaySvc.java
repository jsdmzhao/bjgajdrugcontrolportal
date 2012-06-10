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

import com.unis.app.holiday.service.dao.SysHolidayDao;
import com.unis.core.util.DateUtil;

@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class SysHolidaySvc  {
 
	@Autowired
	private SysHolidayDao sysHolidayDao;

	public Object save(Map p) throws SQLException {
		return sysHolidayDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return sysHolidayDao.saveAllInfo(p);
	}

	public Object remove(Map p) throws SQLException {
		return sysHolidayDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return sysHolidayDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return sysHolidayDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return sysHolidayDao.queryAllInfo(p);
	}
	
	public Map queryByPage(Map p, Map page) throws SQLException {
		return sysHolidayDao.queryByPageInfo(p, page);
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
        	sysHolidayDao.saveInfo(p);
        	date=DateUtil.getSpecifiedDayAfter(date);
		}
		return true;
	}
	

}