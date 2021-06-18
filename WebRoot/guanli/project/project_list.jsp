<%@ page language="java" pageEncoding="utf-8"%>
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
		<%ArrayList pl = (ArrayList) Project_Manager.getProjectList();

			%>
		<div align="center">
			<table width="80%" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
				<tr>
					<td colspan="2" align="center" background="../../images/guanli/admin_bg_1.gif" class="whitenormal">
						项目列表
					</td>
				</tr>
				<%Iterator iter = pl.iterator();

			while (iter.hasNext()) {
				Project pro = (Project) iter.next();
%>
				<tr bgcolor="E4EDF9">
					<td align="center" class="titleText">
						<%=pro.getName()%>
					</td>
					<td align="right">
						<a href=<%="/Lab/guanli/project/edit_project.jsp?project_id="+pro.getId()%>>[编辑]</a><a href=<%="/Lab/guanli/project/delete_project.jsp?project_id="+pro.getId()%> onclick="{if(confirm('确定删除吗?')){return true;}return false;}">[删除]</a>
					</td>
				</tr>
				<tr bgcolor="F1F3F5">
					<td width="10%" align="center" class="normalText">
						起始时间:
					</td>
					<td width="90%" class="normalText">
						<%=pro.getTime()%>
					</td>
				</tr>
				<tr bgcolor="F1F3F5">
					<td align="center" class="normalText">
						简介:
					</td>
					<td class="normalText">
						<%=pro.getInfo()%>
					</td>
				</tr>
				<%}

		%>
				<tr>
					<td colspan="2">
						&nbsp;
					</td>
				</tr>
			</table>
		</div>

	</body>
</html>
