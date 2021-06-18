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
ArrayList ml = (ArrayList)Admin_Manager.getManagerList();
%>
<div align="center">
<table width="80%"  border="0" cellspacing="1" cellpadding="1" class="tableBorder">
  <tr>
    <td colspan="2" align="center" background="../../images/guanli/admin_bg_1.gif" class="whitenormal">管理员列表</td>
  </tr>
<%
Iterator iter = ml.iterator();

while(iter.hasNext())
{
	Manager ma = (Manager)iter.next();
%>
  <tr bgcolor="E4EDF9">
    <td align="center" class="titleText">Administrator</td>
    <td align="right">
    	<a href=<%="edit_manager.jsp?manager_username="+ma.getUsername()%>>[编辑]</a>
    	<a href=<%="delete_manager.jsp?manager_username="+ma.getUsername()%>>[删除]</a></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td width="10%" align="center" class="normalText">用户名:</td>
    <td width="90%" class="normalText"><%=ma.getUsername()%></td>
  </tr>
  <tr bgcolor="F1F3F5">
    <td align="center" class="normalText">密码:</td>
    <td class="normalText"><%=ma.getPassword()%></td>
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