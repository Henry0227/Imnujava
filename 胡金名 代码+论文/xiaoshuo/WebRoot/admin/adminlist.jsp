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

		<title>����Ա�б�</title>

		 <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.tabfont01 {
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}

.font051 {
	font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}

.font201 {
	font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

.button {
	font-family: "����";
	font-size: 14px;
	height: 37px;
}

html {
	overflow-x: auto;
	overflow-y: auto;
	border: 0;
}
-->
</style>

		<link href="admin/css/css.css" rel="stylesheet" type="text/css" />
		<script type="text/JavaScript">

</script>
		<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="admin/addAdmin.jsp";
   document.getElementById("fom").submit();
}

</SCRIPT>

	<body>
		<form name="fom" id="fom" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">

				<tr>
					<td height="30">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="62" background="admin/images/nav04.gif">

									<table width="98%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="24">
												<img src="admin/images/ico07.gif" width="20" height="18" />
											</td>
											<td width="519"></input></td>
											<td width="679" align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table id="subtree1" style="DISPLAY: " width="100%" border="0"
							cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<table width="95%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="20">
												<span class="newfont07">ѡ��<a href="#"
													class="right-font08" onClick="selectAll();">ȫѡ</a>-<a
													href="#" class="right-font08" onClick="unselectAll();">��ѡ</a>
												</span>
												<input name="Submit" type="button" class="right-button08"
													value="ɾ����ѡ��Ա��Ϣ" />
												<input name="Submit" type="button" class="right-button08"
													value="��ӹ���Ա" onClick="link();" />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
										</tr>
										<tr>
											<td height="40" class="font42">
												<table width="100%" border="0" cellpadding="4"
													cellspacing="1" bgcolor="#464646" class="newfont03">

													<tr>
														<td height="20" colspan="12" align="center"
															bgcolor="#EEEEEE" class="tablestyle_title">
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����Ա��ϸ�б�
															&nbsp;
														</td>
													</tr>
													<tr>
														<td width="8%" align="center" bgcolor="#EEEEEE">
															ѡ��
														</td>
														<td width="12%" height="20" align="center"
															bgcolor="#EEEEEE">���</td>
														<td width="19%" align="center" bgcolor="#EEEEEE">
															�û���
														</td>
														<td width="29%" align="center" bgcolor="#EEEEEE">
															����
														</td>
														<td width="16%" align="center" bgcolor="#EEEEEE">
															��ϵ�绰
														</td>
														<td width="16%" align="center" bgcolor="#EEEEEE">
															����
														</td>
													</tr>
													<s:iterator value="adminlist" status="st">
													<tr>
														<td bgcolor="#FFFFFF"><input type="checkbox" name="delid" />
														</td>
														<td height="20" bgcolor="#FFFFFF">
															<s:property value="id"/>
														</td>
														<td align="center" bgcolor="#FFFFFF">
															<s:property value="name"/>
														</td>
														<td height="20" align="center" bgcolor="#FFFFFF">
															<s:property value="pass"/>
														</td>
														<td bgcolor="#FFFFFF">
															<s:property value="phone"/>
														</td>
														<td align="center" bgcolor="#FFFFFF"><a href="admin!findAdmin?admin.id=<s:property value="id"/>">�޸�</a>&nbsp;|&nbsp;
															<a href="admin!deleteAdmin?admin.id=<s:property value="id"/>">ɾ��</a>
														</td>
													</tr>
													</s:iterator>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<table width="95%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="6">
									<img src="admin/images/spacer.gif" width="1" height="1" />
								</td>
							</tr>
							<tr>
								<td height="33">
									<table width="100%" border="0" align="center" cellpadding="0"
										cellspacing="0" class="right-font08">
										<tr>
											<td width="50%">
												��
												<span class="right-text09"><s:property value="allpage"/></span> ҳ | ��
												<span class="right-text09"><s:property value="pageNum"/></span> ҳ
											</td>
											<td width="49%" align="right">
												[
												<a href="admin!findUp?pageSize=10&pageNum=1" class="right-font08">��ҳ</a> |
												<a href="admin!findUp?pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="pageNum"/>" class="right-font08">��һҳ</a> |
												<a href="admin!findDown?pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="pageNum"/>" class="right-font08">��һҳ</a> |
												<a href="admin!findAll?pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="allpage"/>" class="right-font08">ĩҳ</a>] 
											</td>
											<td width="1%">
												<table width="20" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td width="1%">
															
														</td>
														<td width="87%">
															
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
