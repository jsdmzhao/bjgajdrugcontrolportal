<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.awt.Rectangle"%>
<%@page import="java.io.File"%>
<%@page import="com.unis.core.fileupload.ImageHepler"%>
<%
	int imageWidth = Integer.parseInt(request.getParameter("txt_width"));
int imageHeight = Integer.parseInt(request.getParameter("txt_height"));
int cutTop = Integer.parseInt(request.getParameter("txt_top"));
int cutLeft = Integer.parseInt(request.getParameter("txt_left"));
int dropWidth = Integer.parseInt(request.getParameter("txt_DropWidth"));
int dropHeight = Integer.parseInt(request.getParameter("txt_DropHeight"));
float imageZoom = Float.parseFloat(request.getParameter("txt_Zoom"));
String picture = request.getParameter("picture");

System.out.println("imageWidth : " + imageWidth);
System.out.println("imageHeight : " + imageHeight);
System.out.println("cutTop : " + cutTop);
System.out.println("cutLeft : " + cutLeft);
System.out.println("dropWidth : " + dropWidth);
System.out.println("dropHeight : " + dropHeight);
System.out.println("imageZoom : " + imageZoom);
System.out.println("picture : " + picture);
System.out.println("url :" + request.getRealPath("") + "/upload/images/" + picture);
Rectangle rec = new Rectangle(cutLeft, cutTop, dropWidth, dropHeight);
File file = new File(request.getRealPath("") + "/upload/images/"+"fin_" + picture);
 
ImageHepler.cut(new File(request.getRealPath("") + "/upload/images/" + picture), file, imageWidth, imageHeight, rec);
response.sendRedirect("uploadImage.jsp?Picurl=" + picture + "&step=3");
%>
