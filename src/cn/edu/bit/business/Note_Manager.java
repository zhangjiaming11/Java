
package cn.edu.bit.business;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import cn.edu.bit.DBQuery.DataProcess;
import cn.edu.bit.Object.Note;
import cn.edu.bit.Object.Pageable;

/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class Note_Manager {
	
	public static void Delete_Note(int id)
	{
		String query = "delete from note where id="+id;
		
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
	 * @param strSql
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public static Vector search(String strSql, int page) throws Exception {

        // 容器，用于存放Bean
        Vector Items = new Vector();

        // 得到数据库连接
        Connection con = DataProcess.getConnection();

        // 预处理语句
        PreparedStatement pStmt = null;

        // 结果集
        ResultSet rs = null;

        try {
            pStmt = con.prepareStatement(strSql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            rs = pStmt.executeQuery();

            // 得到一个分页功能类
            Pageable pgb = new Pageable(rs);

            // 设置分页的大小
            pgb.setPageSize(5);

            // 设置要转向的类
            
            pgb.gotoPage(page);
            
            // 在结果集中定位到某行，在这里，这一行是要转向的页的第一行
            rs.absolute(pgb.getRowsCount());

            int i = 0;
            // 取得要转向页的那些行的信息，将其按行存入Bean中，并将这些Bean存入容器中
            do {
                Items.add(Note.getInstance(rs.getInt("id"),rs.getString("title"),rs.getString("author"),rs.getString("content"),rs.getString("datetime")));
                i++;
            }while (rs.next() && i < pgb.getCurrentPageRowsCount());

            return Items;
            
        } finally {
            try {
                rs.close();
                pStmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

}
