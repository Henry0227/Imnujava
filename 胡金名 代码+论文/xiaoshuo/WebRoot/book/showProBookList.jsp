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
    <title>My JSP 'showProductList.jsp.jsp' starting page</title>
 

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
  <s:if test="booklist.size()<0">
  �Բ�����ʱû��ԭ���鼮������
  </s:if>
  <s:else>
  <table width="777" border="0"align="left"  cellpadding="1" cellspacing="1" class="table1" >
    <tr style="background-color:#CC0000;">
      <td width="769" height="17" style="font-size:13px; color:#FFF"><b>�鼮�б�</b></td>
    </tr>

    <tr>
      <td height="496">
      <s:iterator value="booklist" status="bl">
      <table width="356" height="260" border="0" class="td_bg1" align="left">
        <tr>
          <td height="28" colspan="2"><s:property value="sayshow"/> &nbsp;:&nbsp;<s:property value="title"/></td>
          </tr>
        <tr>
          <td width="143" height="223"><a href="articleleft?bookname=<s:property value="title"/>&bookid=<s:property value="id"/>&pageSize=20&pageNum=1" target="_blank"><img src="<s:property value="picture"/>" width="143" height="200" border="0"></a></td>
          <td width="199"><table width="204" height="204" border="0" class="table2_1"cellspacing="1" cellpadding="1">
            <tr>
              <td width="47" height="26" align="center" class="td_br1">���ߣ�</td>
              <td width="146" class="td_bg1"><s:property value="author"/></td>
            </tr>
            <tr>
              <td height="27" align="center" class="td_br1">���ͣ�</td>
              <td class="td_bg1"><s:property value="type"/></td>
            </tr>
            <tr>
              <td height="27" align="center" class="td_br1">���棺</td>
              <td class="td_bg1"><s:property value="publisher"/></td>
            </tr>
            <tr>
              <td height="116" colspan="2" align="center" class="td_br1"><s:property value="remark"/>
                [<a href="articleleft?bookname=<s:property value="title"/>&bookid=<s:property value="id"/>&pageSize=20&pageNum=1" target="_blank">�Ķ�</a>]</td>
            </tr>
          </table>
            <hr></td>
        </tr>
      </table>
       <s:if test="#bl.count%2==0"><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></s:if>
      </s:iterator>
      </td>
    </tr>
    <tr>
      <td height="31" align="right" class="td_bg1"><a  href="book!findProUp2?pageSize=4&pageNum=1">��һҳ</a>&nbsp;|&nbsp;<a  href="book!findProDown2?pageSize=4&pageNum=1">��һҳ</a><br/><hr/></td>
    </tr>
  </table>
  </s:else>
  </body>
</html>