package  com.unis.app.userinfo.service.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unis.app.pagination.Pagination;
import com.unis.core.database.impl.DataSetProviderImpl;
import com.unis.core.service.AbsServiceAdapter;

@Repository
public class UserInfoDao<T> extends AbsServiceAdapter<T> {
	
	public Object saveInfo(Map p){
		return  super.insert("UserInfoMapper.saveInfo", p);
	}

	public Object saveAllInfo(Map p){
		return  super.insert("UserInfoMapper.saveAllInfo", p);
	}
	
	public Object saveGRInfo(Map p){
		return  super.insert("UserInfoMapper.saveGRInfo", p);
	}
	
	public Object removeGRInfo(Map p){
		return  super.insert("UserInfoMapper.removeGRInfo", p);
	}

	public Object removeInfo(Map p){
		return  super.delete("UserInfoMapper.removeInfo", p);
	}

	public Object updateInfo(Map p){
		return  super.update("UserInfoMapper.updateInfo", p);
	}

	public Object updateAllInfo(Map p){
		return  super.update("UserInfoMapper.updateAllInfo", p);
	}
	
	public List queryAllInfo(Map p){
		return  super.selectList("UserInfoMapper.queryAllInfo", p);
	}
	
	public List getSupJb(Map p){
	  String count = String.valueOf((Integer)getSupCount(p));
		if("0".equals(count)){
			return null;
		}
		return  super.selectList("UserInfoMapper.getSupJb", p);
	}
	
	public List choose(Map p){
		return  super.selectList("UserInfoMapper.choose", p);
	}
	
	public List chooseMobile(Map p){
		return  super.selectList("UserInfoMapper.chooseMobile", p);
	}
	
	
	public List queryInfo(Map p){
		return  super.selectList("UserInfoMapper.queryInfo", p);
	}
	
	public List getSr(){
		return  super.selectList("UserInfoMapper.getSr","");
	}
	
	
	public Object queryCountInfo(Map p) {
		return  super.selectOne("UserInfoMapper.queryCountInfo", p);
	}
	
	public Object getSupCount(Map p) {
		return  super.selectOne("UserInfoMapper.getSupCount", p);
	}

	public Map queryByPageInfo(Map p, Map page){
		String count = String.valueOf((Integer)queryCountInfo(p));
		if("0".equals(count)){
			return null;
		}else{ 
			page.put("recordCount", count);
			Pagination pagination = new Pagination(page);
			page.put("pageCount", pagination.getPageCount());
			p.put("startIndex", pagination.getStartIndex());
			p.put("lastIndex", pagination.getLastIndex());
			List list = queryInfo(p);
			Map retMap = new HashMap();
			retMap.put("data", list);
			retMap.put("page", page);
			return retMap;
		}
	}

}