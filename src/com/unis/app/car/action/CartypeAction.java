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

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.car.model.Car;

@Controller
@Scope(value="prototype")
public class CartypeAction {

	private Car car;
	
	@Autowired
	private AbsServiceAdapter<Integer> carService = null;
	
	public String cartypeSave(Map<String, String> sqlParamMap,HttpServletRequest request){
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		//String c_yhzid = session.getAttribute("cYhz")+"";
		sqlParamMap.put("c_yhid", c_yhid);
		//sqlParamMap.put("c_yhzid", c_yhzid);
		
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			carService.update("CarMapper.updateCartype", sqlParamMap);
		} else {
			sqlParamMap.put("n_xslc", "0");
			sqlParamMap.put("n_hyzl", "0");
			sqlParamMap.put("n_pjyh", "0");
			carService.insert("CarMapper.insertCartype", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	
	@SuppressWarnings("unchecked")
	public Map<String, Object> cartypeList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Car> cartypeList = (List<Car>) carService.selectList("CarMapper.getCartypeList","");
		resMap.put("Rows", cartypeList);
		resMap.put("Total", cartypeList.size());
		return resMap;
	}
	
	public String cartypeUpdate(){
		car = (Car) carService.selectOne("CarMapper.getCartype", car);
		return Globals.SUCCESS;
	}
	
	public String cartypeView(){
		car = (Car) carService.selectOne("CarMapper.getCartype", car);
		return Globals.SUCCESS;
	}
	
	
	public String cartypeDelete(String n_xh){
		
		carService.update("CarMapper.deleteCartype", n_xh);
		return Globals.SUCCESS;
	}
	

	
	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public AbsServiceAdapter<Integer> getCarService() {
		return carService;
	}

	public void setCarService(AbsServiceAdapter<Integer> carService) {
		this.carService = carService;
	}

	
}
