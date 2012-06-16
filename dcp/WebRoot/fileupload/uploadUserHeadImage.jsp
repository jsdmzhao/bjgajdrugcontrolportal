<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.unis.core.fileupload.File"%>
<%@page import="com.unis.core.fileupload.SmartUpload"%>
<%@page import="java.io.IOException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>


<%
	String FileName = null;
 String sPath = "/upload/images";

SmartUpload mySmartUpload = new SmartUpload();
mySmartUpload.initialize(config, request, response);
mySmartUpload.setMaxFileSize(2097152L);
mySmartUpload.setAllowedFilesList("jpg,gif,png,jpeg,bmp");
try
{
  mySmartUpload.upload();
  File myFile = mySmartUpload.getFiles().getFile(0);
  if (!(myFile.isMissing()))
  {
    Date currTime = new Date();
    SimpleDateFormat formatter2 = new SimpleDateFormat("yyyyMMddhhmmssS", Locale.US);
    FileName = new String(formatter2.format(currTime).getBytes("iso-8859-1"));
    String ext = myFile.getFileExt();
    FileName = FileName + "." + ext;

    myFile.saveAs(sPath + "/" + FileName, 1);
  }
  response.sendRedirect("uploadImage.jsp?Picurl=" + FileName + "&step=2");
}
catch (Exception e)
{
  e.printStackTrace();
}
%>
