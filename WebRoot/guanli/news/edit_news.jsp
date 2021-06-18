<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.bit.Object.*" errorPage="error.jsp"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>编辑新闻</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<style type="text/css">
<!--
@import url("../../css/OSX.css");
-->
</style>
	</head>

	<SCRIPT language=javascript>
function CheckForm()
{
	if(document.news_form.title.value=="")
	{
		alert("请输入标题！");
		return false;
	}
	if(document.news_form.content.value == "")
	{
		alert("请输入内容！");
		return false;
	}
	document.news_form.submit();
}
</SCRIPT>

	<body bgcolor="#CAD7F7" topmargin="30">
		<%String id = (String) request.getParameter("news_id");

			int ID = Integer.parseInt(id);

			News news = News.getNews(ID);

			%>
		<div align="center">
			<form name="news_form" action="<%=basePath %>/edit_news" method="post">
				<table width="80%" border="0" cellspacing="1" cellpadding="1" class="tableBorder">
					<tr>
						<td colspan="2" align="center" background="../../images/guanli/admin_bg_1.gif" class="whitenormal">
							新闻编辑
						</td>
					</tr>
					<tr>
						<td width="15%" align="center" bgcolor="E4EDF9" class="normalText">
							标题:
						</td>
						<td width="85%" bgcolor="E4EDF9">
							<input type="text" name="title" class="textBox" value="<%=news.getTitle()%>">
							<input type="hidden" name="news_id" value="<%=id%>">
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="E4EDF9" class="normalText">
							内容:
						</td>
						<td bgcolor="E4EDF9">
							<textarea name="content" cols="50" rows="6">
								<%=news.getContent()%>
							</textarea>
						</td>
					</tr>
					<tr>
						<td bgcolor="E4EDF9">
							&nbsp;
						</td>
						<td bgcolor="E4EDF9">
							<input type="button" name="Submit" value="保存修改" onClick="CheckForm()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
