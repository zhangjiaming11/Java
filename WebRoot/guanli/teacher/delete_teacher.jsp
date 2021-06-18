<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.bit.business.*" errorPage="error.jsp"%>
<html>

	<head>
		<title>删除老师</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body bgcolor="#FFFFFF">



		<%String id = (String) request.getParameter("teacher_id");

			int ID = Integer.parseInt(id);

			Teacher_Manager.Delete_Teacher(ID);

		%>

		<SCRIPT language=javascript>

	alert("该老师已删除!");
	
	location.href='/Lab/guanli/teacher/teacher_list.jsp';

	
</SCRIPT>

	</body>
</html>
