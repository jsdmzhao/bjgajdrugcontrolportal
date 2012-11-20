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

import com.unis.app.car.model.CarCost;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;

@Controller
@Scope(value="prototype")
public class CarCostAction {

	private CarCost carCost;
	
	private String n_cllbxh;
	
	private Integer pagesize;
	
	private Integer page;
	
	@Autowired
	private AbsServiceAdapter<Integer> carService = null;
	
	public String carCostSave(Map<String, String> sqlParamMap,HttpServletRequest request){
		HttpSession session = request.getSession();
		String userId = session.getAttribute("userId")+"";
		String yhzId = session.getAttribute("cYhz")+"";
		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("c_yhzid", yhzId);
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			carService.update("CarCostMapper.updateCarCost", sqlParamMap);
		} else {
			carService.insert("CarCostMapper.insertCarCost", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public void carCostPageList() throws IOException{
		
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

		List<CarCost> carCostList = (List<CarCost>) carService.selectList("CarCostMapper.getCarCostPageList",sqlParamMap);
		Long cnt = (Long) carService.selectOne("CarCostMapper.getCarCostPageListCnt",sqlParamMap);

		resMap.put("Rows", carCostList);
		resMap.put("Total", cnt);

		ObjectMapper mapper = new ObjectMapper();
		
    	HttpServletResponse response = ServletActionContext.getResponse();
    	response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		mapper.writeValue(out, resMap);
		out.flush();
		out.close();
	}	
	
	public String carCostUpdate(){
		carCost = (CarCost) carService.selectOne("CarCostMapper.getCarCost", carCost);
		return Globals.SUCCESS;
	}	

	public String carCostView(){
		carCost = (CarCost) carService.selectOne("CarCostMapper.getCarCost", carCost);
		return Globals.SUCCESS;
	}
	
	
	public String carCostDelete(String n_xh){
		
		carService.update("CarCostMapper.deleteCarCost", n_xh);
		return Globals.SUCCESS;
	}
	
	public String carCostQuery(){
		
		carCost = (CarCost) carService.selectOne("CarCostMapper.getCarCost", carCost);
		return Globals.SUCCESS;
	}

	public CarCost getCarCost() {
		return carCost;
	}

	public void setCarCost(CarCost carCost) {
		this.carCost = carCost;
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
