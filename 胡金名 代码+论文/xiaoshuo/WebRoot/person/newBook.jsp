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
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}

.font051 {
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}

.font201 {
	font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

.button {
	font-family: "宋体";
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


	<body>
		<s:form action="book!addBook" enctype="multipart/form-data" theme="simple">
			<table width="697" height="406" align="center" border="1">
				<tr>
					<td width="99" height="31">
						<strong>写新作品</strong>
					</td>
					<td colspan="2">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="18" align="right">
						作品名：
					</td>
					<td colspan="2">
						<s:textfield name="book.title"></s:textfield>
					</td>
				</tr>
				<tr>
					<td height="91" align="right">
						简介：
					</td>
					<td colspan="2">
						<s:textarea name="book.remark" cols="70" rows="5"></s:textarea>
					</td>
				</tr>
				<tr>
					<td height="26" align="right">
						标签：
					</td>
					<td colspan="2">
						<s:textfield name="book.sayshow"></s:textfield>
					</td>
				</tr>
				<tr>
					<td height="134" align="center">
						封面：
					</td>
					<td width="128">
						<img src="image/dfcover.gif">
					</td>
					<s:hidden name="book.picture" value="image/dfcover.gif"></s:hidden>
					<td width="448">
						选择：
						<s:file name="file"  cssStyle="width:160px;" width="36px"
								height="70px" />
					</td>
				</tr>
				<tr>
					<td height="25" align="right">
						分类：
					</td>
					<td colspan="2">
						    <s:action name="literature!findAll" executeResult="false" namespace="/"></s:action>
						    <select name="literatureid" size="1">
						    <s:iterator value="#request.lilist">
						     <option value="<s:property value="id"/>"><s:property value="literature"/></option>
						     </s:iterator>
						    </select>

					</td>
				</tr>
				<tr>
					<td height="31" align="right">
						出版社：
					</td>
					<td colspan="2">
						<s:textfield name="book.publisher"></s:textfield>
					</td>
				</tr>
				<tr>
					<td height="30">
						&nbsp;
					</td>
					<td colspan="2">
						<s:submit value="创建"></s:submit>
						<s:reset value="取消"></s:reset>
					</td>
				</tr>
			</table>
		</s:form>
	</body>
</html>
