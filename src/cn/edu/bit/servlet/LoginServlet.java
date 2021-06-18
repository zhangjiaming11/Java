package cn.edu.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.bit.business.Admin_Manager;

/**
 * 
 * @author liuyu 2007-7-21
 */
public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>�Ƿ�</title></head>");
		out.println("<body bgcolor=\"#ffffff\">");
		out.println("<p>������æ�����Ժ���4��</p>");
		out.println("</body></html>");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().invalidate();
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		boolean tag = Admin_Manager.CheckAdmin(username, password);
	/**
	 * 
	 */
		if (tag) {
			request.getSession().setAttribute("username", username);
			RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("guanli/login/success.jsp");
			requestDispatcher.forward(request, response);
		} else {
			request.getSession().setAttribute("error", "error");
			RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("guanli/login/failure.jsp");
			requestDispatcher.forward(request, response);
		}

	}

}
