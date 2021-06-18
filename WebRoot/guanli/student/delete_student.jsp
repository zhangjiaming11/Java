<%@ page language="java" pageEncoding="utf-8" %>
<%@ page import="cn.edu.bit.business.*" errorPage="error.jsp"%>
<html>

<head>
<title>删除学生</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body bgcolor="#FFFFFF">




	<% String id = (String)request.getParameter("student_id"); 
		 
		    int ID = Integer.parseInt(id);

			Student_Manager.Delete_Student(ID);

	%>
<SCRIPT language=javascript>
	
	alert("该学生已删除!");
	
	location.href='/Lab/guanli/student/student_list.jsp';


	
</SCRIPT>

</body>
</html>