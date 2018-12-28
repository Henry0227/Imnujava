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

		<title>My JSP 'bookmark.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<br>
		<s:if test="marklist.size()>0">
		
		<table width="572" border="1">
			<tr>
				<td width="167">
					我的书签
				</td>
				<td width="389">&nbsp;
					
				</td>
			</tr>
			<s:iterator value="marklist" id="ml">

				<tr>
					<td>
						<A target="_blank"
							href="article/read.jsp?bookid=${ml.book.id }&url=<s:property value="url"/>&nowpage=<s:property value="nowpage"/>"><s:property
								value="name" />
						</A>
					</td>
					<td><a href="bookmark!deleteOne?bookmark.id=<s:property value="id"/>">删除
						
					</a></td>
				</tr>
			</s:iterator>
			<tr>
				<td>&nbsp;
					
				</td>
				<td>&nbsp;
					
				</td>
			</tr>
		</table>
		</s:if>
		<s:else>您暂时无书签！！！
		</s:else>
	</body>
</html>
