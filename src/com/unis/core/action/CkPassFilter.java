package com.unis.core.action;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

/** 
 *  ckeditor 
 */
public class CkPassFilter extends StrutsPrepareAndExecuteFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) req;
		if ("/ckfinder/core/connector/java/connector.java".equals(request.getServletPath()) || "/ckfinder/".equals(request.getServletPath()) || "/fileupload/uploadFile_do.jsp".equals(request.getServletPath())){
			chain.doFilter(req, res);
		} else if(!"/fileupload/undefined".equals(request.getServletPath()) ){
			super.doFilter(req, res, chain);
		}
	} 
}

