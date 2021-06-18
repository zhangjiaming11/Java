<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.bit.business.*,java.util.*,cn.edu.bit.Object.*"%>
<html>

	<head>
		<title>实验室学生</title>
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
					<%ArrayList sl = (ArrayList) Student_Manager.getStudentList();

			%>
					<div align="center">
						<p>
							&nbsp;
						</p>
						<table width="80%" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
							<tr>
								<td colspan="2" align="center" bgcolor="#0066FF" class="whitenormal">
									学生列表
								</td>
							</tr>
							<%Iterator iter = sl.iterator();

			while (iter.hasNext()) {
				Student stu = (Student) iter.next();

				Grade grade = Grade_Manager.getGrade(stu.getGrade_id());
%>
							<tr bgcolor="E4EDF9">
								<td align="center" class="titleText">
									<%=stu.getName()%>
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
									<%=stu.getSex()%>
								</td>
							</tr>
							<tr bgcolor="F1F3F5">
								<td align="center" class="normalText">
									年级:
								</td>
								<td class="normalText">
									<%=grade.getName()%>
								</td>
							</tr>
							<tr bgcolor="F1F3F5">
								<td align="center" class="normalText">
									图片:
								</td>
								<td>
									<img src=<%="./images/face/"+stu.getImage()%>>
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
