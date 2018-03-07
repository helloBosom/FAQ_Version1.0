<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin";
%>

<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">

</head>
<body>
  <img src="<%=path%>/admin/images/qie.jpg">
</body>
</html>