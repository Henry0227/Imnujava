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
    
    <title>My JSP 'readAndCross.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
   <body>
   <table width="781" height="165" border="1">
     <tr>
       <td width="93" height="26">标题：</td><s:hidden name="discuss.id"></s:hidden>
       <td width="672"><s:property value="discuss.title"/></td>
     </tr>
     <tr>
       <td height="101">内容：</td>
       <td><s:property value="discuss.content"/></td>
     </tr>
     <tr>
       <td height="28">&nbsp;</td>
       <td> <a href="discuss!valiCross?discuss.id=<s:property value="discuss.id"/>">通过</a> <a onclick="javascript:history.go(-1);" href="javascript:void(0)">返回</a></td>
     </tr>
   </table>
  </body>
</html>
