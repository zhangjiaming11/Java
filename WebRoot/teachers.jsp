<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.bit.business.Teacher_Manager,java.util.*,cn.edu.bit.Object.*" errorPage="error.jsp"%>
<html>

	<head>
		<title>Lomboz JSP</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<style type="text/css">
<!--
@import url("./css/OSX.css");
-->
</style>
	</head>
	<body topmargin="30">

		<table width="79%" border="1" align="center" cellpadding="0" cellspacing="0">
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
				<td height="329" valign="top">
					<%ArrayList teacherList = (ArrayList) Teacher_Manager
					.getTeacherList();

			%>
					<div align="center">
						<table width="80%" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
							<tr background="./images/front/bg_1.gif">
								<td colspan="2" align="center" background="./images/front/bg_1.gif" class="whitenormal">
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
									&nbsp;
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
									<img src=<%="./images/face/"+teacher.getImage()%> height="38">
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
							<tr>
								<td colspan="2">
									&nbsp;
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
				</td>
			</tr>
			<tr>
				<td height="43">
					<img height="57" src="images/front/footer.jpg" width="100%">
				</td>
			</tr>
		</table>
	</body>
</html>
