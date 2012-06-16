<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="com.unis.core.fileupload.SmartUpload"%>
<%@page import="com.unis.core.fileupload.File"%>


<%

String fileNameId=request.getParameter("fileNameId");

 String FileName = null;
 String sPath = "/upload";
 String ext=null;
 String fileNameReturn=null;
SmartUpload mySmartUpload = new SmartUpload();
mySmartUpload.initialize(config, request, response);
mySmartUpload.setMaxFileSize(1024*1024*1024*56);
//mySmartUpload.setAllowedFilesList("jpg,gif,png,jpeg,bmp");
try
{
  mySmartUpload.upload();
  File myFile = mySmartUpload.getFiles().getFile(0);
  if (!(myFile.isMissing()))
  {
    Date currTime = new Date();
    SimpleDateFormat formatter2 = new SimpleDateFormat("yyyyMMddhhmmssS", Locale.US);
    FileName = new String(formatter2.format(currTime).getBytes("iso-8859-1"));
    ext = myFile.getFileExt();
    sPath = sPath+ "/" + FileName + "." + ext;
    fileNameReturn=FileName + "." + ext;
    myFile.saveAs(sPath, 1);
    
    
  }
  //response.sendRedirect("uploadImage.jsp?Picurl=" + FileName + "&step=2");
  
  String allPath="/dcp"+sPath;
  
  %>
  <script>

  parent.$("#<%=fileNameId%>").attr("value","upload/<%=fileNameReturn %>");
  
 </script>
  上传成功！
 <% 
  
  
}
catch (Exception e)
{
  e.printStackTrace();
}
%>
