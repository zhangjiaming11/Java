<%@ page language="java" pageEncoding="utf-8" %>
<%@ page import="cn.edu.bit.business.*,java.util.*,cn.edu.bit.Object.*,cn.edu.bit.DBQuery.DataProcess" %>
<html>

<head>
<title>Lomboz JSP</title>
<style type="text/css">
<!--
@import url("../../css/OSX.css");
-->
</style>
</head>

<body bgcolor="#CAD7F7" topmargin="50">
<%
String str = (String) request.getQueryString();
	       
int page_note;

if (str == null)
     page_note = 1;
else {
	// 根据‘=’来析取参数值
	String[] aa = str.split("=");
	page_note = Integer.parseInt(aa[1]);
	   }
	   
String strSql = new String("select * from note order by datetime desc");

int count = DataProcess.nCount("select count(*) from note");
			
			int totalPages = 0;
			
			if(count%5==0)
			{
				totalPages=count/5;
			}
			else
			{
				totalPages = count/5+1;
			}
			
			int currentPage=1;
			
			if(page_note<=0)
			{
				currentPage=1;
			}
			else if(page_note>totalPages)
			{
				currentPage=totalPages;
			}
			else
			{
				currentPage = page_note;
			}
		//----------------------------------------------------------	
			// 并将这些Bean保存在容器类中，然后返回
            Vector Items = Note_Manager.search(strSql, page_note);
%>
<div align="center">
<table width="80%"  border="0" cellspacing="1" cellpadding="1" class="tableBorder">
  <tr>
    <td colspan="2" align="center" background="../../images/guanli/admin_bg_1.gif" class="whitenormal">留言列表</td>
  </tr>
  
  <%
  	for (int i = 0; i < Items.size(); i++) 
    {
         Note bean = (Note) Items.elementAt(i);
  %>
  <tr bgcolor="E4EDF9">
    <td width="14%" align="center" class="normalText">标题:</td>
    <td width="86%" class="normalText"><%=bean.getTitle()%></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td align="center" class="normalText">作者:</td>
    <td class="normalText"><%=bean.getAuthor()%></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td align="center" class="normalText">时间:</td>
    <td class="normalText"><%=bean.getDatetime()%></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td align="center" class="normalText">内容:</td>
    <td class="normalText"><%=bean.getContent()%></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <%}%>




	<tr>
        	
     <td colspan="2">
     	<table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="E4EDF9">
        	
        	<tr class="normalText">

        	<td>页次:<%=currentPage%>/<%=totalPages%>页&nbsp;每页5 总数<%=count%></td>

        	<td align="right">分页:
        	
        	<a href="note_list.jsp?arg1=-1">首页</a> 
        	
        	<a href="note_list.jsp?arg2=-2">上一页</a>
        	
        	<a href="note_list.jsp?arg3=-3">下一页</a> 
        	 
           <a href="note_list.jsp?arg4=-4">尾页</a></td>

        	</tr>

        	</table></td>

        	</tr>


</table>

</div>

</body>
</html>