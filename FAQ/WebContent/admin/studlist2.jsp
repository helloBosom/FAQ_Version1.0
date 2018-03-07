<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<html>
<head>
<title>FAQ信息管理系统</title>
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
        <td><div align="right">[<a href="studreg.jsp">添加新用户</a>]</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　<span class="txt14">添加注册用户信息</span></td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td colspan="3" bgcolor="#FFFFFF"><br>
              <table width="98%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td width="5%" height="28"><div align="center">ID</div></td>
                  <td height="28"><div align="center">学员注册号</div></td>
                  <td height="28"><div align="center">学员姓名</div></td>
                  <td><div align="center">性别</div></td>
                  <td width="10%" height="28"><div align="center">班级编号</div></td>
                  <td width="10%" height="28"><div align="center">联系电话</div></td>
                  <td height="28"><div align="center">手机</div></td>
                  <td height="28"><div align="center">QQ</div></td>
                  <td><div align="center">电子邮件</div></td>
                  <td height="28"><div align="center">系统操作</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28">&nbsp;</td>
                  <td width="10%">&nbsp;</td>
                  <td width="10%">&nbsp;</td>
                  <td width="5%">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td width="10%">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><div align="center">修改 删除 锁定 解锁</div></td>
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
