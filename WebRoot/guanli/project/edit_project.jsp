<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.bit.business.*,java.util.*,cn.edu.bit.Object.*" errorPage="error.jsp"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>Lomboz JSP</title>
		<style type="text/css">
<!--
@import url("../../css/OSX.css");
-->
</style>
	</head>
	<SCRIPT language=javascript>
function CheckForm()
{
	if(document.edit_project_Form.name.value=="")
	{
		alert("请输入项目名称！");
		return false;
	}
	document.edit_project_Form.submit();
}
</SCRIPT>
	<body bgcolor="#CAD7F7" topmargin="100">

		<%String id = (String) request.getParameter("project_id");

			int ID = Integer.parseInt(id);

			Project pro = Project_Manager.getProject(ID);

			%>

		<div align="center">
			<form name="edit_project_Form" method="post" action="<%=basePath %>/edit_project">
				<table width="500" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
					<tr>
						<td colspan="2" align="center" background="../../images/guanli/admin_bg_1.gif" class="whitenormal">
							编辑项目
						</td>
					</tr>
					<tr>
						<td width="97" align="center" bgcolor="F1F3F5" class="normalText">
							名称:
						</td>
						<td width="396" bgcolor="F1F3F5">
							<input name="name" type="text" id="name" class="textBox" value="<%=pro.getName()%>">
							<input type="hidden" name="project_id" value="<%=ID%>">
						</td>
					</tr>
					<tr align="center">
						<td bgcolor="F1F3F5" class="normalText">
							开发起始时间:
						</td>
						<td align="left" bgcolor="F1F3F5">
							<input name="time" type="text" class="textBox" value="<%=pro.getTime()%>">
						</td>
					</tr>
					<tr align="center">
						<td bgcolor="F1F3F5" class="normalText">
							项目简介:
						</td>
						<td align="left" bgcolor="F1F3F5">
							<textarea name="info" cols="40" rows="6">
								<%=pro.getInfo()%>
							</textarea>
						</td>
					</tr>
					<tr align="center">
						<td colspan="2" bgcolor="F1F3F5">
							<input type="button" name="Submit" value="保存修改" onClick="CheckForm()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
