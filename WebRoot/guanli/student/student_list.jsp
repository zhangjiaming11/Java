<%@ page language="java" pageEncoding="utf-8" %>
<%@ page import="cn.edu.bit.business.*,java.util.*,cn.edu.bit.Object.*" errorPage="error.jsp"%>
<html>

<head>
<title>Lomboz JSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<style type="text/css">
<!--
@import url("../../css/OSX.css");
-->
</style>
</head>
<body bgcolor="#CAD7F7" topmargin="30">
<%
ArrayList sl = (ArrayList)Student_Manager.getStudentList();
%>
<div align="center">
<table width="80%"  border="0" cellspacing="1" cellpadding="1" class="tableBorder">
  <tr>
    <td colspan="2" align="center" background="./images/guanli/admin_bg_1.gif" class="whitenormal">学生列表</td>
  </tr>
<%
Iterator iter = sl.iterator();

while(iter.hasNext())
{
	Student stu = (Student)iter.next();
	
	Grade grade = Grade_Manager.getGrade(stu.getGrade_id());
%>
  <tr bgcolor="E4EDF9">
    <td align="center" class="titleText"><%=stu.getName()%></td>
    <td align="right"><a href=<%="/Lab/guanli/student/edit_student.jsp?student_id="+stu.getId()%>>[编辑]</a><a href=<%="/Lab/guanli/student/delete_student.jsp?student_id="+stu.getId()%> onclick="{if(confirm('确定删除吗?')){return true;}return false;}">[删除]</a></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td width="10%" align="center" class="normalText">性别:</td>
    <td width="90%" class="normalText"><%=stu.getSex()%></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td align="center" class="normalText">年级:</td>
    <td class="normalText"><%=grade.getName()%></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td align="center" class="normalText">图片:</td>
    <td><img src=<%="../../images/face/"+stu.getImage()%>  height="38"></td>
  </tr>
<%
 }
%>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
</div>

</body>
</html>