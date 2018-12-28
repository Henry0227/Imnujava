<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'addAdmin.jsp' starting page</title>

		 <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" rev="stylesheet" href="admin/css/style.css"
			type="text/css" media="all" />


		<script language="JavaScript" type="text/javascript">
function tishi() {
	var a = confirm('数据库中保存有该人员基本信息，您可以修改或保留该信息。');
	if (a != true)
		return false;
	window
			.open(
					"冲突页.htm",
					"",
					"depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check() {
	document.getElementById("aa").style.display = "";
}
</script>
		<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
	</head>

	<body class="ContentBody">
		 <s:form action="admin!saveAdmin" theme="simple" target="mainFrame">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							管理员信息录入
						</th>
					</tr>
					<tr>
						<td class="CPanel">
						  

							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">
								<tr>
									<td align="left">
										<input type="submit" name="Submit" value="保存" class="button"
											 />

										<input type="button" name="buttonsss" value="返回" class="button"
											onclick="window.history.go(-1);" />
									</td>
								</tr>
								<TR>
									<TD width="100%">
										<fieldset style="height: 100%;">
											<legend>
												输入信息
											</legend>
									    <table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">

												<tr>
													<td width="15%" height="31" align="right" nowrap>
														用户名:
													</td>
													<td width="35%">
													  <s:textfield name="admin.name"></s:textfield>
														<span class="red">*</span>
													</td>
													<td width="16%" align="right" nowrap="nowrap">
														密码:
													</td>
													<td width="34%">
														<s:password name="admin.pass"></s:password>
													<span class="red">*</span></td>
												</tr>


												<tr>
													<td nowrap="nowrap" align="right">
														联系电话:
													</td>
													<td>
														<s:textfield name="admin.phone"></s:textfield>
													</td>
													<td align="right">&nbsp;</td>
													<td>&nbsp;</td>
												</tr>

												<tr>
													<td align="right">&nbsp;</td>
													<td colspan="3">&nbsp;</td>
												</tr>
											</table>
											<br />
										</fieldset>
									</TD>

								</TR>



							</TABLE>


						</td>
					</tr>

		<TR>
						<TD colspan="2" align="center" height="50px">
							<input type="submit" name="Submit" value="保存" class="button"
								/>

							<input type="button" name="button" value="返回" class="button"
								onclick="window.history.go(-1);" />
						</TD>
					</TR>
				</TABLE>


			
				

			</div>
			</s:form>
	</body>
</html>
