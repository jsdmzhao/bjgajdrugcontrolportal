package com.unis.core.commons; 

import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

 

public final class MyUtils {
	
	/**
	 * <b>获取工程路径</b><br/>
	 * <b>例: </b> E:\MyEclipse 8.5
	 * */
	public static String getProjectBasePath() { 
		
		String userDir = getUserDir(); 
		String projectBasePath = userDir.substring(0,userDir.lastIndexOf('\\'));	
		if(projectBasePath == null || "".equals(projectBasePath)){			
			System.err.println("lbg- MyUtil.getProjectBasePath 获取工程路径出错......");
			return null;
		}	 
		return projectBasePath;
	}
	
	/**
	 * <b>获取工程名称</b><br/>
	 * <b>例：</b> myAllTest
	 * */
	public static String getProjectName() { 
		
		String userDir = getUserDir(); 
		String projectName = userDir.substring(userDir.lastIndexOf('\\')+1,userDir.length());	
		if(projectName == null || "".equals(projectName)){			
			System.err.println("lbg- MyUtil.getProjectName 获取工程名出错......");
			return null;
		}	 
		return projectName;
	}
	
	/**
	 * <b>获取工程全路径</b><br/>
	 * <b>例： </b>E:\MyEclipse 8.5\myAllTest
	 * 
	 * */
	public static String getUserDir() {  
		 
		String userDir = System.getProperty("user.dir"); 
		if(userDir == null || "".equals(userDir)){
			System.err.println("lbg- MyUtil.getUserDir 获取工程全路径出错......");
			return null;			
		}
		return userDir;
	}

	/**
	 * <b>获取运行Class文件当前目录路径,包括本身的类名</b><br/>
	 * <b>例：</b>/E:/MyEclipse 8.5/myAllTest/WebRoot/WEB-INF/classes/com/createIbatis/MyUtils.class
	 * @param obj 需要获得路径的类的实例
	 * */
	public static String getRunClassAllPath(Object obj) { 
		
		Object currClass = obj; 
    	String name  = currClass.getClass().getSimpleName(); 
    	name += ".class";
    	URL clazzUrl = currClass.getClass().getResource(name);
    	String clazzStr = clazzUrl.getPath();
    	try {
			clazzStr = java.net.URLDecoder.decode(clazzStr,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}  
		return clazzStr;
	}
	
	/**
	 * <b>获取运行Class文件当前目录路径,不包括本身的类名</b><br/>
	 * <b>例：</b>/E:/MyEclipse 8.5/myAllTest/WebRoot/WEB-INF/classes/com/createIbatis
	 * @param obj  需要获得路径的类的实例
	 * */
	public static String getRunClassPath(Object obj) { 
		String clazzPath = "";
		String clazzStr = MyUtils.getRunClassAllPath(obj);
		clazzPath += clazzStr.substring(0,clazzStr.lastIndexOf('/')); 
		return clazzPath;
	}
	
	/**
	 * <b>获取当前运行项目的  WEB-INF 的路径</b><br/>
	 * <b>例：</b>/E:/MyEclipse 8.5/myAllTest/WebRoot/WEB-INF 
	 * */
	public static String getWEB_INFPath() { 
		String clazzPath = "";
		String clazzStr = MyUtils.getRunClassAllPath(new MyUtils());
		clazzPath += clazzStr.substring(0,clazzStr.lastIndexOf("/classes")); 
		return clazzPath;
	}
	  
	/**
	 * <b>获取制定格式的系统时间 </b><br/>
	 * <b>例：</b>2010-09-30 , 2010-09-30 13:12:00 等 
	 * @param  format 时间格式
	 * */
	public static String getSysDate(String format){
		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		if(format==null || format.equals("")){
			format = "yyyy-MM-dd HH:mm:ss";
		}
		SimpleDateFormat formater = new SimpleDateFormat(format); 
		String sysDate = formater.format(date); 
		return sysDate;
	}
	
	/**
	 *  <b>将传入的时间按照指定的格式转换成时间</b><br/> 
	 *  @param format 时间格式 
	 *  @param  date 传入的时间 
	 * */
	public static String getDate(String format , String date){ 
		
		if(format == null || "".equals(format))format="yyyy-MM-dd"; 		 
		DateFormat df= DateFormat.getDateTimeInstance();  	
		Date d = null;
		try {
			d = (Date)df.parse(date);			
		} catch (ParseException e) { 
			e.printStackTrace();
		}
		SimpleDateFormat sdf;
		sdf = new SimpleDateFormat(format); 
		return sdf.format(d);
	}
	
	/**
	 *  <b>将传入的时间转换成毫秒</b><br/> 
	 *  @param format 时间格式 
	 *  @param  date 传入的时间
	 *  @return  date 毫秒数
	 * */
	public static long getTime(String format , String date){ 
		
		if(format == null || "".equals(format))format="yyyy-MM-dd";
		SimpleDateFormat simpledateformat = 
			new SimpleDateFormat(format, Locale.SIMPLIFIED_CHINESE);	
		Date d=null;
		try {
			d = (Date)simpledateformat.parse(date);			
		} catch (ParseException e) { 
			e.printStackTrace();
		} 
		return d.getTime();
	}
	/**
	 * <b>获取当前季度 </b><br/>  
	 * */ 
	public static int getSeason(){ 
		return Calendar.MONTH/3;
	}
	 
	/**
	 * <b>ISO转换成UTF</b><br/>  
	 * */ 
	public static String ISOToUTF(String str){
		try{
			byte[] btye = str.getBytes("iso-8859-1");
			str = new String(btye, "UTF-8");
		}catch(Exception e){
			e.printStackTrace();
		}
		return str;
	} 
	/**
	 * <b>ISO转换成GB</b><br/>  
	 * */ 
	public static String ISOToGB(String str){
		if(str == null)return null;
		try{
			byte[] btye = str.getBytes("iso-8859-1");
			str = new String(btye, "gb2312");
		}catch(Exception e){
			e.printStackTrace();
		}
		return str;
	}
	 
	/**
	 * <b>GB转换成ISO</b><br/>  
	 * */ 
	public static String GBToISO(String str){
		try{
			byte[] btye = str.getBytes("gb2312");
			str = new String(btye, "iso-8859-1");
		}catch(Exception e){
			e.printStackTrace();
		}
		return str;
	}
	
	/**
	 * <b>数组最大值</b><br/> 
	 * @param arr 数组
	 * */
	public static int getMaxNum(Integer[] arr){			
		 Integer max = 0;
		 if(arr != null && arr.length != 0){
			 
			 for(int i =0,len = arr.length-1 ;i< len ;i++){			 
				 if(arr[i] > arr[i+1]){
					 Integer temp = arr[i];
					 arr[i] = arr[i+1];
					 arr[i+1] = temp;
				 }
			 }
			 max = arr[arr.length-1];
		 } 
	
		return max;
	}
	
	/**
	 * <b>解析字符串为一维数组:一个分隔符</b><br/>
	 * @param str  要解析的字符串
	 * @param cha 分隔离符号 如( | )
	 * @return String[] 一维数组
	 * */
	public static String[] oneArray(String str , String cha ){
		
		if(str == null || str.equals("")){
			return null;
		}		
		String[] ss = null;
		int pos = str.indexOf(cha);
		if(pos != -1){
			 ss = str.split("\\"+cha);  			                                 
		}else{
			ss = new String[1];
		    ss[0] = str;
		}
		return ss;
	}
	/**
	 * <b>解析字符串为List:一个分隔符</b><br/>
	 * @param str  要解析的字符串
	 * @param cha 分隔离符号 如( | )
	 * @return  List<String> List
	 * */
	public static List<String> oneList(String str , String cha ){
		 
		 String[] ss = oneArray(str,cha);
		 List<String> list = listAddArray(ss);
		 return list;
	}
	
	/**
	 * <b>将一维数组内的元素添加到List中去</b><br/>
	 * @param strs  一维数组
	 * @return List<String> List
	 * */
	public static List<String> listAddArray(String[] strs ){
		
		 List<String> list = new ArrayList<String>();
		 String[] ss = strs;
		 for(int i = 0 ;i< ss.length ; i++){ 	 
		     list.add(ss[i]);
	     }
		 return list;
	}
	/**
	 * <b>解析字符串为二维数组:两个分隔符</b><br/>
	 * @param str  要解析的字符串
	 * @param cha1 隔离符号 如( , ) ---外面的符号
	 * @param cha2 隔离符号 如( | ) ---里面的符号
	 * @return String[][] 二维数组
	 * */
	public static String[][] getTwoArrayFromStr(String str , String cha1 , String cha2 ){
		
		if(str == null || str.equals("")){
			return null;
		}		
		String[][] ss = null;
		int pos1 = str.indexOf(cha1);
		
		if(pos1 != -1){
			String[] s = str.split("\\"+cha1);  
		    ss = new String[s.length][s[0].split("\\"+cha2).length];
			for(int i = 0 ;i< s.length ; i++){ 				
				 String[] s1 = s[i].split("\\"+cha2); 
				 for(int j = 0 ; j< s1.length ; j++){ 	
					 ss[i][j] = s1[j];
				 }
			}
		}else{
			String[] s = str.split("\\"+cha2);  
			ss = null;
		    ss = new String[1][s.length]; 	
			for(int i = 0 ;i< s.length ; i++){ 		
				ss[0][i] = s[i];				 
			}			
		}
		return ss;
	}
	

	/**
	 *<b>打印 解析后的一维数组</b><br/>
	 * @param ss  需要打印的一维数组 
	 * */
	public static void sysOneArray(String ss[]){
		
		if(ss == null){ 
			System.err.println("lbg- MyUtil.sysArrayForOne 一维数组为NULL......");
		} 
	    for(int i = 0 ;i< ss.length ; i++){ 			 
		     System.out.print(ss[i] + "   ");
	    }
	}
	
	/** 
	 * <b>打印 解析后的二维数组</b><br/>
	 * @param strs  要打印的解析后的二为字符数组 
	 * */
	public static void sysTwoArray(String strs[][]){
		
		if(strs == null){ 
			System.err.println("lbg- MyUtil.sysArrayForTwo 二维数组为NULL......");
		} 
		 for(int i = 0 ;i< strs.length ; i++){ 			 
			 for(int j = 0 ;j< strs[i].length ; j++){ 			 
				 System.out.print(strs[i][j] + "   ");
			 } 
			 System.out.println();
	     }
	}
	

	/**
	 * <b>获得两个List并集</b><br/>
	 * @param list1  第1个List
	 * @param list2  第2个List
	 * @return  List<String> List
	 * */
	public static List<String> mergeList(List<String> list1 ,List<String> list2 ){
		 
		List<String> list = new ArrayList<String>(Arrays.asList(new String[list1.size()]));
		Collections.copy(list, list1); 
		list.addAll(list2); 
		return list;
	}
	
	/**
	 * <b>获得两个List中交集</b><br/>
	 * @param list1  第1个List
	 * @param list2  第2个List
	 * @return  List<String> List
	 * */
	public static List<String> retainList(List<String> list1 ,List<String> list2 ){
		
		List<String> list = new ArrayList<String>(Arrays.asList(new String[list1.size()]));
		Collections.copy(list, list1); 
		list.retainAll(list2);
		return list;
	}
	
	/**
	 * <b>获得两个List中差集</b><br/>
	 * @param list1  第1个List
	 * @param list2  第2个List
	 * @return  List<String> List
	 * */
	public static List<String> diffList(List<String> list1 ,List<String> list2 ){
		 
		  List<String> list3 = mergeList(list1, list2);
		  List<String> list = new ArrayList<String>(Arrays.asList(new String[list3.size()]));
		  Collections.copy(list, list3); 
		  list.removeAll(retainList(list1,list2));// 两个集合的差
		  return list;
	}
	
	/**
	 * <b>获得两个List中去除重复后</b><br/>
	 * @param list1  第1个List
	 * @param list2  第2个List
	 * @return  List<String> List
	 * */
	public static List<String> noRepeatList(List<String> list1 ,List<String> list2 ){
		  List<String> list3 = retainList(list1,list2);
		  List<String> list4 = diffList(list1,list2);
		  list3.addAll(list4);
		  return list3;
	}
	
	/**
	 * <b>将字符串 1,2,3 转换成代单引号的字符串 '1','2','3'</b><br/>
	 * @param str  传来字符串  1,2,3
	 * @return  s 转化后的 '1','2','3'
	 * */
	public static String toOneQuotaStr(String str){ 
    	 String s =  str;
    	 s = s.replaceAll(",", "','"); 
    	 s = "'"+s+"'";
    	 return s;
	}
	/**
	 * <b>将  List 转换成代单引号的字符串 '1','2','3'</b><br/>
	 * @param str  传来字符串  1,2,3
	 * @return  s 转化后的 '1','2','3'
	 * */
	public static String toOneQuotaList(List<String> list){  
		 
    	 String string =  "";
    	 for(String str : list){
			 string += "'"+str+"',";
		 }
		 string = string.substring(0, string.length()-1);
    	 return string;
	}
	/**
	 * <b>将 a_base 装换成 aBase </b><br/>
	 * @param  str  传来字符串  a_base
	 * @param  valid  标识 ： 1  所有首字母大写，2 第一个单词首字母小写
	 * @return stand  转化后的  aBase
	 * */
	public static String toStand(String str,int valid){  
		 
    	String stand = null; 
    	str = str.toLowerCase();
    	String[] ss = str.split("\\_"); 
    	if(valid ==1){
    		//所有首字母大写
    		if(ss.length == 1){
        		stand = ss[0].toLowerCase();
        		stand = stand.replaceFirst(stand.substring(0,1), stand.substring(0,1).toUpperCase());
        	}else{
        		String temp = "";
        		for(int i =0;i<ss.length;i++){
        			temp += ss[i].replaceFirst(ss[i].substring(0,1), ss[i].substring(0,1).toUpperCase());
            	} 
        		stand = temp;
        	}
    		
    	}else{
    		//第一个单词首字母小写
    		if(ss.length == 1){
        		stand = ss[0].toLowerCase();
        	}else{
        		String temp = "";
        		for(int i =1;i<ss.length;i++){
        			temp += ss[i].replaceFirst(ss[i].substring(0,1), ss[i].substring(0,1).toUpperCase());
            	} 
        		stand = ss[0].toLowerCase()+temp;
        	}
    	}
    	
    	return stand;
	}  
	
	/**
	 * <b>将日期（2011-1-15）转成 中文日期（二零一一年一月十五日）</b><br/>
	 * @param  str  日期字符串   
	 * @return targetString  中文日期
	 * */
	public static String dateToChinese(String str){  

	    //将String类型日期转成Date日期 
				 
		DateFormat df= DateFormat.getDateInstance();  	
		Date d = null;
		try {
			d = (Date)df.parse(str);			
		} catch (ParseException e) { 
			e.printStackTrace();
		}  
		
		// 日期格式转化为字符串格式 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日");
		String dateString = dateFormat.format(d);   

		// 用来存储加工重组字符符串日期 
		String[] changeDate = new String[9];

		// 重组字符串格式日期，方便下一步对其进行操作 
		for(int i=0;i<dateString.length();i++) {

		if(i < 5) { 
		changeDate[i] = String.valueOf(dateString.charAt(i));
		}
		// 将月份的数值的两位字符合并成一个字符串
		changeDate[5] = String.valueOf(dateString.charAt(5)) + String.valueOf(dateString.charAt(6));
		changeDate[6] = String.valueOf(dateString.charAt(7));
		// 将日期的数值的两位字符合并成一个字符串
		changeDate[7] = String.valueOf(dateString.charAt(8)) + String.valueOf(dateString.charAt(9));
		changeDate[8] = String.valueOf(dateString.charAt(10));           

		} 

		// 遍历重组后的字符串格式日期数组，生成中文日期格式字符串 
		String targetString = new String();
		for(int i=0;i<changeDate.length;i++) {

		if(changeDate[i].equals("0")) { 
		targetString += "零";
		continue;
		}               

		if(changeDate[i].equals("1") || changeDate[i].equals("01")) { 
		targetString += "一";
		continue;
		}

		if(changeDate[i].equals("2") || changeDate[i].equals("02")) { 
		targetString += "二";
		continue;
		}

		if(changeDate[i].equals("3")|| changeDate[i].equals("03")) { 
		targetString += "三";
		continue;
		}

		if(changeDate[i].equals("4")|| changeDate[i].equals("04")) { 
		targetString += "四";
		continue;
		}

		if(changeDate[i].equals("5")|| changeDate[i].equals("05")) { 
		targetString += "五";
		continue;
		}

		if(changeDate[i].equals("6")|| changeDate[i].equals("06")) { 
		targetString += "六";
		continue;
		}

		if(changeDate[i].equals("7")|| changeDate[i].equals("07")) { 
		targetString += "七";
		continue;
		}

		if(changeDate[i].equals("8")|| changeDate[i].equals("08")) { 
		targetString += "八";
		continue;
		}

		if(changeDate[i].equals("9")|| changeDate[i].equals("09")) { 
		targetString += "九";
		continue;
		}

		if(changeDate[i].equals("10")) { 
		targetString += "十";
		continue;
		}

		if(changeDate[i].equals("11")) { 
		targetString += "十一";
		continue;
		}

		if(changeDate[i].equals("12")) { 
		targetString += "十二";
		continue;
		}

		if(changeDate[i].equals("13")) { 
		targetString += "十三";
		continue;
		}

		if(changeDate[i].equals("14")) { 
		targetString += "十四";
		continue;
		}

		if(changeDate[i].equals("15")) { 
		targetString += "十五";
		continue;
		}

		if(changeDate[i].equals("16")) { 
		targetString += "十六";
		continue;
		}

		if(changeDate[i].equals("17")) { 
		targetString += "十七";
		continue;
		}

		if(changeDate[i].equals("18")) { 
		targetString += "十八";
		continue;
		}

		if(changeDate[i].equals("19")) { 
		targetString += "十九";
		continue;
		}

		if(changeDate[i].equals("20")) { 
		targetString += "二十";
		continue;
		}

		if(changeDate[i].equals("21")) { 
		targetString += "二十一";
		continue;
		}

		if(changeDate[i].equals("22")) { 
		targetString += "二十二";
		continue;
		}

		if(changeDate[i].equals("23")) { 
		targetString += "二十三";
		continue;
		}

		if(changeDate[i].equals("24")) { 
		targetString += "二十四";
		continue;
		}

		if(changeDate[i].equals("25")) { 
		targetString += "二十五";
		continue;
		}

		if(changeDate[i].equals("26")) { 
		targetString += "二十六";
		continue;
		}

		if(changeDate[i].equals("27")) { 
		targetString += "二十七";
		continue;
		}

		if(changeDate[i].equals("28")) { 
		targetString += "二十八";
		continue;
		}

		if(changeDate[i].equals("29")) { 
		targetString += "二十九";
		continue;
		}

		if(changeDate[i].equals("30")) { 
		targetString += "三十";   
		continue;
		}

		if(changeDate[i].equals("31")) { 
		targetString += "三十一";
		continue;
		}

		if(changeDate[i].equals("年")) { 
		targetString += "年";
		continue;
		}

		if(changeDate[i].equals("月")) { 
		targetString += "月";
		continue;
		}

		if(changeDate[i].equals("日")) { 
		targetString += "日";
		continue;
		}                           
		}               
		return targetString;
    	
	}  
	
     @SuppressWarnings("unused")
	public static void main(String[] args) {
    	  
    	// System.out.println(MyUtils.toStand("company_name_type",1)); 
    	// System.out.println(MyUtils.toStand("CATERING_TYPE",2)); 
    	// System.out.println(MyUtils.toStand("CATERINGTYPE",1)); 
    	 System.out.println(MyUtils.dateToChinese("2011-1-15")); 
    	 
    	 
    	 
    	 
    	 
//
////    	 System.out.println(MyUtils.getProjectBasePath()); 
////    	 System.out.println(MyUtils.getProjectName()); 
////    	 System.out.println(MyUtils.getUserDir()); 
////    	 System.out.println(MyUtils.getRunClassPath(new MyUtils())); 
////    	 System.out.println(MyUtils.getRunClassAllPath(new MyUtils())); 
////    	 System.out.println(MyUtils.getWEB_INFPath()); 
////    	 System.out.println(MyUtils.getSysDate("yyyy-MM-dd"));
////    	 System.out.println(MyUtils.getSeason()); 
//    	 
////    	 Integer[] arr = new Integer[3];
////    	 arr[0] = 2;
////    	 arr[1] = 1;
////    	 arr[2] = 5;
////    	 System.out.println(MyUtils.getMaxNum(arr)); 
//    	 
////    	 System.out.println(MyUtils.getTime("yyyy-MM-dd HH:mm:ss","2010-09-30 13:12:12")
////    			 -MyUtils.getTime("yyyy-MM-dd HH:mm:ss","2010-09-30 13:12:11")); 
//    	 
//        
//    	 MyUtils.sysOneArray(MyUtils.oneArray("1,5,3,d", ",")); 
//    	 System.out.println(MyUtils.oneList("1|5|3|d", "|"));
    	 List<String> list1 = MyUtils.oneList("1|5|3|d", "|");
////    	 List<String> list2 = MyUtils.oneList("1|5|4|s", "|"); 
////    	 System.out.println(mergeList(list1,list2));
////    	 System.out.println(retainList(list1,list2));
////    	 System.out.println(diffList(list1,list2));
////    	 System.out.println(noRepeatList(list1,list2));
//      
////    	 MyUtils.sysTwoArray(MyUtils.getTwoArrayFromStr("1|a,5|b,3|a,d|d", ",","|")); 
//    	 
 
 

        //string - 组装代单引号字符串 
//    	 System.out.println(toOneQuotaStr("1"));
    	 

         //list - 组装代单引号字符串 
//     	 System.out.println(toOneQuotaList(list1));
    	 System.out.println( MyUtils.getDate("yyyyMMdd","2010-10-01 12:10:1"));
	}
     
     
     
     
     
     /**
 	 * <b>WEB工程获取工程路径</b><br/>
 	 * <b>例: </b> /D:/Apache Software Foundation/Tomcat 6.0/webapps/GetUrl
 	 * */
 	public static String getWebProjectBasePath() { 
 		String clazzPath = "";
		String clazzStr = MyUtils.getRunClassAllPath(new MyUtils());
		clazzPath += clazzStr.substring(0,clazzStr.lastIndexOf("/WEB-INF")); 
		return clazzPath;
 	}
}
