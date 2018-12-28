<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
		<html xmlns="http://www.w3.org/1999/xhtml">
			 <meta http-equiv="Content-Type" content="text/html; charset=GBK">
			<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
			<title>小说阅读</title>

			<link href="css/basic.css" rel="stylesheet" type="text/css">


			<style type="text/css">
.a {
	color: #000000;
	text-decoration: none;
}

.a hover {
	color: #FF0000;
	text-decoration: underline;
}

#Layer3 {
	position: absolute;
	width: 200px;
	height: 496px;
	z-index: 1;
	left: 5px;
	top: 5px;
}

#Layer1 {
	position: absolute;
	width: 183px;
	height: 115px;
	z-index: 2;
	left: 5px;
	top: 240px;
}

#Layer2 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 3;
	left: 457px;
	top: 70px;
}

</style>

<body>
		<div id="Layer3">
			<table width="201" class="leftT" style="border: #FF0000; color: #F00; font-weight: bold;" align="left"
				border="1">
				<tr>
					<td height="9" align="left"><table width="200" border="1">
					  <tr>
					    <td height="29">诗歌</td>
				      </tr>
				      <s:action name="book!typeShige" executeResult="false" namespace="/" ></s:action>
                      <s:iterator value="#request.bookShige" status="bl">
					  <tr>
					    <td height="43" align="center"><a  href="articleleft?bookname=<s:property value="title"/>&bookid=<s:property value="id"/>&pageSize=20&pageNum=1" target="right"><s:property value="title"/></a></td>
				      </tr>
				      </s:iterator>
				    </table>
				    <br><hr></td>
				</tr>
                
				<tr>
				  <td height="96" align="left"><s:property value="sayshow"/>
				    <table width="200" border="1">
				      <tr>
				        <td height="35">散文</td>
			          </tr>
			          <s:action name="book!typeSanwen" executeResult="false" namespace="/" ></s:action>
                      <s:iterator value="#request.bookSanwen" status="bl">
				      <tr>
				        <td height="39" align="center"><a  href="articleleft?bookname=<s:property value="title"/>&bookid=<s:property value="id"/>&pageSize=20&pageNum=1" target="right"><s:property value="title"/></a></td>
			          </tr>
			          </s:iterator>
		          </table>
			      <br><hr></td>
			  </tr>
				
					<tr>
					  <td height="28" align="left">
					    <table width="200" border="1">
					      <tr>
					        <td height="30">小说</td>
				          </tr>
				          <s:action name="book!typeXiaoshuo" executeResult="false" namespace="/" ></s:action>
                      <s:iterator value="#request.bookXiaoshuo" status="bl">
					      <tr>
					        <td align="center"><a  href="articleleft?bookname=<s:property value="title"/>&bookid=<s:property value="id"/>&pageSize=20&pageNum=1" target="right"><s:property value="title"/></a></td>
				          </tr>
				          </s:iterator>
				        </table>
					    <br><hr></td>
				    </tr>
					<tr>
						<td height="31">
					      <table width="200" border="1">
						      <tr>
						        <td height="29">戏剧</td>
					        </tr>
					        <s:action name="book!typeXiju" executeResult="false" namespace="/" ></s:action>
                      <s:iterator value="#request.bookXiju" status="bl">
						      <tr>
						        <td align="center"><a  href="articleleft?bookname=<s:property value="title"/>&bookid=<s:property value="id"/>&pageSize=20&pageNum=1" target="right"><s:property value="title"/></a></td>
					        </tr>
					        </s:iterator>
				        </table>
				        <br><hr></td>
					</tr>
					<tr>
					  <td height="31"><table width="200" border="1">
					    <tr>
					      <td height="28">				          其他</td>
				        </tr>
				        <s:action name="book!typeQita" executeResult="false" namespace="/" ></s:action>
                      <s:iterator value="#request.bookQita" status="bl">
					    <tr>
					      <td align="center"><a  href="articleleft?bookname=<s:property value="title"/>&bookid=<s:property value="id"/>&pageSize=20&pageNum=1" target="right"><s:property value="title"/></a></td>
				        </tr>
				        </s:iterator>
				      </table>
				      <br><hr></td>
				  </tr>
					<tr>
						<td>
						  
					  </td>
					</tr>
			
			</table>
	</div>

</body>
</html>
