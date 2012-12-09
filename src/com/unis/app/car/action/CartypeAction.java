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
public class CartypeAction {
	
	private Car car;
	
	private String c_yhzid;
	
	private String type;
	
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
			//sqlParamMap.put("n_xslc", "0");
			//sqlParamMap.put("n_hyzl", "0");
			//sqlParamMap.put("n_pjyh", "0");
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
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> cartypWarnList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Car> cartypeList = (List<Car>) carService.selectList("CarMapper.getCartypeWarnList","");
		resMap.put("Rows", cartypeList);
		resMap.put("Total", cartypeList.size());
		return resMap;
	}
	
	@SuppressWarnings("unchecked")
	public String cartypeSelectList(String c_yhzid){
		
		//HttpSession session = request.getSession();
		//String c_yhzid = session.getAttribute("cYhz")+"";
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		sqlParamMap.put("c_yhzid", c_yhzid);
		sqlParamMap.put("type", type);
		
		StringBuffer sbf = new StringBuffer();
		List<Combox> comboxList = (List<Combox>) carService.selectList("CarMapper.getCartypeSelectList",sqlParamMap);
		for(Combox combox : comboxList){
			sbf.append("<option value='"+combox.getValue()+"'>"+combox.getText()+"</option>");
		}
		return sbf.toString();
	}
	
	@SuppressWarnings("unchecked")
	public List<Combox> cartypeCombox() throws IOException{
		
		//HttpServletRequest request = ServletActionContext.getRequest();
		
		//HttpSession session = request.getSession();
		//String yhzId =  session.getAttribute("cYhz")+"";
		
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		sqlParamMap.put("c_yhzid", c_yhzid);
		
		List<Combox> comboxList = (List<Combox>) carService.selectList("CarMapper.getCartypeCombox", sqlParamMap);
		
		ObjectMapper mapper = new ObjectMapper();
		
    	HttpServletResponse response = ServletActionContext.getResponse();
    	response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
    	mapper.writeValue(out, comboxList);
		out.flush();
		out.close();
		return comboxList;
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

	public String getC_yhzid() {
		return c_yhzid;
	}


	public void setC_yhzid(String c_yhzid) {
		this.c_yhzid = c_yhzid;
	}


	public AbsServiceAdapter<Integer> getCarService() {
		return carService;
	}

	public void setCarService(AbsServiceAdapter<Integer> carService) {
		this.carService = carService;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}

	
}
