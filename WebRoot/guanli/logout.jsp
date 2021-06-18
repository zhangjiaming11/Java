<%@ page language="java" pageEncoding="GB2312" %>
<html>
<head>
<title>ÍË³ö</title>
</head>
<body bgcolor="#FFFFFF">

<%
session.removeAttribute("username");

session.invalidate();
%>
<script language="JavaScript">
location.href = "../index.jsp";
</script>

</body>
</html>