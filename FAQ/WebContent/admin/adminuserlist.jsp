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
<style type="text/css">
<!--
.style1 {color: #CC0000}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;注册用户管理&gt;&gt;添加注册用户信息</td>
  </tr>
  <tr>
    <td class="txt14"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><div align="right">[<a href="adduser.jsp">添加新用户</a>]</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　系统用户信息管理</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td colspan="3" bgcolor="#FFFFFF"><br>
              <table width="98%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td width="5%" height="28"><div align="center">ID</div></td>
                  <td height="28"><div align="center">用户名称</div></td>
                  <td height="28"><div align="center">用户类型</div></td>
                  <td width="20%"><div align="center">用户最后一次登录时间</div></td>
                  <td width="20%" height="28"><div align="center">用户登录IP地址</div></td>
                  <td width="10%" height="28"><div align="center">用户登录次数</div></td>
                  <td height="28"><div align="center">系统操作</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28">&nbsp;</td>
                  <td width="10%">&nbsp;</td>
                  <td width="10%">&nbsp;</td>
                  <td width="5%">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><div align="center">修改 删除 </div></td>
                </tr>
              </table>
              <br>
          </td>
        </tr>
    </table>
    <br></td>
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
