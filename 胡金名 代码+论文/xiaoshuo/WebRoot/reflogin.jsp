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

</head>
<script type="text/javascript">
   function check(){
        var name=document.getElementById("name");
        var pass=document.getElementById("pass");
        var code=document.getElementById("code");
        if(name.value==""){
            alert("�û�������Ϊ�գ�");
            name.focus();
            return false;
        }
        if(pass.value==""){
            alert("���벻��Ϊ�գ�");
            pass.focus();
            return false;
        }
        if(code.value==""){
            alert("��������֤�룡");
            code.focus();
            return false;
        }
        return����true;
   }

</script>



<body >
	<s:form action="user!login" theme="simple">
    <table width="340" height="222" border="1">
			<tr id="tr1">
				<td width="330" height="83"><form action="">
				  <p>�û�����
				    <s:textfield name="user.username" id="name"></s:textfield>
				    <br>
				    <br />
				    �� �룺
				    <s:password name="user.password" id="pass"></s:password>
			      </p>
				  <p>��֤�룺<s:textfield name="code" id="code"></s:textfield></p>
				  <p><img src="image.jsp"/><br />
				    <br />
				    <s:submit value="��¼" onclick="return check()"></s:submit>
			      </p>
			    </form></td>
			</tr>
		
		</table>
</s:form>
		
</body>
</html>
