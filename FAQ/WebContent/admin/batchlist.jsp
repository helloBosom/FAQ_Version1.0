<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">
<link href="css/styles.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;系统管理&gt;&gt;班级管理</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
      <tr>
        <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
        <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　班级管理信息</td>
        <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
      </tr>
      <tr valign="top">
        <td height="400" colspan="3" bgcolor="#FFFFFF"><br>          <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1">
          <tr bgcolor="#FFFFFF">
            <td height="32"><div align="right">[<a href="addbatch.jsp">添加新班级</a>]</div></td>
          </tr>
        </table>        <br>
        <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
          <tr bgcolor="#AFC8E7">
            <td height="28"><div align="center">班级编号</div></td>
            <td height="28"><div align="center">班级名称</div></td>
            <td height="28"><div align="center">班级类型</div></td>
            <td><div align="center">开班日期</div></td>
            <td height="28"><div align="center">结束日期</div></td>
            <td height="28"><div align="center">上课时间段</div></td>
            <td height="28"><div align="center">学期数</div></td>
            <td height="28"><div align="center">专业编号</div></td>
            <td width="20%"><div align="center">班级状态</div></td>
            <td height="28"><div align="center">系统操作</div></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
