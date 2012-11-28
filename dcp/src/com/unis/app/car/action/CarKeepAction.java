package com.unis.app.car.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.commons.lang.xwork.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.app.car.model.CarKeep;
import com.unis.core.commons.Combox;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;

@Controller
@Scope(value="prototype")
public class CarKeepAction {

	private CarKeep carKeep;
	
	private String n_cllbxh;
	
	private Integer pagesize;
	
	private Integer page;

	private String operateType;
	
	@Autowired
	private AbsServiceAdapter<Integer> carService = null;
	
	public String carKeepSave(Map<String, String> sqlParamMap,HttpServletRequest request){
		HttpSession session = request.getSession();
		String userId = session.getAttribute("userId")+"";
		String yhzId = session.getAttribute("cYhz")+"";
		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("c_yhzid", yhzId);
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			carService.update("CarKeepMapper.updateCarKeep", sqlParamMap);
		} else {
			carService.insert("CarKeepMapper.insertCarKeep", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public void carKeepPageList() throws IOException{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		HttpSession session = request.getSession();
		String userId =  session.getAttribute("userId")+"";
		String yhzId =  session.getAttribute("cYhz")+"";
		String c_ks =  session.getAttribute("cKs")+"";
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("n_cllbxh", n_cllbxh);
		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("c_yhzid", yhzId);
		sqlParamMap.put("c_ks", c_ks);
		sqlParamMap.put("start", String.valueOf(((page.intValue()-1)*pagesize.intValue())));
		sqlParamMap.put("limit", String.valueOf((page.intValue()*pagesize.intValue())));
		Map<String, Object> resMap = new HashMap<String, Object>();

		List<CarKeep> carKeepList = (List<CarKeep>) carService.selectList("CarKeepMapper.getCarKeepPageList",sqlParamMap);
		Long cnt = (Long) carService.selectOne("CarKeepMapper.getCarKeepPageListCnt",sqlParamMap);

		resMap.put("Rows", carKeepList);
		resMap.put("Total", cnt);

		ObjectMapper mapper = new ObjectMapper();
		
    	HttpServletResponse response = ServletActionContext.getResponse();
    	response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		mapper.writeValue(out, resMap);
		out.flush();
		out.close();
	}
	
	@SuppressWarnings("unchecked")
	public List<Combox> getCarKeeptypeCombox(HttpServletRequest request){
		HttpSession session = request.getSession();
		String yhzId =  session.getAttribute("cYhz")+"";
		List<Combox> comboxList = (List<Combox>) carService.selectList("CarKeepMapper.getCarKeeptypeCombox", yhzId);
		return comboxList;
	}
	
	public String carKeepUpdate(){
		carKeep = (CarKeep) carService.selectOne("CarKeepMapper.getCarKeep", carKeep);
		return Globals.SUCCESS;
	}

	public String carKeepView(){
		carKeep = (CarKeep) carService.selectOne("CarKeepMapper.getCarKeep", carKeep);
		return Globals.SUCCESS;
	}	
	
	public String carKeepDelete(String n_xh){
		
		carService.update("CarKeepMapper.deleteCarKeep", n_xh);
		return Globals.SUCCESS;
	}
	
	public String carKeepOperator(String value, String n_xh){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String userId =  session.getAttribute("userId")+"";
		String c_ks =  session.getAttribute("cKs")+"";
		
		Map<String, Object> sqlparaMap = new HashMap<String, Object>();
		sqlparaMap.put("c_ks", c_ks);
		sqlparaMap.put("c_shr", userId);
		sqlparaMap.put("c_shjg", value);
		sqlparaMap.put("n_xh", n_xh);
		carService.update("CarKeepMapper.operateCarKeep", sqlparaMap);
		
		return Globals.SUCCESS;
	}
	
	public String carKeepQuery(){
		
		carKeep = (CarKeep) carService.selectOne("CarKeepMapper.getCarKeep", carKeep);
		return Globals.SUCCESS;
	}

	public CarKeep getCarKeep() {
		return carKeep;
	}

	public void setCarKeep(CarKeep carKeep) {
		this.carKeep = carKeep;
	}

	public String getN_cllbxh() {
		return n_cllbxh;
	}

	public void setN_cllbxh(String n_cllbxh) {
		this.n_cllbxh = n_cllbxh;
	}

	public AbsServiceAdapter<Integer> getCarService() {
		return carService;
	}

	public void setCarService(AbsServiceAdapter<Integer> carService) {
		this.carService = carService;
	}

	public Integer getPagesize() {
		return pagesize;
	}

	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public String getOperateType() {
		return operateType;
	}

	public void setOperateType(String operateType) {
		this.operateType = operateType;
	}
	
}
