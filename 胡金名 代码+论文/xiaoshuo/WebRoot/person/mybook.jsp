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
    
    <title>My JSP 'mybook.jsp' starting page</title>
    
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
  <s:if test="booklist.size()>0">
  
  <table width="831" height="155" border="1" align="center">
    <tr>
      <td width="85" height="31">�ҵ�ԭ���鼮</td>
      <td width="160">&nbsp;</td>
      <td width="95">&nbsp;</td>
      <td width="93">&nbsp;</td>
      <td width="364">&nbsp;</td>
    </tr>
    <tr>
      <td height="27">����</td>
      <td>ͼƬ</td>
      <td>���</td>
      <td>�ϴ�����</td>
      <td align="center">����</td>
    </tr>
    <s:iterator value="booklist" status="bl">
    <tr>
      <td height="87"><s:property value="title"/></td>
      <td><img src="<s:property value="picture"/>" width="100" height="86"></td>
      <td><s:property value="sayshow"/></td>
      <td><s:property value="maketime"/></td>
      <td align="center"><a href="article!beforeList?bookid=<s:property value="id"/>&pageSize=10&pageNum=1" >�鿴�½� | <a href="person/newArticle.jsp?bookid=<s:property value="id"/>">�ϴ����½�</a></a></td>
    </tr>
    </s:iterator>
  </table>
  
  </s:if>
  <s:else>
  ����ʱ��û��ԭ����Ʒ��<a href="person/newBook.jsp">��������Ʒ</a>
  </s:else>
  </body>
</html>
