package com.unis.app.car.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.xwork.StringUtils;
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
	public Map<String, Object> carList(String type,HttpServletRequest request){
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
	public List<Combox> getCartypeCombox(){
		List<Combox> comboxList = (List<Combox>) carService.selectList("CarMapper.getCartypeCombox", "");
		return comboxList;
	}
	
	public String carUpdate(){
		car = (Car) carService.selectOne("CarMapper.getCar", car);
		return Globals.SUCCESS;
	}
	
	public String carOperator(String value, String n_xh){
		Map<String, Object> sqlparaMap = new HashMap<String, Object>();
		sqlparaMap.put("c_shr", "");
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

	
}
