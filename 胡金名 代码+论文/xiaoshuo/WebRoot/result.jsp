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
	out.print("<script>alert('注册用户成功，请登录！');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==3">
    <%
     request.getRequestDispatcher("index.jsp").forward(request,response);
%>
</s:elseif>
<s:elseif test="tag==4">
    <%
	out.print("<script>alert('登录失败，请重新登录！');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==5">
    <%
	out.print("<script>alert('注册原创作者成功，进入个人主页！');location.href='progenitor2!valiPerson';</script>");
%>
</s:elseif>

<s:elseif test="tag==6">
    <%
	out.print("<script>alert('您已经注册成为原创作者，进入个人主页！');location.href='progenitor2!valiPerson';</script>");
%>
</s:elseif>
<s:elseif test="tag==7">
    <%
	out.print("<script>alert('尚未登陆！');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==8">
    <%
	out.print("<script>alert('评论发表成功！');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==9">
    <%
	out.print("<script>alert('您尚未注册原创作者，请注册！');location.href='progenitor.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==10">
    <%
	out.print("<script>alert('创建成功！');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==11">
    <%
	out.print("<script>alert('删除书籍成功！');location.href='book!findAll?pageSize=10&pagaNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==12">
    <%
	out.print("<script>alert('删除书评成功！');location.href='discuss?condition=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==13">
    <%
	out.print("<script>alert('恭喜您升级为VIP用户,请重新登录！');location.href='reflogin.jsp';</script>");
%>
</s:elseif>
<s:elseif test="tag==14">
    <%
	out.print("<script>alert('删除用户成功！');location.href='user!showAll?condition=null&type=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==15">
    <%
	out.print("<script>alert('修改成功！');location.href='user!showAll?condition=null&type=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>
<s:elseif test="tag==16">
    <%
	out.print("<script>alert('升级VIP用户需选择是，并且付费10元！');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==17">
    <%
	out.print("<script>alert('该用户名已存在，请重新填写信息！');history.go(-1);</script>");
%>
</s:elseif>
<s:elseif test="tag==18">
    <%
	out.print("<script>alert('该评论审核通过！');location.href='discuss?condition=null&pageSize=10&pageNum=1';</script>");
%>
</s:elseif>


