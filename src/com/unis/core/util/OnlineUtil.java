package com.unis.core.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class OnlineUtil {
	
	public static Map<String, String>  countMap;
	
	public static Properties props;
	
	public  static Map<String, String> showOnlineCnt(String filePath) throws FileNotFoundException, IOException{
		
		if(countMap == null){
			countMap = new HashMap<String, String>();
		}
		
		if(props == null){
			props = new Properties();
		}
		
		props.load(new FileInputStream(filePath));
		Set<Object> keys = props.keySet();
		Iterator<Object> it = keys.iterator();
		while(it.hasNext()){
			String key = (String) it.next();
			String value = props.getProperty(key);
			countMap.put(key, value);
		}
		return countMap;
	}
	
	public static void addOnlineCnt(){
		
	}
}
