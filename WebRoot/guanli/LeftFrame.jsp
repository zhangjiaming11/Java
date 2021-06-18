<%@ page language="java" pageEncoding="GB2312"%>
<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
	<head>
		<title>功能菜单</title>
		<style type="text/css">
<!--
@import url("../css/OSX.css");
-->
</style>
	</head>
	<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" rightmargin="0">

		<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="799AE1">
			<tr>
				<td height="39" align="center" background="../images/guanli/title.gif">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="26" valign="top" background="../images/guanli/title_bg_quit.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="51%" height="26" align="center">
								<a href="index.jsp" target="_parent" class="normalText">管理首页</a>
							</td>
							<td width="6%" align="center">
								|
							</td>
							<td width="43%" align="center" class="normalText">
								<a href="logout.jsp" target="_parent">退出</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="19">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="29" align="center" background="../images/guanli/admin_left_1.gif" bgcolor="799AE1" class="normalText">
					新闻管理
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr bgcolor="D6DFF7">
							<td width="6%" height="21" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="94%" align="center" bgcolor="D6DFF7" class="normalText">
								<a href="news/news_list.jsp" target="main">查看所有新闻</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr align="center" bgcolor="D6DFF7">
							<td width="8%" height="23" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td bgcolor="D6DFF7" class="normalText">
								<a href="/Lab/guanli/news/add_news.jsp" target="main">添加新闻</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="23" align="center" background="../images/guanli/admin_left_4.gif" class="normalText">
					在研项目管理
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr bgcolor="D6DFF7">
							<td width="8%" height="25" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="92%" align="center" bgcolor="D6DFF7" class="normalText">
								<a href="/Lab/guanli/project/project_list.jsp" target="main">查看项目(编辑)</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr bgcolor="D6DFF7">
							<td width="9%" height="23" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="92%" align="center" valign="middle" bgcolor="D6DFF7" class="normalText">
								<a href="/Lab/guanli/project/add_project.jsp" target="main">添加项目</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="28" align="center" background="../images/guanli/admin_left_5.gif" class="normalText">
					团队管理
				</td>
			</tr>
			<tr>
				<td bgcolor="D6DFF7">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr align="center">
							<td width="9%" height="25" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="43%" class="normalText">
								<a href="/Lab/guanli/teacher/teacher_list.jsp" target="main">查看老师</a>
							</td>
							<td width="7%">
								|
							</td>
							<td width="43%" class="normalText">
								<a href="/Lab/guanli/teacher/add_teacher.jsp" target="main">添加老师</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td bgcolor="D6DFF7">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr align="center">
							<td width="9%" height="22" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="43%" class="normalText">
								<a href="/Lab/guanli/student/student_list.jsp" target="main">查看学生</a>
							</td>
							<td width="5%">
								|
							</td>
							<td width="43%" class="normalText">
								<a href="/Lab/guanli/student/add_student.jsp" target="main">添加学生</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="28" align="center" background="../images/guanli/admin_left_7.gif" class="normalText">
					下载管理
				</td>
			</tr>
			<tr>
				<td bgcolor="D6DFF7">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr align="center">
							<td width="9%" height="24" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="40%" class="normalText">
								课件管理
							</td>
							<td width="7%">
								|
							</td>
							<td width="43%" class="normalText">
								添加
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td bgcolor="D6DFF7">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr align="center">
							<td width="9%" height="24" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="41%" class="normalText">
								软件管理
							</td>
							<td width="6%">
								|
							</td>
							<td width="43%" class="normalText">
								添加
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="28" align="center" background="../images/guanli/admin_left_2.gif" class="normalText">
					其他管理
				</td>
			</tr>
			<tr>
				<td bgcolor="D6DFF7">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr align="center">
							<td width="9%" height="21" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="46%" class="normalText">
								<a href="manage/manager_list.jsp" target="main">管理员列表</a>
							</td>
							<td width="8%">
								|
							</td>
							<td width="38%" class="normalText">
								<a href="manage/add_manager.jsp" target="main">添加</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td bgcolor="D6DFF7">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="9%" height="21" background="../images/guanli/bullet.gif">
								&nbsp;
							</td>
							<td width="91%" align="center">
								<a href="note.jsp" class="normalText">查看所有留言</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>
