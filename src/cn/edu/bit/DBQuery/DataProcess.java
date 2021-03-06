package cn.edu.bit.DBQuery;


import java.sql.*;

/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class DataProcess {
	
	DataProcess(){
		
	}
	
	/**
	 * 
	 * @return
	 */
	
	public static Connection getConnection()
	{
		String CLASSFORNAME="org.gjt.mm.mysql.Driver";		  

		String SERVANDDB = "jdbc:mysql://localhost:3306/lab?user=root&password=1280636684&useUnicode=true&characterEncoding=utf-8";
										
		
		Connection con;
		
		try
		{
			Class.forName(CLASSFORNAME);
			
			con = DriverManager.getConnection(SERVANDDB);
			
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			return null;
		}

	}
	
	
	/**
	 * 
	 * @param SQL
	 * @return
	 */
	public static int nCount(String SQL)
	{
		Connection myConnection = getConnection();
		

		int count = 0;
		
		try
		{
			Statement stm = myConnection.createStatement();
			
			ResultSet result = stm.executeQuery(SQL);
			
			if(result.next())
			{
				count = result.getInt(1);
				
				result.close();
			}
			
			stm.close();
			
			myConnection.close();
			
		}		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return count;
	}
	
/**
 * 
 * @param SQL
 */
	public static void ExeQuery(String SQL)
	{
		Connection con = getConnection();
		try
		{
			Statement stmt = con.createStatement();
			
			stmt.executeUpdate(SQL);
			
			stmt.close();
			
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 
	 * @param SQL
	 * @param con
	 * @return
	 */
	public static ResultSet getResult(String SQL,Connection con)
	{		
		ResultSet rs = null;
		
		try{
			Statement stmt = con.createStatement();
			
			rs = stmt.executeQuery(SQL);
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	/**
	 * 
	 * @param con
	 */
	public static void CloseConnection(Connection con)
	{
		try
		{
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param rs
	 */
	
	public static void CloseResultSet(ResultSet rs)
	{
		try
		{
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
