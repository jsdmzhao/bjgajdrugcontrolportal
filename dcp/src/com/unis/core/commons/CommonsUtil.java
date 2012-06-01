package com.unis.core.commons;

import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CommonsUtil {

	public CommonsUtil() {
		super();		 
	}
	
	//isNull
	public static boolean isNull(Object obj){
		if(obj==null)return true;
		else if(obj.toString().equals(""))return true;
		else return false;
	} 
	
	//获取制定格式的系统时间 
	public String getSysDate(String format){
		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		if(format==null || format.equals("")){
			format = "yyyy-MM-dd HH:mm:ss";
		}
		SimpleDateFormat formater = new SimpleDateFormat(format); 
		String sysDate = formater.format(date); 
		return sysDate;
	}
	
	//获取当前季度
	public int getSeason(){
		Calendar calendar = Calendar.getInstance();
		double d = (double)(calendar.get(Calendar.MONTH)+1)/3;
		return (int)Math.ceil(d);
	}
	
	//ISO-UTF
	public String ISOToUTF(String str){
		try{
			byte[] btye = str.getBytes("iso-8859-1");
			str = new String(btye, "UTF-8");
		}catch(Exception e){
			e.printStackTrace();
		}
		return str;
	}
	//ISO2GB
	public String ISOToGB(String str){
		if(str == null)return null;
		try{
			byte[] btye = str.getBytes("iso-8859-1");
			str = new String(btye, "gb2312");
		}catch(Exception e){
			e.printStackTrace();
		}
		return str;
	}
	
	//GB2ISO
	public String GBToISO(String str){
		try{
			byte[] btye = str.getBytes("gb2312");
			str = new String(btye, "iso-8859-1");
		}catch(Exception e){
			e.printStackTrace();
		}
		return str;
	}
	
   /** 
	* 16进制数字字符集 
	* fyx
	*/ 
	private static String hexString="0123456789ABCDEF"; 
	
	/* 
	* 将字符串编码成16进制数字,适用于所有字符（包括中文）
	* 用于在保存时，操作BLOB字段 [保存]
	* fyx
	*/
	public static String encode(String str){ 
	//根据默认编码获取字节数组 
	byte[] bytes=str.getBytes(); 
	StringBuilder sb=new StringBuilder(bytes.length*2); 
	//将字节数组中每个字节拆解成2位16进制整数 
	for(int i=0;i<bytes.length;i++) { 
		sb.append(hexString.charAt((bytes[i]&0xf0)>>4)); 
		sb.append(hexString.charAt((bytes[i]&0x0f)>>0)); 
	} 
		return sb.toString(); 
	} 
	
	/* 
	* 将16进制数字解码成字符串,适用于所有字符（包括中文
	* 用于查询时，获取BLOB字段的内容  [保存]
	* fyx
	*/ 
	public static String decode(String bytes) { 
	ByteArrayOutputStream baos=new ByteArrayOutputStream(bytes.length()/2); 
	//将每2位16进制整数组装成一个字节 
	for(int i=0;i<bytes.length();i+=2) 
	baos.write((hexString.indexOf(bytes.charAt(i))<<4 |hexString.indexOf(bytes.charAt(i+1)))); 
	return new String(baos.toByteArray()); 
	} 
}
