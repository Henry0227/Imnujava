<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<s:if test="tag==0">
    <%
	out.print("<script>alert('��֤����������µ�¼��¼��');location.href='admin/login.jsp';</script>");
%>
</s:if>
<s:elseif test="tag==1">
    <%
	out.print("<script>alert('�û�����������������µ�¼��¼��');location.href='admin/login.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==2">
    <%
	out.print("<script>alert('ɾ���ɹ���');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>

<s:elseif test="tag==3">
    <%
	out.print("<script>alert('����ɹ���');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==4">
    <%
	out.print("<script>alert('����Ա��Ϣ�޸ĳɹ���');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==5">
    <%
	out.print("<script>alert('Ȩ�޲�����');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>

