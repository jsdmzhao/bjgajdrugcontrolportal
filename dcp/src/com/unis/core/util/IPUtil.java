package com.unis.core.util;

import javax.servlet.http.HttpServletRequest;

public class IPUtil {
	
	 public static String getUserIP(HttpServletRequest request) {
		  String ip = request.getHeader("x-forwarded-for");
		  if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		   ip = request.getHeader("Proxy-Client-IP");
		  }
		  if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		   ip = request.getHeader("WL-Proxy-Client-IP");
		  }
		  if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {   
		   ip = request.getRemoteAddr();  
		  }  
		  return ip; 
		} 

}
