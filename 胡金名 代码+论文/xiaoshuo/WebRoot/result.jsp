<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<s:if test="tag==0">
    <%
	out.print("<script>history.go(-1);</script>");
%>
</s:if>
<s:elseif test="tag==1">
    <%
	out.print("<script>alert('ע���û��ɹ������¼��');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==3">
    <%
     request.getRequestDispatcher("index.jsp").forward(request,response);
%>
</s:elseif>
<s:elseif test="tag==4">
    <%
	out.print("<script>alert('��¼ʧ�ܣ������µ�¼��');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==5">
    <%
	out.print("<script>alert('ע��ԭ�����߳ɹ������������ҳ��');location.href='progenitor2!valiPerson';</script>");
%>
</s:elseif>

<s:elseif test="tag==6">
    <%
	out.print("<script>alert('���Ѿ�ע���Ϊԭ�����ߣ����������ҳ��');location.href='progenitor2!valiPerson';</script>");
%>
</s:elseif>
<s:elseif test="tag==7">
    <%
	out.print("<script>alert('��δ��½��');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==8">
    <%
	out.print("<script>alert('���۷���ɹ���');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==9">
    <%
	out.print("<script>alert('����δע��ԭ�����ߣ���ע�ᣡ');location.href='progenitor.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==10">
    <%
	out.print("<script>alert('�����ɹ���');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==11">
    <%
	out.print("<script>alert('ɾ���鼮�ɹ���');location.href='book!findAll?pageSize=10&pagaNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==12">
    <%
	out.print("<script>alert('ɾ�������ɹ���');location.href='discuss?condition=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==13">
    <%
	out.print("<script>alert('��ϲ������ΪVIP�û�,�����µ�¼��');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==14">
    <%
	out.print("<script>alert('ɾ���û��ɹ���');location.href='user!showAll?condition=null&type=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==15">
    <%
	out.print("<script>alert('�޸ĳɹ���');location.href='user!showAll?condition=null&type=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==16">
    <%
	out.print("<script>alert('����VIP�û���ѡ���ǣ����Ҹ���10Ԫ��');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==17">
    <%
	out.print("<script>alert('���û����Ѵ��ڣ���������д��Ϣ��');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==18">
    <%
	out.print("<script>alert('���������ͨ����');location.href='discuss?condition=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>


