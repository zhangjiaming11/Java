
package cn.edu.bit.business;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cn.edu.bit.DBQuery.DataProcess;
import cn.edu.bit.Object.Teacher;

/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class Teacher_Manager {

	/**
	 * 
	 * @param name
	 * @param sex
	 * @param zhicheng
	 * @param image
	 * @param info
	 */
	public static void Add_Teacher(String name, String sex, String zhicheng,
			String image, String info) {
		String xingbie = "";

		if (sex.equals("male")) {
			xingbie = "男";
		} else {
			xingbie = "女";
		}


		String query = "insert into teacher(name,sex,zhicheng,image,info)values('"
				+ name
				+ "','"
				+ xingbie
				+ "','"
				+ zhicheng
				+ "','"
				+ image
				+ "','" + info + "')";

		try {
			DataProcess.ExeQuery(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param name
	 * @param sex
	 * @param zhicheng
	 * @param image
	 * @param info
	 * @param id
	 */

	public static void Edit_Teacher(String name, String sex, String zhicheng,
			String image, String info, int id) {

		String xingbie = "";

		if (sex.equals("male")) {
			xingbie = "男";
		} else {
			xingbie = "女";
		}

		System.out.println("[name=" + name + ",zhicheng=" + zhicheng
				+ ",xingbie=" + xingbie + ",info=" + info + "]");
		String query = "update teacher set name='" + name + "',sex='" + xingbie
				+ "',zhicheng='" + zhicheng + "',image='" + image + "',info='"
				+ info + "' where id=" + id;

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
	public static void Delete_Teacher(int id) {
		String deleteStr = "delete from teacher where id=" + id;

		try {
			DataProcess.ExeQuery(deleteStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 
	 * @param ID
	 * @return
	 */

	public static Teacher getTeacher(int ID) {
		String selectStr = "select * from teacher where id=" + ID;

		Connection con = DataProcess.getConnection();

		Teacher teacher = Teacher.getInstance();

		try {

			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery(selectStr);

			if (rs.next()) {
				String name = rs.getString("name");

				String sex = rs.getString("sex");

				String zhicheng = rs.getString("zhicheng");

				String image = rs.getString("image");

				String info = rs.getString("info");

				teacher.setId(ID);

				teacher.setName(name);

				teacher.setSex(sex);

				teacher.setZhicheng(zhicheng);

				teacher.setImage(image);

				teacher.setInfo(info);
			}

			rs.close();

			stmt.close();

			con.close();

			return teacher;

		} catch (Exception e) {
			e.printStackTrace();

			return null;
		}
	}

	/**
	 * 
	 * @return
	 */
	public static ArrayList getTeacherList() {
		String query = "select * from teacher";

		Connection con = DataProcess.getConnection();

		ArrayList tl = new ArrayList();

		try {

			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int ID = rs.getInt("id");

				String name = rs.getString("name");

				String sex = rs.getString("sex");

				String zhicheng = rs.getString("zhicheng");

				String image = rs.getString("image");

				String info = rs.getString("info");

				Teacher teacher = Teacher.getInstance();

				teacher.setId(ID);

				teacher.setName(name);

				teacher.setSex(sex);

				teacher.setZhicheng(zhicheng);

				teacher.setImage(image);

				teacher.setInfo(info);

				tl.add(teacher);
			}

			rs.close();

			stmt.close();

			con.close();

			return tl;

		} catch (Exception e) {
			e.printStackTrace();

			return null;
		}

	}
}
