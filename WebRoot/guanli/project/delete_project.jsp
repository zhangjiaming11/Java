<%@ page language="java" pageEncoding="utf-8" %>
<%@ page import="cn.edu.bit.business.*" errorPage="error.jsp"%>
<html>

<head>
<title>删除项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body bgcolor="#FFFFFF">




	<% String id = (String)request.getParameter("project_id"); 
		 
		    int ID = Integer.parseInt(id);

			Project_Manager.Delete_Project(ID);

	%>
<SCRIPT language=javascript>
	
	alert("该项目已删除!");
	
	location.href='/Lab/guanli/project/project_list.jsp';


	
</SCRIPT>

</body>
</html>