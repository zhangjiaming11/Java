<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>管理登录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<style type="text/css">
<!--
@import url("../css/OSX.css");
-->
</style>
	</head>
	<SCRIPT language=javascript>
function CheckForm()
{
	if(document.loginForm.username.value=="")
	{
		alert("请输入用户名！");
		document.loginForm.username.focus();
		return false;
	}
	if(document.loginForm.password.value == "")
	{
		alert("请输入密码！");
		document.loginForm.password.focus();
		return false;
	}
	document.loginForm.submit();
}
</SCRIPT>
	<body bgcolor="#CAD7F7" topmargin="100">
		<div align="center">
			<form name="loginForm" method="post" action="/Lab/login">
				<table width="480" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
					<tr>
						<td height="28" colspan="2" align="center" background="../images/guanli/admin_bg_1.gif" class="whitenormal">
							科研新闻信息发布平台管理登陆
						</td>
					</tr>
					<tr>
						<td height="78" colspan="2" background="../images/guanli/dvbbs.jpg">&nbsp;
							
						</td>
					</tr>
					<tr bgcolor="F2F3F5">
						<td width="30%" align="right" class="normalText">
							用户名:
						</td>
						<td width="70%">
							<input type="text" name="username" class="textBox">
						</td>
					</tr>
					<tr bgcolor="F2F3F5">
						<td align="right" class="normalText">
							密&nbsp;&nbsp;码:
						</td>
						<td>
							<input type="password" name="password" class="textBox">
						</td>
					</tr>
					<tr align="center">
						<td colspan="2" bgcolor="E4EEFA">
							<input type="button" name="Submit" value="提交" onClick="CheckForm()">
						</td>
					</tr>
				</table>

			</form>

		</div>

	</body>
</html>
