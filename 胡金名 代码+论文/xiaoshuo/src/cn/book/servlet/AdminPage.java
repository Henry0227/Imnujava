package cn.book.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminPage extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String mark = request.getParameter("mark");
		String url = request.getParameter("url");
		int id=Integer.parseInt(request.getParameter("id"));
		int bookid=Integer.parseInt(request.getParameter("bookid"));

		int nowpage = Integer.parseInt(request.getParameter("nowpage"));
		if (mark.equals("shou")) {
			nowpage = 1;
		}
		if (mark.equals("xia")) {
			int allpage = Integer.parseInt(request.getParameter("allpage"));
			if (allpage == nowpage) {
				nowpage = allpage;
			} else {
				nowpage++;
			}

		}
		if (mark.equals("shang")) {
			nowpage--;
		}
		if (mark.equals("mo")) {
			nowpage = nowpage;
		}
		request.setAttribute("nowpage", nowpage);
		request.setAttribute("url", url);
		request.setAttribute("id", id);
		request.setAttribute("bookid",bookid);
		request.getRequestDispatcher("admin/book/read.jsp").forward(request,
				response);
	}

}
