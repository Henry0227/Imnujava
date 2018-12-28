<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'discuss.jsp' starting page</title>
    
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
  <s:iterator value="discusslist" status="st">
  <table width="824" align="center" height="138" border="1">
    <tr>
      <td width="98" height="29"><s:property value="username"/>说：</td>
      <td width="710"><s:property value="title"/></td>
    </tr>
    <tr>
      <td height="76">内容：</td>
      <td><s:property value="content"/></td>
    </tr>
    <tr>
      <td>发表时间：</td>
      <td><s:property value="maketime"/></td>
    </tr>
  </table>
  </s:iterator>
  </body>
</html>
