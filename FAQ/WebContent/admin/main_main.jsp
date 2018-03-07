<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<html>
<head>

<title>FAQ信息管理系统</title>
<base href="<%=basePath%>">
</head>

<frameset rows="95,*" cols="*" frameborder="NO" border="0" framespacing="0">
  <frame src="top.jsp" name="topFrame" scrolling="NO" noresize>
  <frameset rows="*" cols="183
  ,*" framespacing="0" frameborder="NO" border="0">
    <frame src="left.jsp" name="leftFrame" scrolling="NO" noresize>
    <frame src="main.jsp" name="mainFrame">
  </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html>
