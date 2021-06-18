<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="cn.edu.bit.business.*,java.util.*,cn.edu.bit.Object.*"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="control" prefix="control"%>
<html>
	<head>
	<%String username = (String) request.getSession().getAttribute("username");
			if (username == null || username.equals("")) {
			//	response.sendRedirect("login.jsp");
			}
		%>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>科研新闻信息发布平台</title>
		<style type="text/css">
<!--
.style4 {	FONT-SIZE: 11px}
-->
</style>
	</head>

	<body>
		<table width="79%" border="1" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="62" align="center">
					<H1 align="center">
						<FONT face="Arial Black" size="7">科研新闻信息发布平台</FONT>
					</H1>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;&nbsp; &gt;&gt;
					<a href="index.jsp" target="_self">首页</a> |
					<a href="news.jsp" target="_self">新闻</a> |
					<a href="researchProject.jsp" target="_self">在研项目</a> |
					<a href="production.jsp" target="_self">研究成果</a> |
					<a href="teachers.jsp" target="_self">老师信息</a> |
					<a href="members.jsp" target="_self">学生信息</a> |
					<a href="down1.jsp" target="_self">课件下载</a> |
					<a href="down2.jsp" target="_self">软件下载</a> |
					<a href="reg.jsp" target="_self">用户注册</a>
				</td>
			</tr>
			<tr>
				<td height="329">
					<table width="100%" height="100%" border="1" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="112" valign="top">
								<table width="88%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top">
											<br>
											<FORM name=memlogin action=login.jsp?action=login method=post>
												<TABLE class=panel cellSpacing=0 cellPadding=4 width="85%"
													border=1>
													<TBODY>
														<TR>
															<TD class=panel-title>
																<IMG height=18 src="images/front/user%20login.gif"
																	width=18 align=absMiddle>
																User Login
															</TD>
														</TR>
														<TR class=panel-content>
															<TD align=middle width="99%">
																<TABLE cellSpacing=0 cellPadding=0 border=0>
																	<TBODY>
																		<TR>
																			<TD>
																				<IMG height="16" src="images/front/user.gif"
																					width="44">
																			</TD>
																			<TD background="images/button_01.gif" height=16>
																				<INPUT class=test id=username maxLength=10 size=8
																					name=username>
																			</TD>
																		</TR>
																	</TBODY>
																</TABLE>
															</TD>
														</TR>
														<TR class=panel-content>
															<TD align=middle>
																<TABLE cellSpacing=0 cellPadding=0 border=0>
																	<TBODY>
																		<TR>
																			<TD>
																				<IMG height=16 src="images/front/password.gif"
																					width=44>
																			</TD>
																			<TD background="images/button_01.gif">
																				<INPUT class=test id=Password2 type=password
																					maxLength=10 size=8 name=Password>
																			</TD>
																		</TR>
																	</TBODY>
																</TABLE>
															</TD>
														</TR>
														<TR class=panel-content>
															<TD align=center>
																<INPUT id=Login2 type=image height=16 alt=# width=50
																	src="images/front/button_login.gif" value=" Login "
																	name=Login>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</FORM>
											<p>
												&nbsp;
											</p>
											<TABLE class=panel cellSpacing=0 cellPadding=2 width="100%"
												border=1>
												<TBODY>
													<TR>
														<TD class=panel-title>
															<IMG height=20 src="images/front/createlink.gif" width=21
																align=absMiddle>
															<B>Links</B>
														</TD>
													</TR>
													<TR>
														<TD vAlign=center class=panel-content>
															<p>
																<SPAN style="WIDTH: 88px; HEIGHT: 43px"> <A
																	href="http://9stars.org/" target=_blank> <IMG
																			src="images/front/user login.gif" alt=昆明 width="100%"
																			height="31" border=0 align=absMiddle> </A> </SPAN>
																<SPAN style="WIDTH: 88px; HEIGHT: 43px"> <A
																	href="http://www.bitunion.org/index.php" target=_blank>
																		<IMG src="images/guanli/forumHeaderBackground.gif" alt=哈哈哈哈
																			width="100%" height="31" border=0 align=absMiddle>
																</A> </SPAN>
																<SPAN style="WIDTH: 88px; HEIGHT: 43px"> <A
																	href="http://bbs.bitnp.net/" target=_blank> <IMG
																			src="images/front/bit3.gif" alt=网协论坛 width="100%"
																			height="31" border=0 align=absMiddle> </A> </SPAN>
																<SPAN style="WIDTH: 88px; HEIGHT: 43px"> <A
																	href="http://www.bit.edu.cn" target=_blank> <IMG
																			src="images/guanli/admin_left_7.gif" alt=昆明理工大学主页 width="100%"
																			height="33" border=0 align=absMiddle> </A> </SPAN>
															</p>
														</TD>
													</TR>
													<TR>
														<TD vAlign=center class=panel-content>
															<!--更多的连接 通过跳到另一页 或从数据库中读出-->
															<B> <A href="http://www.ssdl/links.jsp"> <IMG
																		align=absBottom border=0 height="14"
																		src="images/front/more.gif" width="14"> More
																	Links </A> <B> <A href="http://www.ssdl/links.jsp">
																</A>
															</B>
															</B>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
											<p>
												&nbsp;
											</p>
											<table width="100%" border="1" cellspacing="0"
												cellpadding="0">
												<tr>
													<td>
														<span class="panel-title"><IMG height=18
																src="images/front/contact.gif" width=18 align=absMiddle>
															<STRONG>Contact Us</STRONG>
														</span>
													</td>
												</tr>
												<tr>
													<td>
														Email:
														<br>
														&nbsp;&nbsp;admin@1280636684
													</td>
												</tr>
												<tr>
													<td>
														MSN:
														<br>
														&nbsp;&nbsp;admin@msn1280636684
													</td>
												</tr>
											</table>
											<p>
												&nbsp;
											</p>
										</td>
									</tr>
								</table>
							</td>
							<td width="532" valign="top">
								<table width="100%" height="100%" border="1" cellpadding="0"
									cellspacing="0">
									<tr>
										<td background="images/front/bg_1.gif">
											新闻:
										</td>
									</tr>
									<tr>
										<td valign="top">

											<control:news />
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td background="images/front/bg_1.gif">
											在研项目:
										</td>
									</tr>
									<tr>
										<td valign="top">
											<%
											ArrayList pl = (ArrayList) Project_Manager.getProjectList();
											%>
											<div align="center">
												<table width="100%" border="0" cellspacing="1"
													cellpadding="1" class="tableBorder">
													<%
														Iterator iter = pl.iterator();

														while (iter.hasNext()) {
															Project pro = (Project) iter.next();
													%>
													<tr bgcolor="E4EDF9">
														<td align="center" class="titleText">
															<%=pro.getName()%>
														</td>
														<td>
															&nbsp;
														</td>
													</tr>
													<tr bgcolor="F1F3F5">
														<td width="20%" align="center" class="normalText">
															起始时间:
														</td>
														<td width="80%" class="normalText">
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
													<tr>
														<td colspan="2">
															&nbsp;
														</td>
													</tr>
													<%
													}
													%>
													<tr>
														<td colspan="2">
															&nbsp;
														</td>
													</tr>
												</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="105" valign="top">
								<br>
								<table width="13%" border="1" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<img height=19 src="images/front/works.JPG" width="100">
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											<A href="http://www.ssdl.com/view.asp?ID=01" target=_parent><IMG
													border=0 height=100 src="images/front/24_330.gif" width=100>
											</A>
										</td>
									</tr>
									<tr>
										<td>
											<A href="index.jsp" target=_self><SPAN class=style4><STRONG><font
														color="#355087">计算机</font>
												</STRONG>
											</SPAN>
											</A>
											<SPAN class=top><STRONG>Client:</STRONG>
											</SPAN><STRONG> </STRONG><SPAN class=t2>ssdl.com</SPAN>
											<SPAN class=top><STRONG>Time:</STRONG>
											</SPAN><STRONG> </STRONG><SPAN class=t2>2020-5-5</SPAN>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											<A href="http://www.ssdl.com/view.jsp?logID=02"
												target=_parent><IMG border=0 height=98
													src="images/front/stop.gif" width=98>
											</A>
										</td>
									</tr>
									<tr>
										<td>
											<SPAN class="top "><STRONG><A
													href="index.jsp" target=_self><FONT color=#355087>自然语言理解</FONT>
												</A>
											</STRONG>
											</SPAN>
											<SPAN class=top><STRONG>Client:</STRONG>
											</SPAN><STRONG> </STRONG><SPAN class=t2>ssdl.com</SPAN>
											<SPAN class=top><STRONG>Time:</STRONG>
											</SPAN><SPAN class=t2>2020-5-5</SPAN>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td>

											<A href="http://www.ssdl.com/view.jsp?logID=03"
												target=_parent><IMG border=0 height=120
													src="images/front/67017E7E54C3224BE4C5C538D7B268F7.GIF"
													width=100>
											</A>
										</td>
									</tr>
									<tr>
										<td>
											<SPAN class="top "><STRONG><A
													href="index.jsp" target=_self><FONT color=#355087>机器人</FONT>
												</A>
											</STRONG>
											</SPAN>
											<SPAN class=top><STRONG>Client:</STRONG>
											</SPAN><STRONG> </STRONG><SPAN class=t2>ssdl.com</SPAN>
											<SPAN class=top><STRONG>Time:</STRONG><SPAN class=t2>2020-5-5</SPAN>
										</td>
									</tr>
								</table>

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
	</body>
</html>
