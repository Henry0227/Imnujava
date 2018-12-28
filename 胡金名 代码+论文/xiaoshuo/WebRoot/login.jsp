<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

		 <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/basic.css" rel="stylesheet" type="text/css">

</head>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/dwr/engine.js'>
</script>
<script type='text/javascript'
		src='<%=request.getContextPath()%>/dwr/interface/LoginService.js'>
</script>
<script type='text/javascript'
		src='<%=request.getContextPath()%>/dwr/util.js'>
</script>
<script type="text/javascript">
function init(){
document.getElementById("tr2").style.display="none";
document.getElementById("tr3").style.display="none";
}

function login() {
	var name = document.getElementById("username").value;
	var pass = document.getElementById("password").value;
	
	LoginService.login(name, pass, back);

}

function back(user) {
   if(null!=user){
      document.getElementById("tr1").style.display="none";
      document.getElementById("tr2").style.display="";
      document.getElementById("show").innerHTML="欢迎"+user.username+"登录!"+" <br><br><br>  <a target='_blank' href=''>进入个人中心</a>";
   }else{
      document.getElementById("tr1").style.display="";
      document.getElementById("tr2").style.display="none";
      document.getElementById("tr3").style.display="";
      document.getElementById("error").innerHTML="登录失败，重新输入！";
   }

}

function valiLogin() {
	LoginService.valiLogin(0, back2);

}
function back2(user) {
   if(null!=user){
      document.getElementById("tr1").style.display="none";
      document.getElementById("tr3").style.display="none";
      document.getElementById("show").innerHTML="欢迎"+user.username+"登录!"+" <br><br><br>  <a target='_blank' href='progenitor!valiPerson'>进入个人中心</a>";
   }else{
      document.getElementById("tr1").style.display="";
      document.getElementById("tr2").style.display="none";
      document.getElementById("tr3").style.display="none";
   }

}
</script>

	<body onload="valiLogin()">
    <table width="250" height="156" border="1">
			<tr id="tr1">
				<td width="240" height="83"><form action="">
				  <p>用户名：
				    <input type="text" id="username">
				    <br>
				    <br />
				    密 码：
				    <input type="password" id="password">
				    <br />
				    <br />
				    <input type="button" onclick="login();" value="立即登录"> 
			      <a href="progenitor" target="_blank">注册成为原创作者</a></p>
			    </form></td>
			</tr>
			<tr id="tr3">
			  <td height="17" id="error" align="center"></td>
	  </tr>
			<tr id="tr2">
				<td height="45" align="center" id="show">
					
				</td>
			</tr>
		</table>
		
</body>
</html>
