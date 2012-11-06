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

import com.unis.core.commons.Combox;
import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.car.model.Car;

@Controller
@Scope(value="prototype")
public class CarAction {

	private Car car;
	
	private String c_yhid;
	
	private Integer pagesize;
	
	private Integer page;
	
	private String type;
	
	@Autowired
	private AbsServiceAdapter<Integer> carService = null;
	
	public String carSave(Map<String, String> sqlParamMap,HttpServletRequest request){
		HttpSession session = request.getSession();
		String userId = session.getAttribute("userId")+"";
		String yhzId = session.getAttribute("cYhz")+"";
		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("c_yhzid", yhzId);
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			carService.update("CarMapper.updateCar", sqlParamMap);
		} else {
			carService.insert("CarMapper.insertCar", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public void carList() throws IOException{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String userId =  session.getAttribute("userId")+"";
		String yhzId =  session.getAttribute("cYhz")+"";
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		
		sqlParamMap.put("type", type);
		sqlParamMap.put("c_yhid", userId);
		sqlParamMap.put("c_yhzid", yhzId);
		sqlParamMap.put("start", String.valueOf(((page.intValue()-1)*pagesize.intValue())));
		sqlParamMap.put("limit", String.valueOf((page.intValue()*pagesize.intValue())));
		Map<String, Object> resMap = new HashMap<String, Object>();

		List<Car> carList = (List<Car>) carService.selectList("CarMapper.getCarPageList",sqlParamMap);
		Long cnt = (Long) carService.selectOne("CarMapper.getCarPageListCnt",sqlParamMap);

		resMap.put("Rows", carList);
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
	public Map<String, Object> carUserList(String type,HttpServletRequest request){
		
		HttpSession session = request.getSession();
		String userId =  session.getAttribute("userId")+"";
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		sqlParamMap.put("type", type);
		sqlParamMap.put("c_yhid", userId);
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Car> carList = (List<Car>) carService.selectList("CarMapper.getCarList",sqlParamMap);
		resMap.put("Rows", carList);
		resMap.put("Total", carList.size());
		return resMap;
	}
	
	@SuppressWarnings("unchecked")
	public List<Combox> getCartypeCombox(HttpServletRequest request){
		HttpSession session = request.getSession();
		String yhzId =  session.getAttribute("cYhz")+"";
		List<Combox> comboxList = (List<Combox>) carService.selectList("CarMapper.getCartypeCombox", yhzId);
		return comboxList;
	}
	
	public String carUpdate(){
		car = (Car) carService.selectOne("CarMapper.getCar", car);
		return Globals.SUCCESS;
	}
	
	public String carOperator(String value, String n_xh){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String userId =  session.getAttribute("userId")+"";
		
		Map<String, Object> sqlparaMap = new HashMap<String, Object>();
		sqlparaMap.put("c_shr", userId);
		sqlparaMap.put("c_shjg", value);
		sqlparaMap.put("n_xh", n_xh);
		carService.update("CarMapper.operateCar", sqlparaMap);
		return Globals.SUCCESS;
	}

	public String carView(){
		car = (Car) carService.selectOne("CarMapper.getCar", car);
		return Globals.SUCCESS;
	}
	
	
	public String carDelete(String n_xh){
		
		carService.update("CarMapper.deleteCar", n_xh);
		return Globals.SUCCESS;
	}
	
	public String carQuery(){
		
		car = (Car) carService.selectOne("CarMapper.getCar", car);
		return Globals.SUCCESS;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public String getC_yhid() {
		return c_yhid;
	}

	public void setC_yhid(String cYhid) {
		c_yhid = cYhid;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
 
	
}
