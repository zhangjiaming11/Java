<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>控制面板</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<%String username = (String)  request.getSession().getAttribute("username");
	   System.out.println("username=="+username);
			if (username == null || username.equals("")) {
				response.sendRedirect("../guanli/login.jsp");
			}
		%>
	<frameset rows="33,*" border=0 frameborder="YES" name="top_frame">
		<frame src="TopFrame.jsp?" noresize frameborder="NO" name="ads" scrolling="NO" marginwidth="0" marginheight="0">
		<frameset rows="675" cols="175,*" border=0 name="down_frame">
			<frame src="LeftFrame.jsp" noresize name="list" marginwidth="0" marginheight="0">
			<frame src="RightFrame.jsp" name="main" marginwidth="0" marginheight="0">
		</frameset>
	</frameset>
	<noframes>
	</noframes>
</html>
