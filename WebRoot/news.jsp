<%@ page contentType="text/html; charset=utf-8" language="java"%>

<%@ taglib uri="control" prefix="control"%>
<html>
	<head>
		<title>新闻</title>
	</head>
	<style type="text/css">
<!--
@import url("./css/OSX.css");
-->
</style>
	<body topmargin="30">

		<div align="center">
			<table width="79%" border="1" cellspacing="0" cellpadding="0">
				<tr>
				<td height="62" align="center">
					<H1 align="center">
						<FONT face="Arial Black" size="7">科研信息发布平台</FONT>
					</H1>
				</td>
				</tr>
				<tr>
				<td>
					&nbsp;&nbsp; &gt;&gt; <a href="index.jsp" target="_self">首页</a> | <a href="news.jsp" target="_self">新闻</a> | <a href="researchProject.jsp" target="_self">在研项目</a> | <a href="production.jsp" target="_self">研究成果</a> | <a href="teachers.jsp"
						target="_self">老师信息</a> | <a href="members.jsp" target="_self">学生信息</a> | <a href="down2.jsp" target="_self">软件下载</a> | <a href="reg.jsp" target="_self">用户注册</a>
				</td>
				</tr>
				<tr>
					<td height="329" align="center" valign="top">
						<table width="100%" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
							<tr background="images/front/bg_1.gif">
								<td colspan="2" align="center" background="./images/front/bg_1.gif" class="whitenormal">
									 新闻
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<control:news4news />
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="43">
						<img height="57" src="images/front/footer.jpg" width="100%">
					</td>
				</tr>
			</table>

		</div>
	</body>
</html>
