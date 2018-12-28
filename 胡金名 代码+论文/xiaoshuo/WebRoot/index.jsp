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
	<base href="<%=basePath%>">

	<meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">

	<title>基于J2EE的小说阅读平台</title>

	<link href="css/basic.css" rel="stylesheet" type="text/css">
	<style type="text/css">
body {
	top: 0px;
	text-align: center;
	color: #333;
	font-family: arial, verdana, sans-serif;
}

#header {
	width: 1000px;
	margin-right: auto;
	margin-left: auto;
	padding: 0px;
	height: 210px;
	text-align: left;
}

#contain {
	margin-right: auto;
	margin-left: auto;
	width: 1000px;
}

#mainbg {
	width: 1000px;
	padding: 0px;
	background: #60A179;
	float: left;
}

#right {
	float: right;
	margin: 2px 0px 2px 0px;
	padding: 0px;
	width: 778px;
	background: #ccd2de;
	text-align: left;
}

#left {
	float: left;
	margin: 2px 2px 0px 0px;
	padding: 0px;
	background: #F2F3F7;
	width: 205px;
	text-align: left;
}

#footer {
	clear: both;
	width: 1000px;
	margin-right: auto;
	margin-left: auto;
	padding: 0px;
	background: #EEE;
	height: 60px;
}

.text {
	margin: 0px;
	padding: 20px;
}

.STYLE1 {
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}

.a {
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration: none;
}

<!--
#Layer1 {
	position: absolute;
	width: 253px;
	height: 865px;
	z-index: 1;
	left: 3px;
	top: 246px;
}

#Layer2 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 1;
}

#Layer3 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 1;
	left: -6px;
	top: 226px;
}

#Layer4 {
	position: absolute;
	width: 200px;
	height: 349px;
	z-index: 1;
	left: 6px;
	top: 1px;
}

#Layer5 {
	position: absolute;
	width: 685px;
	height: 449px;
	z-index: 2;
	left: 228px;
	top: 0px;
}

#Layer6 {
	position: absolute;
	width: 200px;
	height: 101px;
	z-index: 2;
	left: -221px;
	top: 601px;
}

#Layer7 {
	position: absolute;
	width: 94px;
	height: 115px;
	z-index: 2;
	left: -2px;
	top: -427px;
}

.a {
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration: none;
}

.a:hover {
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration: none;
}

.STYLE1 {
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>

	<script>
<!--
	搜索文本框的事件-- > function mousedown() {
		var key = document.getElementById("key");
		if (key.value == "想找什么?输入书籍名称试试") {
			key.value = "";

		}
	}
</script>




	<body onLoad="init()">
		<div id="header">
			<table width="1000" height="41" border="1">
				<tr>
					<td width="416" rowspan="2" align="right">
						<font size="+3" color="#CC0000">基于J2EE的小说阅读平台</font>
					</td>
					<td width="98">
						<s:if test="%{#session.USER!=null}">
							<a href="bookmark" target="_blank"><s:property
									value="%{#session.USER.username}" />的书签</a>
						</s:if>
					</td>
					<td width="162">
						<s:if test="%{#session.USER!=null}">
							<a href="progenitor2!valiPerson" target="_blank">进入<s:property
									value="%{#session.USER.username}" />的个人中心</a>
						</s:if>
					</td>
					<td width="162" height="35">
						<s:if test="%{#session.USER!=null}">
							<s:if test="%{#session.USER.vip==0}">
								<a href="progenitor2" target="_blank">您可以注册成为原创作者</a>
							</s:if>
							<s:else></s:else>
						</s:if>
						<s:else>
							<a href="progenitor2" target="_blank">注册成为原创作者</a>
						</s:else>



					</td>
					<td width="54">
						<a href="register.jsp" target="_blank">免费注册</a>
					</td>
					
					<td width="54">
					<s:if test="%{#session.USER!=null}"><a href="user!exit">安全退出</a></s:if>
					<s:else><a href="reflogin.jsp">登录</a></s:else>
						
					</td>
					<td width="8">
						&nbsp;
					</td>
				</tr>

			</table>
			<table class="a" style="text-align: center"
				background="image/indexbg.jpg" width="1000" height="36" border="0">
				<tr>
					<td width="62" height="32">
						<a href="index.jsp" class="a"><span class="STYLE1">本站首页</span>
						</a>
					</td>
					<td width="93" onMouseOver="changebg(this)"
						onMouseOut="changebg2(this)">
						<a href="book!showVipBook?pageSize=4&pageNum=1" target="_blank" class="a"><span
							class="STYLE1">VIP专区</span>
						</a>
					</td>
					<td width="89" onmouseover="changebg(this)"
						onMouseOut="changebg2(this)">
						<a href="book!showProBook?pageSize=4&pageNum=1" target="_blank" class="a"><span
							class="STYLE1">作者专区</span>
						</a>
					</td>
					<td width="91" onMouseOver="changebg(this)"
						onMouseOut="changebg2(this)">
						<a href="#" class="a" onClick="openChat()"><span
							class="STYLE1">网站介绍</span>
						</a>
					</td>
					<td width="80" onMouseOver="changebg(this)"
						onMouseOut="changebg2(this)">
						<a href="#" target="_blank" class="a"><span
							class="STYLE1">帮助</span>
						</a>
					</td>
					<td width="81" onMouseOver="changebg(this)"
						onMouseOut="changebg2(this)">
						<a href="admin!test" target="_blank" class="a"><span
							class="STYLE1">后台管理</span>
						</a>
					</td>
					<td width="83" onmouseover="changebg(this)"
						onMouseOut="changebg2(this)" align="center"></td>
					<td width="387" align="left">
						&nbsp;
					</td>
				</tr>
			</table>

			<table width="996" height="135" border="1">
				<s:form theme="simple" name="search" action="book!beforSearch"
					target="right">
					<tr>
						<td width="67" height="129" align="right">
							<img src="image/search_03.gif" width="11" height="11" />
						</td>
						<td width="86">
							热门书籍搜索：
						</td>
						<td width="172">
							<s:textfield name="condition" style="border:thin #CCCCCC 1px"
								id="key" onClick="mousedown();" value="想找什么?输入书籍名称试试"></s:textfield>
						</td>
						<td width="334" align="left">
							<img src="image/sousuo.png"
								onClick="javascript:document.search.submit();" width="57"
								height="19" />
							<br>
						</td>
						<td width="15">
							&nbsp;
						</td>
						<td width="52">
							&nbsp;
						</td>
						<td width="224">
						<s:if test="%{#session.USER!=null}">欢迎<s:property value="%{#session.USER.username}"/>登录！</s:if>
                        <s:else>
							<iframe frameborder="0" height="130" width="223" scrolling="no"
								id="login" name="login" src="login.jsp"></iframe>
								</s:else>
						</td>
					</tr>
				</s:form>

			</table>

		</div>
		<div id="contain">
			<div id="mainbg">
				<div id="right">
					<iframe frameborder="0" height="600" width="778" scrolling="no"
						name="right" src="book/showBookList.jsp"></iframe>

				</div>
				<div id="left">
					<iframe frameborder="0" height="600" width="220" scrolling="no"
						name="left" src="left.jsp"></iframe>

				</div>
			</div>
		</div>
		<div id="footer">
			<iframe name="bottom" width="1000" height="120" scrolling="no"
				src="bottom.jsp" frameborder="0"></iframe>
		</div>
	</body>
</html>
