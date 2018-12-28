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

		<title>后台管理</title>

		 <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

	</head>
	<s:if test="%{#session.ADMIN==null}">
	   <%
	out.print("<script>alert('请登录！');location.href='login.jsp';</script>");
%>
	</s:if>

	<frameset rows="59,*" cols="*" frameborder="no" border="0"
		framespacing="0">
		<frame src="/xiaoshuo/admin/files/top.html" name="topFrame" scrolling="No"
			noresize="noresize" id="topFrame" title="topFrame" />
		<frameset cols="213,*" frameborder="no" border="0" framespacing="0">
			<frame src="admin/left.jsp" name="leftFrame" scrolling="No"
				noresize="noresize" id="leftFrame" title="leftFrame" />
			<frame src="/xiaoshuo/admin/files/mainfra.html" name="mainFrame" id="mainFrame"
				title="mainFrame" />
		</frameset>
	</frameset>
	<noframes>
		<body>
		</body>
	</noframes>
</html>
