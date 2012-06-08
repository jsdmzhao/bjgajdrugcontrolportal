<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="css/layout.css" />
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<LINK href="css/css.css" type=text/css rel=stylesheet />
	</head>
	<body>
<script type="text/javascript" src="js/lightBox.js"></script>
<SCRIPT src="js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<script type="text/javascript" src="js/1.3.2/jquery.min.js" ></script>
<script type="text/javascript" src="js/jquery-ui.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
	});
</script>
<script type="text/javascript">

/*弹出内容*/
function parahtml(width,height)
{
var htmls= '<iframe src="iframecs.html" width='+width+' height='+height+' frameborder="0"></iframe>';
return htmls;
}
function parahtml2(width,height)
{
var htmls='<div style="width='+width+' height='+height+'">联系人：黄园<Br />联系电话：<Br />邮箱地址：huangyuanaccp@163.com</div>';
return htmls;
}
/*底部样式*/
function fontbutton(index,mag)
{
var footerhtml
if(mag==1)//选择按钮样式
{
 footerhtml='<input type="image" alt="Cancel" src="images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';	

}else
{
footerhtml='<input type="image" alt="Cancel" src="images/send_button.gif" class="btn" onclick=alert("Sumbited!"); />';
footerhtml+='<input type="image" alt="Cancel" src="images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';
}
return footerhtml;

}
</script>
<%@include  file="head.jsp" %>
<div id="container2">
11
</div>


<%@include file="foot.jsp"  %>
<SCRIPT type=text/javascript>
jQuery(function(){

	$("#changeCity").click(function(a){$("#allCity").slideDown(300);
	a.stopPropagation();$(this).blur()});
	$("#allCity").click(function(a){a.stopPropagation()});
	//$(document).click(function(a){a.button!=2&&$("#allCity").slideUp(300)});
	$("#foldin").click(function(){$("#allCity").slideUp(300)})
    });

</SCRIPT>
      <script language="javascript">
      $(document).ready(function (){
        var nScrollHight = 0; 
        var nScrollTop = 0;  
        var nDivHight = $("#div1").height();
        $("#div1").scroll(function(){
          nScrollHight = $(this)[0].scrollHeight;
          nScrollTop = $(this)[0].scrollTop;
          if(nScrollTop + nDivHight >= nScrollHight)
           
          });
      });
 </script>
 </body>
 </html>