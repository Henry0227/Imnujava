<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<s:if test="tag==0">
    <%
	out.print("<script>alert('书签加入成功！');history.go(-1);</script>");
%>
</s:if>
<s:elseif test="tag==1">
    <%
	out.print("<script>alert('请先登录！');location.href='reflogin.jsp';</script>");
%>

</s:elseif>
<s:elseif test="tag==2">
    <%
	out.print("<script>alert('删除成功！');location.href='bookmark';</script>");
%>

</s:elseif>
<s:elseif test="tag==3">
    <%
	out.print("<script>if(confirm('只有升级为VIP才能观看改资源，升级？')){location.href='vipregister.jsp';}else{windows.close();history.go(-1);}</script>");
%>

</s:elseif>
<s:elseif test="tag==4">
    <%
	out.print("<script>alert('添加成功，需等待管理员审核！');history.go(-1);</script>");
%>

</s:elseif>
