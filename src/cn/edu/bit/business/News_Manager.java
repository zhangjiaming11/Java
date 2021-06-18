package cn.edu.bit.business;

import java.util.GregorianCalendar;

import cn.edu.bit.DBQuery.DataProcess;

/**
 * 
 * @author liuyu 2007-7-21
 */
public class News_Manager {

	/**
	 * 
	 * @param title
	 * @param content
	 */
	public static void Add_News(String title, String content) {
		GregorianCalendar gc = new GregorianCalendar();

		// try
		// {
		// title=new String(title.getBytes("ISO8859_1"));
		//		
		// content=new String(content.getBytes("ISO8859_1"));
		// }
		// catch(Exception e)
		// {
		// e.printStackTrace();
		// }
		//		

		String query = "insert into news(title,content,datetime)values('"
				+ title + "','" + content + "','"
				+ gc.getTime().toLocaleString() + "')";

		try {
			DataProcess.ExeQuery(query);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 
	 * @param title
	 * @param content
	 * @param id
	 */
	public static void Edit_News(String title, String content, int id) {
		GregorianCalendar gc = new GregorianCalendar();

		// try
		// {
		// title=new String(title.getBytes("ISO8859_1"));
		//		
		// content=new String(content.getBytes("ISO8859_1"));
		// }
		// catch(Exception e)
		// {
		// e.printStackTrace();
		// }

		String query = "update news set title='" + title + "',content='"
				+ content + "',datetime='" + gc.getTime().toLocaleString()
				+ "' where id=" + id;

		try {
			DataProcess.ExeQuery(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 
	 * @param id
	 */

	public static void Delete_News(int id) {
		String deleteStr = "delete from news where id=" + id;

		try {
			DataProcess.ExeQuery(deleteStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
