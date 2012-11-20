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

import com.unis.app.car.model.CarRepair;
import com.unis.core.commons.Combox;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;

@Controller
@Scope(value="prototype")
public class CarRepairAction {

	private CarRepair carRepair;
	
	private String n_cllbxh;
	
	private Integer pagesize;
	
	private Integer page;
	
	
	@Autowired
	private AbsServiceAdapter<Integer> carService = null;
	
	public String carRepairSave(Map<String, String> sqlParamMap,HttpServletRequest request){
		HttpSession session = request.getSession();
		String userId = session.getAttribute("userId")+"";
		String yhzId = session.getAttribute("cYhz")+"";
		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("c_yhzid", yhzId);
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			carService.update("CarRepairMapper.updateCarRepair", sqlParamMap);
		} else {
			carService.insert("CarRepairMapper.insertCarRepair", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public void carRepairPageList() throws IOException{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		HttpSession session = request.getSession();
		String userId =  session.getAttribute("userId")+"";
		String yhzId =  session.getAttribute("cYhz")+"";
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		
		sqlParamMap.put("n_cllbxh", n_cllbxh);
		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("c_yhzid", yhzId);
		sqlParamMap.put("start", String.valueOf(((page.intValue()-1)*pagesize.intValue())));
		sqlParamMap.put("limit", String.valueOf((page.intValue()*pagesize.intValue())));
		Map<String, Object> resMap = new HashMap<String, Object>();

		List<CarRepair> carRepairList = (List<CarRepair>) carService.selectList("CarRepairMapper.getCarRepairPageList",sqlParamMap);
		Long cnt = (Long) carService.selectOne("CarRepairMapper.getCarRepairPageListCnt",sqlParamMap);

		resMap.put("Rows", carRepairList);
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
	public List<Combox> getCarRepairtypeCombox(HttpServletRequest request){
		HttpSession session = request.getSession();
		String yhzId =  session.getAttribute("cYhz")+"";
		List<Combox> comboxList = (List<Combox>) carService.selectList("CarRepairMapper.getCarRepairtypeCombox", yhzId);
		return comboxList;
	}
	
	public String carRepairUpdate(){
		carRepair = (CarRepair) carService.selectOne("CarRepairMapper.getCarRepair", carRepair);
		return Globals.SUCCESS;
	}

	public String carRepairView(){
		carRepair = (CarRepair) carService.selectOne("CarRepairMapper.getCarRepair", carRepair);
		return Globals.SUCCESS;
	}	
	
	public String carRepairDelete(String n_xh){
		
		carService.update("CarRepairMapper.deleteCarRepair", n_xh);
		return Globals.SUCCESS;
	}
	
	public String carRepairQuery(){
		
		carRepair = (CarRepair) carService.selectOne("CarRepairMapper.getCarRepair", carRepair);
		return Globals.SUCCESS;
	}

	public CarRepair getCarRepair() {
		return carRepair;
	}

	public void setCarRepair(CarRepair carRepair) {
		this.carRepair = carRepair;
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
	
}
