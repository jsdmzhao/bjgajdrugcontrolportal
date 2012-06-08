<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String fileNameId=request.getParameter("fileNameId");






%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title></title>
<link href="css/main.css" type="text/css" rel="Stylesheet" />
    <script type="text/javascript" src="js/jquery1.2.6.pack.js"></script>
    <script  type="text/javascript" src="js/ui.core.packed.js" ></script>
    <script type="text/javascript" src="js/ui.draggable.packed.js" ></script>
    <script type="text/javascript" src="js/CutPic.js"></script>
       
</head>
<body>
  
      <form name="form1" method="post" action="uploadFile_do.jsp?fileNameId=<%=fileNameId %>" id="form1" enctype="multipart/form-data">
     <div class="right">
         <!--Step 1-->
         <div id="Step1Container">
            <div class="title"><b>选择文件</b></div>
            <div id="uploadcontainer">
                <div class="uploaddiv"><input type="file" name="fufile" id="fufile" title="选择照片" /></div>
                <div class="uploaddiv"><input type="submit" name="btnUpload" value="上 传" id="btnUpload" /></div>
            </div>
         
         </div>
     </div>
     </form>
   
</body>
</html>