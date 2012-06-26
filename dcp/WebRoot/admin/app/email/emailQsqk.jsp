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
  	<script type='text/javascript' src='<%=basePath%>dwr/interface/EmailAction.js'></script>
  	
  	<script type="text/javascript">
  		var n_xh = '<%=n_xh %>';
  		EmailAction.getEmailQsqkList(n_xh, function (data){
  			var str = "";
  		    for (var one in data.Rows) {
  		        for(var key in data[one]) {
  		            str += data[one][key] + ",";
  		            alert(str);
  		        }
  		    }

  			
  		});
  	</script>

</head>
<body style="padding-bottom:31px;">
	<INPUT id=MenuNo value=MemberManageRole type=hidden>
		<DIV class=l-panel-bwarp>
			<DIV class=l-panel-body>
				<DIV style="HEIGHT: 488px" id=maingridgrid class=l-grid>
					<DIV style="DISPLAY: none" class=l-grid-popup>
						<TABLE cellSpacing=0 cellPadding=0>
							<TBODY>
								<TR>
									<TD class=l-column-left>
										<DIV class=l-checkbox-wrapper>
											<A class="l-checkbox l-checkbox-checked"></A>
											<INPUT class="l-checkbox l-hidden" value=on CHECKED type=checkbox
												jQuery15203520640666483416="29" ligeruiid="CheckBox1006"
												columnindex="1">
										</DIV>
									</TD>
									<TD class=l-column-right>接收人</TD>
								</TR>
								<TR jQuery15203520640666483416="26">
									<TD class=l-column-left>
										<DIV class=l-checkbox-wrapper>
											<A class="l-checkbox l-checkbox-checked"
												jQuery15203520640666483416="20"></A><INPUT
												class="l-checkbox l-hidden" value=on CHECKED type=checkbox
												jQuery15203520640666483416="30" ligeruiid="CheckBox1007"
												columnindex="2">
										</DIV>
									</TD>
									<TD class=l-column-right>签收情况</TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<DIV class=l-grid1>
						<DIV style="HEIGHT: 30px" class="l-grid-header l-grid-header1">
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
							<DIV style="WIDTH: 400px" class=l-grid-header-inner>
								<TABLE class=l-grid-header-table cellSpacing=0 cellPadding=0>
									<TBODY>
										<TR class=l-grid-hd-row>
											<TD style="WIDTH: 220px; HEIGHT: 30px" id=maingrid|hcell|c101
												class=l-grid-hd-cell jQuery15203520640666483416="12"
												columnindex="0" columnname="n_xh"
												ligeruiresizableid="Resizable1001">
												<DIV class=l-grid-hd-cell-inner>
													<SPAN class=l-grid-hd-cell-text>接收人</SPAN>
												</DIV>
											</TD>
											<TD style="WIDTH: 180px; HEIGHT: 30px" id=maingrid|hcell|c102
												class=l-grid-hd-cell jQuery15203520640666483416="13"
												columnindex="1" columnname="c_yhid"
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
						<DIV style="HEIGHT: 459px" class="l-grid-body l-grid-body2 l-scroll">
							<DIV style="WIDTH: 400px" class=l-grid-body-inner>
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
													
												</DIV>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</DIV>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
</body>

</html>

