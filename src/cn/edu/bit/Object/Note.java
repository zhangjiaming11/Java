
package cn.edu.bit.Object;


/**
 * 
 * @author liuyu
 *2007-7-21
 */
public class Note {
	
	private int id;
	
	private String title;
	
	private String author;
	
	private String content;
	
	private String datetime;
	
	private Note(){
		
	}
	
	private Note(int id,String title,String author,String content,String datetime)
	{
		this.id = id;
		
		this.title = title;
		
		this.author = author;
		
		this.content = content;
		
		this.datetime = datetime;
	}
	
	public static Note getInstance(int id,String title,String author,String content,String datetime)
	{
		return new Note(id,title,author,content,datetime);
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	
	public int getId()
	{
		return this.id;
	}
	
	public void setTitle(String title)
	{
		this.title = title;
	}
	
	public String getTitle()
	{
		return this.title;
	}
	
	public void setAuthor(String author)
	{
		this.author = author;
	}
	
	public String getAuthor()
	{
		return this.author;
	}
	
	public void setContent(String content)
	{
		this.content = content;
	}
	
	public String getContent()
	{
		return this.content;
	}
	
	public void setDatetime(String datetime)
	{
		this.datetime = datetime;
	}
	
	public String getDatetime()
	{
		return this.datetime;
	}
	

}
