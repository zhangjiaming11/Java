
package cn.edu.bit.business;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cn.edu.bit.DBQuery.DataProcess;
import cn.edu.bit.Object.Grade;


/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class Grade_Manager {
	
	public static Grade getGrade(int ID)
	{
		String query = "select * from grade where id="+ID;
//		System.out.println(query);
		Connection con = DataProcess.getConnection();
		
		Grade grade = Grade.getInstance();
		
		try{
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next())
			{				
				String name = rs.getString("grade");
				
				grade.setId(ID);
				
				grade.setName(name);
			}
			
			rs.close();
			
			stmt.close();
			
			con.close();
			
			return grade;
		
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
	
	public static ArrayList getGradeList()
	{
		String query = "select * from grade";
		
		Connection con = DataProcess.getConnection();
		
		ArrayList gl = new ArrayList();
		
		try{
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next())
			{				
				int ID = rs.getInt("id");
				
				String name = rs.getString("grade");
				
				Grade grade = Grade.getInstance();
				
				grade.setId(ID);
				
				grade.setName(name);
				
				gl.add(grade);
			}
			
			rs.close();
			
			stmt.close();
			
			con.close();
			
			return gl;
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			return null;
		}
		
	}	

}
