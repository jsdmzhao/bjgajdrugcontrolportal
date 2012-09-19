<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String n_xh = request.getParameter("n_xh");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
    <title>内部消息 明细</title>
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>liger/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>liger/lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>  
    <link href="<%=basePath%>liger/lib/css/common.css" rel="stylesheet" type="text/css" />  
    <script src="<%=basePath%>liger/lib/js/common.js" type="text/javascript"></script>    
    <script src="<%=basePath%>liger/lib/js/LG.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery-validation/emails_cn.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/jquery.form.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/json2.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/validator.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/js/ligerui.expand.js" type="text/javascript"></script> 
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>
    <script src="<%=basePath%>liger/lib/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/formUtil.js" type="text/javascript"></script>
    
    <script type="text/javascript" src="<%=basePath%>ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=basePath%>ckfinder/ckfinder.js"></script>
	
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script>
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/MessageAction.js'></script>
  	
  	<script type="text/javascript">
  		var n_xh = '<%=n_xh %>';
  		MessageAction.getMessageQsqkList(n_xh, function (data){
			var list = [];			
			var rows = data.Rows;		
			list.push("<TABLE class=l-grid-body-table cellSpacing=0 cellPadding=0>");
			list.push("<TBODY>");
			for (var i in rows){
				if(rows[i].c_yhid != undefined && rows[i].c_zt != undefined){
					list.push("<TR class=l-grid-row>");
					list.push("<TD style=\"WIDTH: 220px\" class=\"l-grid-row-cell \">");
					list.push("<DIV style=\"TEXT-ALIGN: center;\" class=l-grid-row-cell-inner>");
					list.push(rows[i].c_yhid);
					list.push("</div></TD>");
					
					list.push("<TD style=\"WIDTH: 180px\" class=\"l-grid-row-cell \">");
					list.push("<DIV style=\"TEXT-ALIGN: center;\" class=l-grid-row-cell-inner>");
					if(rows[i].c_zt == '已签收'){
						list.push("<font color='red'>"+rows[i].c_zt+"</font>");
					} else {
						list.push(rows[i].c_zt);
					}
					list.push("</div></TD></TR>");
				}
			}
			list.push("</TBODY></TABLE>");
			document.getElementById("valueTable").innerHTML = list.join('');
  		});
  	</script>

</head>
<body>
		<DIV class=l-panel-bwarp style="heigth: 350px; width: 350px">
			<DIV class=l-panel-body>
				<DIV style="HEIGHT: 350px;" id=maingridgrid class=l-grid>
					<DIV class=l-grid1>
						<DIV style="HEIGHT: 20px" class="l-grid-header l-grid-header1">
							<DIV class=l-grid-header-inner>
								<TABLE class=l-grid-header-table cellSpacing=0 cellPadding=0>
									<TBODY>
										<TR class=l-grid-hd-row></TR>
									</TBODY>
								</TABLE>
							</DIV>
						</DIV>
					</DIV>
					<DIV class=l-grid2>
						<DIV style="HEIGHT: 30px" class="l-grid-header l-grid-header2">
							<DIV style="WIDTH: 350px;" class=l-grid-header-inner>
								<TABLE class=l-grid-header-table cellSpacing=0 cellPadding=0>
									<TBODY>
										<TR class=l-grid-hd-row>
											<TD style="WIDTH: 197px; HEIGHT: 30px" id=maingrid|hcell|c101
												class=l-grid-hd-cell columnindex="0" columnname="n_xh"
												ligeruiresizableid="Resizable1001">
												<DIV class=l-grid-hd-cell-inner>
													<SPAN class=l-grid-hd-cell-text>接收人</SPAN>
												</DIV>
											</TD>
											<TD style="WIDTH: 179px; HEIGHT: 30px" id=maingrid|hcell|c102
												class=l-grid-hd-cell columnindex="1" columnname="c_yhid"
												ligeruiresizableid="Resizable1002">
												<DIV class=l-grid-hd-cell-inner>
													<SPAN class=l-grid-hd-cell-text>签收情况</SPAN>
												</DIV>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</DIV>
						</DIV>
						<DIV style="HEIGHT: 310px;WIDTH: 350px;" class="l-grid-body l-grid-body2 l-scroll">
							<DIV style="HEIGHT: 310px;" class=l-grid-body-inner id="valueTable">
							<!-- 
								<TABLE class=l-grid-body-table cellSpacing=0 cellPadding=0>
									<TBODY>
										<TR class=l-grid-row>
											<TD style="WIDTH: 220px" class="l-grid-row-cell ">
												<DIV style="TEXT-ALIGN: left;" class=l-grid-row-cell-inner>
													10000000
												</DIV>
											</TD>
											<TD style="WIDTH: 180px" class="l-grid-row-cell ">
												<DIV style="TEXT-ALIGN: left;" class=l-grid-row-cell-inner>
													abvc
												</DIV>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
								 -->
							</DIV>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
</body>

</html>

