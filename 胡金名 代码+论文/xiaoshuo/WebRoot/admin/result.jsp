<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<s:if test="tag==0">
    <%
	out.print("<script>alert('验证码错误，请重新登录登录！');location.href='admin/login.jsp';</script>");
%>
</s:if>
<s:elseif test="tag==1">
    <%
	out.print("<script>alert('用户名或密码错误，请重新登录登录！');location.href='admin/login.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==2">
    <%
	out.print("<script>alert('删除成功！');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>

<s:elseif test="tag==3">
    <%
	out.print("<script>alert('保存成功！');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==4">
    <%
	out.print("<script>alert('管理员信息修改成功！');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==5">
    <%
	out.print("<script>alert('权限不够！');location.href='admin!findAll?pageSize=10&pageNum=1';</script>");
%>
</s:elseif>

