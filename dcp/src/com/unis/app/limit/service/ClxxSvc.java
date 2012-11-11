package com.unis.app.limit.service;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service ;
import org.springframework.transaction.annotation.Transactional;

import com.unis.app.limit.service.dao.ClxxDao;
import com.unis.app.system.service.dao.SysUserDao;


@Service
@Transactional(rollbackFor={Exception.class,SQLException.class})
public class ClxxSvc  {
 
	@Autowired
	private ClxxDao clxxDao;

	public Object save(Map p) throws SQLException {
		return clxxDao.saveInfo(p);
	}

	public Object saveAll(Map p) throws SQLException {
		return clxxDao.saveAllInfo(p);
	}
	
	public Object saveInfo(List<Map<String,String>> list) throws SQLException {
		System.out.println(list);
		   Map p=new HashMap();
		List<Map> tlist=queryAll(p);
			for (int i = 0; i < tlist.size(); i++) {
				remove(tlist.get(i));
		}
		
		for (int i = 0; i < list.size(); i++) {
			
				save(list.get(i));
		}
		return true;
	}

	public String getWh() throws SQLException {
		
		// String[] weekDays = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
	     Calendar cal = Calendar.getInstance();
	     cal.setTime(new Date());
	     int w = cal.get(Calendar.DAY_OF_WEEK);
	     
	     Map p=new HashMap();
	     
		 switch (w) {
		case 1:
			p.put("cBz", "sun");
			
			break;
		case 2:
			p.put("cBz", "mon");
			break;
		case 3:
			p.put("cBz", "tue");
			break;
		case 4:
			p.put("cBz", "wed");
			break;
		case 5:
			p.put("cBz", "thu");
			break;
		case 6:
			p.put("cBz", "fri");
			break;
		default:
			p.put("cBz", "sat");
			break;
		}
		 List<Map> res=clxxDao.getWh(p);
		
		 if (res.size()==2) {
			 
			 String wh1=(res.get(0).get("cXxwh")+"").trim();
			 String wh2=(res.get(1).get("cXxwh")+"").trim();
			 if(wh1.equals(wh2)){
				 return " "+wh1+" ";
				 
			 }else{
				 return " "+wh1+" 和  "+ wh2+" ";
				 
			 }
					 
			
		}
		
		
		return "";
		
		
	}
	public Object remove(Map p) throws SQLException {
		return clxxDao.removeInfo(p);
	}

	public Object update(Map p) throws SQLException {
		return clxxDao.updateInfo(p);
	}

	public Object updateAll(Map p) throws SQLException {
		return clxxDao.updateAllInfo(p);
	}

	public List queryAll(Map p) throws SQLException {
		return clxxDao.queryAllInfo(p);
	}
	

	public Map queryByPage(Map p, Map page) throws SQLException {
		return clxxDao.queryByPageInfo(p, page);
	}

}