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

		<title>�û��б�</title>

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
	<s:if test="userlist.size()>0">
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
								<td height="118">
									<table width="95%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
										</tr>
										<tr>
											<td height="97" class="font42">
												<table width="100%" border="0" cellpadding="4"
													cellspacing="1" bgcolor="#464646" class="newfont03">

													<tr>
														<td height="20" colspan="16" align="center"
															bgcolor="#EEEEEE" class="tablestyle_title">
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�û���Ϣ��ϸ�б�
															&nbsp;
														</td>
													</tr>
													<tr>
														<td width="3%" align="center" bgcolor="#EEEEEE">&nbsp;</td>
														<td width="4%" height="20" align="center"
															bgcolor="#EEEEEE">���</td>
														<td width="11%" align="center" bgcolor="#EEEEEE">
															�û���
														</td>
														<td width="11%" align="center" bgcolor="#EEEEEE">
															����
														</td>
														<td width="14%" align="center" bgcolor="#EEEEEE">
															����
														</td>
														<td width="7%" align="center" bgcolor="#EEEEEE">�Ա�</td>
														<td width="18%" align="center" bgcolor="#EEEEEE">��������</td>
														<td width="8%" align="center" bgcolor="#EEEEEE">VIP</td>
														<td width="8%" align="center" bgcolor="#EEEEEE">ԭ��</td>
														<td width="16%" align="center" bgcolor="#EEEEEE">
															����
														</td>
													</tr>
													<s:iterator value="userlist" status="st">
													<tr>
														<td bgcolor="#FFFFFF">&nbsp;</td>
														<td height="20" bgcolor="#FFFFFF">
															<s:property value="id"/>
														</td>
														<td align="center" bgcolor="#FFFFFF">
															<s:property value="username"/>
														</td>
														<td height="20" align="center" bgcolor="#FFFFFF">
															<s:property value="password"/>
														</td>
														<td bgcolor="#FFFFFF">
															<s:property value="email"/>
														</td>
														<td bgcolor="#FFFFFF"><s:property value="sex==0?'��':'Ů'"/></td>
														<td bgcolor="#FFFFFF"><s:property value="birth"/></td>
														<td bgcolor="#FFFFFF"><s:property value="vip==0?'��':'��'"/></td>
														<td bgcolor="#FFFFFF"><s:property value="progenitor==0?'��':'��'"/></td>
														<td align="center" bgcolor="#FFFFFF"><a href="user!findOne?user.id=<s:property value="id"/>">�޸�</a>&nbsp;|&nbsp;
															<input type="button" onclick="javascript:if(confirm('���ִ��ɾ�������û�����ǩ����������ۣ�ԭ�����ߵ�����Լ������鼮����ɾ������<br>�Ƿ�ȷ��ִ�У�')){location.href='user!deleteOne?user.id=<s:property value="id"/>';}" value="ɾ��"/>
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
												<a href="user!showAll?condition=<s:property value="condition"/>&type=<s:property value="type"/>&pageSize=<s:property value="pageSize"/>&pageNum=1" class="right-font08">��ҳ</a> |
												<a href="user!showAll?condition=<s:property value="condition"/>&type=<s:property value="type"/>&pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="pageNum"/>" class="right-font08">��һҳ</a> |

												<a href="user!showAll?condition=<s:property value="condition"/>&type=<s:property value="type"/>&pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="pageNum"/>" class="right-font08">��һҳ</a> |
												<a href="user!showAll?condition=<s:property value="condition"/>&type=<s:property value="type"/>&pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="allpage"/>" class="right-font08">ĩҳ</a>] 
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
		</s:if>
		<s:else>û����Ҫ�ҵ��û���</s:else>
	</body>
</html>
