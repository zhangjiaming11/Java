

package cn.edu.bit.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.bit.business.Project_Manager;

/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class AddProjectServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		HttpSession ses = request.getSession();
		
		String name = (String)request.getParameter("name");
		
		String info = (String)request.getParameter("info");
		
		String time = (String)request.getParameter("time");
		
		Project_Manager.Add_Project(name,info,time);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("guanli/project/add_success1.jsp");
		
		requestDispatcher.forward(request,response);
	}
	
	public void doPost(
			HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException
		{
			doGet(request,response);
		}

}
