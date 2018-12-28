<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<script type="text/javascript">
   function check(){
        var name=document.getElementById("name");
        var pass=document.getElementById("pass");
        var code=document.getElementById("code");
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
        if(code.value==""){
            alert("请输入验证码！");
            code.focus();
            return false;
        }
        return　　true;
   }

</script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>登录</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
		<link href="admin/css/css.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<s:form action="adminLogin" theme="simple">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="147" background="/book2/admin/images/top02.gif">
						<img src="/xiaoshuo/admin/images/top03.gif" width="776" height="147" />
					</td>
				</tr>
			</table>
			<table width="562" border="0" align="center" cellpadding="0"
				cellspacing="0" class="right-table03">
				<tr>
					<td width="221">
						<table width="95%" border="0" cellpadding="0" cellspacing="0"
							class="login-text01">

							<tr>
								<td>
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="login-text01">
										<tr>
											<td align="center">
												<img src="/xiaoshuo/admin/images/ico13.gif" width="107"
													height="97" />
											</td>
										</tr>
										<tr>
											<td height="40" align="center">
												&nbsp;
											</td>
										</tr>

									</table>
								</td>
								<td>
									<img src="/xiaoshuo/admin/images/line01.gif" width="5"
										height="292" />
								</td>
							</tr>
						</table>
					</td>
					<td>

						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="31%" height="35" class="login-text02">
									用户名称：
									<br />
								</td>
								<td width="69%">
									<s:textfield name="admin.name" id="name"/>
								</td>
							</tr>
							<tr>
								<td height="35" class="login-text02">
									密 码：
									<br />
								</td>
								<td>
									<s:password name="admin.pass" id="pass"/>
								</td>
							</tr>
							<tr>
								<td height="35" class="login-text02">
									验证图片：
									<br />
								</td>
								<td>
									<img src="image.jsp" width="80"  height="25" />
									
								</td>
							</tr>
							<tr>
								<td height="35" class="login-text02">
									请输入验证码：
								</td>
								<td>
									<s:textfield name="code" size="9" id="code"/>
								</td>
							</tr>
							<tr>
								<td height="35">
									&nbsp;
								</td>
								<td>
									<s:submit value="确认登录" onclick="return check()"></s:submit>
									<s:reset value="重置"></s:reset>
								</td>
							</tr>
						</table>

					</td>
				</tr>
			</table>
		</s:form>
	</body>
</html>
