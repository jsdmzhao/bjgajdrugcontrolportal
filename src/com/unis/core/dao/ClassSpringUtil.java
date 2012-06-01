package com.unis.core.dao;



import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware; 
 
 
public class ClassSpringUtil implements ApplicationContextAware {

	private static ApplicationContext applicationContext; 
	public void setApplicationContext(ApplicationContext arg0)
			throws BeansException {
		//System.out.println("测试测试 : "+arg0);		
		applicationContext = arg0;
		
	}
	public static Object getBean(String name){
        return applicationContext.getBean(name);
    }

}
