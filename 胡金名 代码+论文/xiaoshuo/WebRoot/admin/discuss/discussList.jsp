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

		<title>My JSP 'discussList.jsp' starting page</title>

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
		<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="admin/js/xiangmu.js">
</script>
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
    document.getElementById("fom").action="sendxiaoxi.htm";
   document.getElementById("fom").submit();
}

function on_load(){
	var loadingmsg=document.getElementById("loadingmsg");
	var mainpage=document.getElementById("mainpage");
	loadingmsg.style.display="";
	mainpage.style.display="none";
	
	loadingmsg.style.display="none";
	mainpage.style.display="";
}
</SCRIPT>

	<body onload="on_load()">
		<form name="fom" id="fom" method="post" action="">
			<table id="mainpage" width="100%" border="0" cellspacing="0"
				cellpadding="0">

				<tr>
					<td height="30">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="62" background="../images/nav04.gif">&nbsp;</td>
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
													class="right-font08" onclick="selectAll();">ȫѡ</a>-<a
													href="#" class="right-font08" onclick="unselectAll();">��ѡ</a>
											</span></td>
										</tr>
										<tr>
											<td height="40" class="font42">
												<table width="100%" border="0" cellpadding="4"
													cellspacing="1" bgcolor="#464646" class="newfont03">
													<tr>
														<td height="20" colspan="16" align="center"
															bgcolor="#EEEEEE" class="tablestyle_title">
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															������Ϣ�б� &nbsp;
														</td>
													</tr>
													<tr>
														<td width="10%" align="center" bgcolor="#EEEEEE">
															ѡ��
														</td>
														<td width="7%" height="20" align="center"
															bgcolor="#EEEEEE">
															���
														</td>
														<td width="16%" align="center" bgcolor="#EEEEEE">
															����
														</td>
														<td width="10%" align="center" bgcolor="#EEEEEE">
															������
														</td>
														<td width="20%" align="center" bgcolor="#EEEEEE">
															�����鼮���
														</td>
														<td width="15%" align="center" bgcolor="#EEEEEE">
															����ʱ��
														</td>
														<td width="22%" align="center" bgcolor="#EEEEEE">
															����
														</td>
													</tr>
													<s:iterator value="discusslist" status="dl">
													<tr align="center">
														<td bgcolor="#FFFFFF">
															<input type="checkbox" name="delid" />
														</td>
														<td height="20" bgcolor="#FFFFFF">
															<s:property value="id"/>
														</td>
														<td height="20" bgcolor="#FFFFFF">
															<s:property value="title"/>
														</td>
														<td bgcolor="#FFFFFF">
															<s:property value="username"/>
														</td>
														<td bgcolor="#FFFFFF">
															<s:property value="bookname"/>
														</td>
														<td bgcolor="#FFFFFF">
															<s:property value="maketime"/>
														</td>
														<td bgcolor="#FFFFFF">
															<a href="discuss!deleteOne?discuss.id=<s:property value="id"/>">ɾ��</a>|
															<s:if test="iscross==0"><a href="discuss!findOne?discuss.id=<s:property value="id"/>">�鿴�����</a></s:if>
															<s:elseif test="iscross==1">�����ͨ��</s:elseif>
															
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
									<img src="../images/spacer.gif" width="1" height="1" />
								</td>
							</tr>
							<tr>
								<td height="33">
									<table width="100%" border="0" align="center" cellpadding="0"
										cellspacing="0" class="right-font08">
										<tr>
											<td width="50%">
												��
												<span class="right-text09"><s:property value="pageAll"/></span> ҳ | ��
												<span class="right-text09"><s:property value="pageNum"/></span> ҳ
											</td>
											<td width="49%" align="right">
												[
												<a href="discuss?condition=null&pageSize=10&pageNum=1" class="right-font08">��ҳ</a> |
												<a href="#" class="right-font08">��һҳ</a> |
												<a href="#" class="right-font08">��һҳ</a> |
												<a href="#" class="right-font08">ĩҳ</a>] ת����
											</td>
											<td width="1%">
												<table width="20" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td width="1%">
															<input name="textfield3" type="text"
																class="right-textfield03" size="1" />
														</td>
														<td width="87%">
															<input name="Submit23222" type="submit"
																class="right-button06" value=" " />
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

		<div id="loadingmsg"
			style="width: 100px; height: 18px; top: 0px; display: none;">
			<img src="file:///F|/��Ŀ�����������/��Ŀ����ϵͳҳ��/images/loadon.gif" />
		</div>

	</body>
</html>