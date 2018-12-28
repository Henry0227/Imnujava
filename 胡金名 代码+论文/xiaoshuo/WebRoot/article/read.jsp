<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.io.*"%>
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

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
#apDiv1 {
	position: absolute;
	width: 246px;
	height: 22px;
	z-index: 1;
	left: 238px;
	top: 394px;
}

#apDiv2 {
	position: absolute;
	width: 712px;
	height: 682px;
	z-index: 2;
	left: 32px;
	top: 19px;
}

#apDiv3 {
	position: absolute;
	width: 702px;
	height: 454px;
	z-index: 3;
	left: 1px;
}
        </style>
		<script type="text/javascript">
function init() {
	document.getElementById("td2").style.display = "none";
}
function change() {
	document.getElementById("td2").style.display = "";
}
</script>
	</head>

	<body onload="init()">
		<div id="apDiv2">
			<div id="apDiv3">
				<%
					String root = request.getRealPath(request.getParameter("url"));
					int bookid=Integer.parseInt(request.getParameter("bookid"));
					
					System.out.print(root);
					FileReader read = new FileReader(root);
					BufferedReader br = new BufferedReader(read);
					String temp;
					int j = 0;
					int k = 0;
					int nowpage;
					int allpage = 0;
					if (null != request.getAttribute("nowpage")
							&& !"".equals(request.getAttribute("nowpage"))) {
						String pages = String.valueOf(request.getAttribute("nowpage"));
						nowpage = Integer.parseInt(pages);
					} else {
					   if(null!=request.getParameter("nowpage")&&!"".equals(request.getParameter("nowpage"))){
					       nowpage=Integer.parseInt(request.getParameter("nowpage"));
					   }else{
					      nowpage = 1;
					   }
						
					}

					while ((temp = br.readLine()) != null) {
						j++;

						if (j > (nowpage - 1) * 20 && j <= nowpage * 20) {
							out.println(temp + "<br/>");

						}

					}

					allpage = j % 20 == 0 ? j / 20 : j / 20 + 1;
					System.out.print("总行数：" + allpage);
					br.close();
				%>
			</div>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
			<p>&nbsp;
				
		  </p>
		  <p>&nbsp;
				
		  </p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp; </p>
			<table width="706" border="0">
				<tr>
					<td width="324" height="11">
						<a
							href="Page.servlet?nowpage=1&mark=shou&url=<%=request.getParameter("url")%>&bookid=<%=request.getParameter("bookid")%>">首页</a>&nbsp;<a
							href="Page.servlet?nowpage=<%=nowpage%>&mark=shang&url=<%=request.getParameter("url")%>&bookid=<%=request.getParameter("bookid")%>">上一页</a>&nbsp;
						<a
							href="Page.servlet?nowpage=<%=nowpage%>&allpage=<%=allpage%>&mark=xia&url=<%=request.getParameter("url")%>&bookid=<%=request.getParameter("bookid")%>">下一页</a>&nbsp;<a
							href="Page.servlet?nowpage=<%=allpage%>&mark=mo&url=<%=request.getParameter("url")%>&bookid=<%=request.getParameter("bookid")%>">末页</a>&nbsp;当前<%=nowpage %>页
						<a href="discuss!findAllByBookId?bookid=<%=request.getParameter("bookid")%>">查看评论</a><input type="button" onclick="change()" value="加入书签"/>
					</td>
					<td width="372" id="td2">
					<s:form action="bookmark!addmark" theme="simple">
						<s:textfield name="bookmark.name" ></s:textfield>
						
						<input type="hidden" name="bookid" value="<%=bookid %>">
						<input type="hidden" name="bookmark.url" value="<%=request.getParameter("url") %>">
						<input type="hidden" name="bookmark.nowpage" value="<%=nowpage %>">
						<s:submit value="确定"></s:submit><input type="button" onclick="init()" value="取消"/>
					  </s:form>
					</td>
			  </tr>
				<tr>
				  <td height="155" colspan="2">
				   <s:form action="discuss!addOne" theme="simple">
				  <table width="699" height="135" border="1">
				    <tr>
				      <td width="42">标题：</td>
				      <input type="hidden" name="bookid" value="<%=bookid %>">
				      <td width="641"><s:textfield name="discuss.title"></s:textfield></td>
			        </tr>
				    <tr>
				      <td height="65">内容：</td>
				      <td><s:textarea name="discuss.content"></s:textarea></td>
			        </tr>
				    <tr>
				      <td><s:submit value="提交"></s:submit></td>
				      <td>&nbsp;</td>
			        </tr>
			      </table>
			      </s:form>
			      </td>
			  </tr>
		  </table>
	</div>
	</body>
</html>
