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

		<title>My JSP 'bookList.jsp' starting page</title>

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


	</head>
	<%
	    int bookid=Integer.parseInt(request.getParameter("bookid"));
	 %>


<body>
		<s:form action="article!addArticle" enctype="multipart/form-data" theme="simple">
			<table width="697" height="215" align="center" border="1">
				<tr>
					<td width="99" height="31">
						<strong>�ϴ����½�</strong>
					</td>
					<td width="576">&nbsp;
						
						<input type="hidden" name="bookid" value="<%=bookid %>">
					</td>
				</tr>
				<tr>
					<td height="18" align="right">
						�½�����
					</td>
					<td>
						<s:textfield name="article.title"></s:textfield>
					</td>
				</tr>
				<tr>
					<td height="91" align="right">
						���ݼ�飺
					</td>
					<td>
						<s:textarea name="article.content" cols="70" rows="5"></s:textarea>
					</td>
				</tr>
				<tr>
					<td height="31" align="right">
						ѡ���ļ���
					</td>
					<td>
						<s:file name="file"></s:file>
					</td>
				</tr>
				<tr>
					<td height="30">&nbsp;
						
					</td>
					<td>
						<s:submit value="����"></s:submit>
						<s:reset value="ȡ��"></s:reset>
					</td>
				</tr>
			</table>
	</s:form>
</body>
</html>
