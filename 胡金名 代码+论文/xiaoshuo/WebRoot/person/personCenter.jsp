<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
    <title>��������</title>
 

  <style type="text/css">
       BODY{
          COLOR:#333;
          }
		TABLE{
			border:thin 1PX #CC0000;
			font-size:12px;
			border-bottom:#666 1px thin;
			
		}
  </style>
  </head>

  <body >
  <table width="891" border="0"align="center"  cellpadding="1" cellspacing="1" class="table1" >
    <tr style="background-color:#CC0000;">
      <td height="17" colspan="8" style="font-size:13px; color:#FFF"><b><s:property value="#request.user.username"/>�ĸ�������</b></td>
    </tr>

    <tr>
      <td width="43" height="28">
      </td>
      <td width="188"><h3><a href="book!myBook?userid=<s:property value="#request.user.id"/>" target="show">�ҵ��鼮</a></h3></td>
      <td width="177"><strong><a href="person/newBook.jsp" target="show">�������</a></strong></td>
      <td width="177"><strong><a href="bookmark" target="_blank">�ҵ���ǩ</a></strong></td>
      <td width="43">&nbsp;</td>
      <td width="43">&nbsp;</td>
      <td width="43">&nbsp;</td>
      <td width="148">&nbsp;</td>
    </tr>
    <tr>
      <td height="507" colspan="8"><iframe frameborder="0" height="507" width="891" scrolling="no" id="show" name="show" src="person/bookindex.jsp"></iframe></td>
    </tr>
    <tr>
      <td height="31" colspan="8" align="right" class="td_bg1"><br/><hr/></td>
    </tr>
  </table>
  </body>
</html>