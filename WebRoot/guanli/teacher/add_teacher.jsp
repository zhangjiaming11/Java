<%@ page language="java" pageEncoding="utf-8"%>
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
	if(document.add_teacher_Form.name.value=="")
	{
		alert("请输入姓名！");
		return false;
	}
	document.add_teacher_Form.submit();
}
</SCRIPT>
	<body bgcolor="#CAD7F7" topmargin="100">
		<div align="center">
			<form name="add_teacher_Form" method="post" action="<%=basePath%>/add_teacher">
				<table width="500" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
					<tr>
						<td colspan="2" align="center" background="../../images/guanli/admin_bg_1.gif" class="whitenormal">
							添加老师
						</td>
					</tr>
					<tr>
						<td width="97" align="center" bgcolor="F1F3F5" class="normalText">
							姓名:
						</td>
						<td width="396" bgcolor="F1F3F5">
							<input name="name" type="text" id="name" class="textBox">
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="F1F3F5" class="normalText">
							性别:
						</td>
						<td bgcolor="F1F3F5">
							<input type="radio" name="radiobutton" value="male" checked />
							<span class="normalText">男</span>
							<input type="radio" name="radiobutton" value="female" />
							<span class="normalText">女</span>
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="F1F3F5" class="normalText">
							职称:
						</td>
						<td bgcolor="F1F3F5">
							<input name="zhicheng" type="text" id="zhicheng" class="textBox">
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="F1F3F5" class="normalText">
							图片:
						</td>
						<td bgcolor="F1F3F5">
							<span class="normalText">images/face/</span>
							<input name="image" type="text" id="image" class="textBox">
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="F1F3F5" class="normalText">
							简介:
						</td>
						<td bgcolor="F1F3F5">
							<textarea name="info" cols="40" rows="6"></textarea>
						</td>
					</tr>
					<tr align="center">
						<td colspan="2" bgcolor="F1F3F5">
							<input type="button" name="Submit" value="提交" onClick="CheckForm()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
