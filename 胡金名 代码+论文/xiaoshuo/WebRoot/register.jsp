<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	 <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	   function check(){
        var name=document.getElementById("name");
        var pass=document.getElementById("pass");
        var birth=document.getElementById("birth");
        var email=document.getElementById("email");
        if(name.value==""){
            alert("用户名不能为空！");
            name.focus();
            return false;
        }
        if(pass.value==""){
            alert("密码不能为空！");
            pass.focus();
            return false;
        }
        if(birth.value==""){
            alert("请选择出生年月！");
            birth.focus();
            return false;
        }
        
         if(email.value==""){
            alert("请输入邮箱地址！");
            email.focus();
            return false;
        }
        return true;
   }

</script>

  <sx:head />

  
  <body >
  <br>
  <s:form action="user!register" theme="simple">
  <table width="340" border="1">
    <tr>
      <td colspan="2" align="center">用户注册</td>
    </tr>
    <tr>
      <td width="143">用户名：</td>
      <td width="181"><s:textfield name="user.username" id="name"></s:textfield></td>
    </tr>
    <tr>
      <td>密 码：</td>
      <td><s:password name="user.password" id="pass"></s:password></td>
    </tr>
    <tr>
      <td>性别：</td>
      <td><s:radio list="#{0:'男',1:'女'}" name="user.sex" listKey="key"
								listValue="value" value="0" labelposition="left" ></s:radio></td>
    </tr>
    <tr>
      <td>出生年月：</td>
      <td><sx:datetimepicker staticDisplay="请输入日期" startDate="1960-00-01" name="user.birth"  displayFormat="yyyy-MM-dd"
								toggleType="fade" id="birth" ></sx:datetimepicker></td>
    </tr>
    <tr>
      <td>邮箱地址：</td>
      <td><s:textfield name="user.email" id="email"></s:textfield></td>
    </tr>
    <tr>
      <td width="143">成为VIP会员？：
      <s:radio list="#{0:'否',1:'是'}" name="vip" listKey="key"
								listValue="value" value="0" labelposition="left" ></s:radio></td>
      <td width="181">
      10元</td>
    </tr>
    <tr>
      <td colspan="2"><s:submit value="确定" onclick="return check()"/><s:reset value="重置"></s:reset></td>
    </tr>
  </table>
  </s:form>
</body>
</html>
