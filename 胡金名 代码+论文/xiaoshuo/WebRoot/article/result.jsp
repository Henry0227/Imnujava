<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<s:if test="tag==0">
    <%
	out.print("<script>alert('��ǩ����ɹ���');history.go(-1);</script>");
%>
</s:if>
<s:elseif test="tag==1">
    <%
	out.print("<script>alert('���ȵ�¼��');location.href='reflogin.jsp';</script>");
%>

</s:elseif>
<s:elseif test="tag==2">
    <%
	out.print("<script>alert('ɾ���ɹ���');location.href='bookmark';</script>");
%>

</s:elseif>
<s:elseif test="tag==3">
    <%
	out.print("<script>if(confirm('ֻ������ΪVIP���ܹۿ�����Դ��������')){location.href='vipregister.jsp';}else{windows.close();history.go(-1);}</script>");
%>

</s:elseif>
<s:elseif test="tag==4">
    <%
	out.print("<script>alert('��ӳɹ�����ȴ�����Ա��ˣ�');history.go(-1);</script>");
%>

</s:elseif>
