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

		<title>文章列表</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<style type="text/css">
#apDiv1 {
	position: absolute;
	width: 564px;
	height: 729px;
	z-index: 1;
}

#apDiv2 {
	position: absolute;
	width: 200px;
	height: 32px;
	z-index: 1;
	left: 169px;
	top: 28px;
	text-align: center
}

#apDiv3 {
	position: absolute;
	width: 508px;
	height: 617px;
	z-index: 2;
	left: 27px;
	top: 82px;
}
</style>
	</head>

	<body>
		<br>
		<s:if test="articlelist.size()>0">
		<div id="apDiv1">
			<div id="apDiv2">
				<strong> <s:property value="book.title" />章节列表</strong>
			</div>
			<div id="apDiv3">
				<p>&nbsp;
					
				</p>
				<s:iterator value="articlelist" status="al">
				  <p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="article!valiUser?url=<s:property value="url"/>&bookid=<s:property value="bookid"/>&article.id=<s:property value="id"/>"
							target="_blank">第<s:property value="#al.count" />章：<s:property
								value="title" />
						</a>&nbsp;&nbsp; 
					<s:if test="vip==1">VIP</s:if> 
				    <a href="download?filename=<s:property value="url"/>">下载</a></p>
				</s:iterator>

			</div>
		</div>
		</s:if>
		<s:else>
		对不起，该书籍暂无章节！
		</s:else>
	</body>
</html>
