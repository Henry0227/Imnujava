<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>升级为VIP用户！</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  
  <body >
  <br>
  <s:form action="user!devVip" theme="simple">
  <table width="340" border="1">
    <tr>
      <td colspan="2" align="center">升级VIP用户</td>
    </tr>
    <tr>
      <td colspan="2">付费<s:hidden name="user.id" value="%{#session.USER.id}"></s:hidden></td>
    </tr>
    <tr>
      <td width="143">成为VIP会员？：
      <s:radio list="#{0:'否',1:'是'}" name="vip" listKey="key"
								listValue="value" value="1" labelposition="left" ></s:radio></td>
      <td width="181">
      10元</td>
    </tr>
    <tr>
      <td colspan="2"><s:submit value="确定"/></td>
    </tr>
  </table>
  </s:form>
</body>
</html>
