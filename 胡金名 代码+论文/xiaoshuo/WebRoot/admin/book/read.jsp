<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
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
	</head>

	<body>
		<h3>
			<%
				String root = request.getRealPath(request.getParameter("url"));
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
					nowpage = 1;
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
			<a
				href="AdminPage.servlet?nowpage=1&mark=shou&url=<%=request.getParameter("url")%>&id=<%=Integer.parseInt(request.getParameter("id"))%>&bookid=<%=Integer.parseInt(request.getParameter("bookid"))%>">首页</a><a
				href="AdminPage.servlet?nowpage=<%=nowpage%>&mark=shang&url=<%=request.getParameter("url")%>&id=<%=Integer.parseInt(request.getParameter("id")) %>&bookid=<%=Integer.parseInt(request.getParameter("bookid")) %>">上一页</a>
			<a
				href="AdminPage.servlet?nowpage=<%=nowpage%>&allpage=<%=allpage%>&mark=xia&url=<%=request.getParameter("url")%>&id=<%=Integer.parseInt(request.getParameter("id")) %>&bookid=<%=Integer.parseInt(request.getParameter("bookid")) %>">下一页</a><a
				href="AdminPage.servlet?nowpage=<%=allpage%>&mark=mo&url=<%=request.getParameter("url")%>&id=<%=Integer.parseInt(request.getParameter("id")) %>&bookid=<%=Integer.parseInt(request.getParameter("bookid")) %>">末页</a>

			审核结果：
			<a
				href="article!cross?article.id=<%=Integer.parseInt(request.getParameter("id"))%>&bookid=<%=Integer.parseInt(request.getParameter("bookid"))%>">通过</a>
			<a
				href="article!findAllByBookId?bookid=<%=Integer.parseInt(request.getParameter("bookid"))%>&pageSize=10&pageNum=1">返回</a>
		</h3>
	</body>
</html>
