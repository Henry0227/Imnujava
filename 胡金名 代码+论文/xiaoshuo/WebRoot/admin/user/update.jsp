<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
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
	var a = confirm('���ݿ��б����и���Ա������Ϣ���������޸Ļ�������Ϣ��');
	if (a != true)
		return false;
	window
			.open(
					"��ͻҳ.htm",
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
	<sx:head />

	<body class="ContentBody">
		 <s:form action="user!updateOne" theme="simple" target="mainFrame">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							�û���Ϣ�޸�
						</th>
					</tr>
					<tr>
						<td class="CPanel">
						  

							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">
								<tr>
									<td align="left">
										<input type="submit" name="Submit" value="�ύ" class="button"
											 />

										<input type="button" name="buttonsss" value="����" class="button"
											onclick="window.history.go(-1);" />
									</td>
								</tr>
								<TR>
									<TD width="100%">
										<fieldset style="height: 100%;">
										  <legend>
												������Ϣ
											</legend>
									    <table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">

												<tr>
													<td width="15%" height="31" align="right" nowrap>
														�û���:
													</td>
													<s:hidden name="user.id"></s:hidden>
													<td width="35%">
													  <s:textfield name="user.username"></s:textfield>
														<span class="red">*</span>
													</td>
													<td width="16%" align="right" nowrap="nowrap">
														����:
													</td>
													<td width="34%">
														<s:textfield name="user.password"></s:textfield>
													<span class="red">*</span></td>
												</tr>


												<tr>
													<td height="23" align="right" nowrap="nowrap">
														�Ա�:
													</td>
													<td>
														<s:radio list="#{0:'��',1:'Ů'}" name="user.sex"  listKey="key"
								listValue="value"  labelposition="left" ></s:radio>
													</td>
													<td align="right">�������ڣ�</td>
													<td><sx:datetimepicker staticDisplay="����������"  startDate="1960-00-01" name="user.birth"  displayFormat="yyyy-MM-dd"
								toggleType="fade"  ></sx:datetimepicker></td>
												</tr>

												<tr>
													<td height="38" align="right">���䣺</td>
											    <td><s:textfield name="user.email"></s:textfield></td>
													<td align="right">ԭ�����ߣ�</td>
													<td><s:property value="user.progenitor==0?'��':'��'"/></td>
												</tr>
												<tr>
													<td height="39" align="right">
														VIP��
													</td>
													<td><s:radio list="#{0:'��',1:'��'}" name="user.vip" listKey="key"
								listValue="value"  labelposition="left" ></s:radio></td>
												  <td>&nbsp;</td>
												  <td>&nbsp;</td>
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
							<input type="submit" name="Submit" value="�ύ" class="button"
								/>

							<input type="button" name="button" value="����" class="button"
								onclick="window.history.go(-1);" />
						</TD>
					</TR>
				</TABLE>


			
				

			</div>
			</s:form>
	</body>
</html>
