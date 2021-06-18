<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.bit.business.Teacher_Manager,java.util.*,cn.edu.bit.Object.*" errorPage="error.jsp"%>
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
		<%ArrayList teacherList = (ArrayList) Teacher_Manager
					.getTeacherList();

			%>
		<div align="center">
			<table width="80%" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
				<tr>
					<td colspan="2" align="center" background="../../images/guanli/admin_bg_1.gif" class="whitenormal">
						老师列表
					</td>
				</tr>
				<%Iterator iter = teacherList.iterator();

			while (iter.hasNext()) {
				Teacher teacher = (Teacher) iter.next();
%>
				<tr bgcolor="E4EDF9">
					<td align="center" class="titleText">
						<%=teacher.getName()%>
					</td>
					<td align="right">
						<a href=<%="/Lab/guanli/teacher/edit_teacher.jsp?teacher_id="+teacher.getId()%>>[编辑]</a><a href=<%="/Lab/guanli/teacher/delete_teacher.jsp?teacher_id="+teacher.getId()%> onclick="{if(confirm('确定删除吗?')){return true;}return false;}">[删除]</a>
					</td>
				</tr>
				<tr bgcolor="F1F3F5">
					<td width="10%" align="center" class="normalText">
						性别:
					</td>
					<td width="90%" class="normalText">
						<%=teacher.getSex()%>
					</td>
				</tr>
				<tr bgcolor="F1F3F5">
					<td align="center" class="normalText">
						职称:
					</td>
					<td class="normalText">
						<%=teacher.getZhicheng()%>
					</td>
				</tr>
				<tr bgcolor="F1F3F5">
					<td align="center" class="normalText">
						图片:
					</td>
					<td>
						<img src=<%="../../images/face/"+teacher.getImage()%> height="38">
					</td>
				</tr>
				<tr bgcolor="F1F3F5">
					<td align="center" class="normalText">
						简介:
					</td>
					<td class="normalText">
						<%=teacher.getInfo()%>
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
