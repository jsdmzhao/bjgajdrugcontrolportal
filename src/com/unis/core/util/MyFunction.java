package com.unis.core.util;

import java.io.File;

import javax.security.auth.login.AppConfigurationEntry;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.unis.drugcontol.login.action.LoginAction;

/**
 * 自定义函数
 * @author MaQinZh
 *
 */
public class MyFunction {

	/**
	public static AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
	static {
		ctx.scan("com.acme");
		ctx.refresh();
	}
	**/
	//MyService myService = ctx.getBean(MyService.class);
	
	//public static BeanFactory factory = new ClassPathXmlApplicationContext("applicationContext.xml");
	
/*	@SuppressWarnings("unchecked")
	public static List<News> getNews(Integer newsFlag, Long pageNo) {
		NewsManager newsManager = (NewsManager) factory.getBean("newsManager");
		return newsManager.list(newsFlag, pageNo).getList();
	} 
	*/
	//public static void main(String[] args) {
		//System.out.println(new File("").getAbsolutePath());
		//LoginAction loginAction = ctx.getBean(LoginAction.class);
		//System.out.println(loginAction.checkUser("MQZ", ""));
	//}

	
}
