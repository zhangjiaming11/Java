<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.bit.business.*" errorPage="error.jsp"%>
<html>

	<head>
		<title>删除管理员</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body bgcolor="#FFFFFF">


<script language="javascript">
alert("rr");
 	var a;
 	window.open(a = confirm('确定删除吗?'));
 	if{!a}location.href='manager_list.jsp';
</script>

		<%
			String username = (String) request.getParameter("manager_username");
			System.out.println(username);
			Admin_Manager.Delete_Admin(username);

		%>
		<SCRIPT language=javascript>
	
	alert("该管理员已删除!");
	
	location.href='manager_list.jsp';


	
</SCRIPT>

	</body>
</html>
