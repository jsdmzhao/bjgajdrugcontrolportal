<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String paths = request.getContextPath();
	String basePaths = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + paths + "/";

	session.setAttribute("userId", "10000");
%>
<link rel="stylesheet" type="text/css" href="<%=basePaths%>css/layout.css" />
<link rel="stylesheet" type="text/css" href="<%=basePaths%>css/index.css" />
<link href="<%=basePaths%>css/css.css" type=text/css rel=stylesheet />
<link href="<%=basePaths%>css/base.css" rel="stylesheet" type="text/css" />

<!-- 弹出窗 -->


<script type="text/javascript" src="<%=basePaths%>js/lightBox.js"></script>



<script type="text/javascript">


	/*弹出内容*/
	function parahtml(url,width,height) {
		var htmls= '<iframe src="'+url+'" width='+width+' height='+height+' frameborder="0"></iframe>';
		return htmls;
	}
	function parahtml2(width,height) {
		var htmls='<div style="width='+width+' height='+height+'">联系人：黄园<Br />联系电话：<Br />邮箱地址：huangyuanaccp@163.com</div>';
		return htmls;
	}
	/*底部样式*/
	function fontbutton(index,mag) {
		var footerhtml
		if(mag==1)//选择按钮样式
		{
		 footerhtml='<input type="image" alt="Cancel" src="<%=basePaths%>images/cancel_button.gif" class="btn" id="msg'+index+'cancel" />';	
		}else {
			footerhtml='<input type="image" alt="Cancel" src="<%=basePaths%>images/send_button.gif" class="btn" onclick=alert("Sumbited!"); />';
			footerhtml+='<input type="image" alt="Cancel" src="<%=basePaths%>images/cancel_button.gif" class="btn" id="msg'
								+ index + 'cancel" />';
		}
		return footerhtml;
	}


</script>


<a href="#" onclick='Box("msg3",259,90,parahtml2(1259,190),fontbutton(3,1));'>联系我们</a>

