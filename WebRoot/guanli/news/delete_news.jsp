<%@ page language="java" pageEncoding="utf-8" %>
<%@ page import="cn.edu.bit.business.*" errorPage="error.jsp"%>
<html>

<head>
<title>删除新闻</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body bgcolor="#FFFFFF">


<% String id = (String)request.getParameter("news_id"); 		 
		    int ID = Integer.parseInt(id);
			News_Manager.Delete_News(ID);
%>
<SCRIPT language=javascript>

	alert("该新闻已删除!");	
	location.href='/Lab/guanli/news/news_list.jsp';
	
</SCRIPT>

</body>
</html>