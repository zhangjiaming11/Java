

package cn.edu.bit.business;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cn.edu.bit.DBQuery.DataProcess;
import cn.edu.bit.Object.Student;

/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class Student_Manager {
	
	public static void Add_Student(String name,int grade_id,String image,String sex)
	{
		String xingbie="";
		
		if(sex.equals("male"))
		{	
			xingbie="男";
		}
		else
		{
			xingbie="女";
		}
		

		
		String query = "insert into student(name,grade_id,image,sex) values('"+name+"',"+grade_id+",'"+image+"','"+xingbie+"')";
		
		try
		{
			DataProcess.ExeQuery(query);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param id
	 * @param name
	 * @param grade_id
	 * @param image
	 * @param sex
	 */
	public static void Edit_Student(int id,String name,int grade_id,String image,String sex)
	{
		String xingbie="";
		
		if(sex.equals("male"))
		{	
			xingbie="男";
		}
		else
		{
			xingbie="女";
		}
		
		System.out.println("suentmange name="+name);
		String query="update student set name='"+name+
					"',grade_id="+grade_id+",image='"+image+
					"',sex='"+xingbie+"' where id="+id;
		

		try
		{
			DataProcess.ExeQuery(query);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param id
	 */
	public static void Delete_Student(int id)
	{
		String query = "delete from student where id="+id;
		
		try
		{
			DataProcess.ExeQuery(query);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 
	 * @param ID
	 * @return
	 */
	public static Student getStudent(int ID)
	{
		String selectStr = "select * from student where id="+ID;
		
		Connection con = DataProcess.getConnection();
		
		Student stu = Student.getInstance();
		
		try{
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(selectStr);
			
			if(rs.next())
			{				
				String name = rs.getString("name");
				
				String sex = rs.getString("sex");
								
				String image = rs.getString("image");
				
				int grade_id = rs.getInt("grade_id");
				
				stu.setId(ID);
				
				stu.setName(name);
				
				stu.setSex(sex);
								
				stu.setImage(image);
				
				stu.setGrade_id(grade_id);
			}
			
			rs.close();
			
			stmt.close();
			
			con.close();
			
			return stu;
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			return null;
		}
	}

	/**
	 * 
	 * @return
	 */
	public static ArrayList getStudentList()
	{
		String query = "select * from student";
		
		Connection con = DataProcess.getConnection();
		
		ArrayList sl = new ArrayList();
		
		try{
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next())
			{				
				int ID = rs.getInt("id");
				
				String name = rs.getString("name");
				
				String sex = rs.getString("sex");
								
				String image = rs.getString("image");
				
				int grade_id = rs.getInt("grade_id");
				
				Student stu = Student.getInstance();
				
				stu.setId(ID);
				
				stu.setName(name);
				
				stu.setSex(sex);
								
				stu.setImage(image);
				
				stu.setGrade_id(grade_id);
				
				sl.add(stu);
			}
			
			rs.close();
			
			stmt.close();
			
			con.close();
			
			return sl;
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			return null;
		}
		
	}	
}
