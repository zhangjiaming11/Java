

package cn.edu.bit.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.bit.business.Student_Manager;



/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class EditStudentServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		HttpSession ses = request.getSession();
		
		String id = (String)request.getParameter("student_id");
		
		int ID = Integer.parseInt(id);
		
		String name = (String)request.getParameter("name");
	  System.out.println("name==="+name);
		
		String sex = (String)request.getParameter("radiobutton");
		
		String image = (String)request.getParameter("image");
		
		String grade = (String)request.getParameter("grade");
		
		int grade_id = Integer.parseInt(grade);
		
		Student_Manager.Edit_Student(ID,name,grade_id,image,sex);
		
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("guanli/student/edit_success1.jsp");
		
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
