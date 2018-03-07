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
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;问题管理&gt;&gt;问题列表</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
      <tr>
        <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
        <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　最近热门问题列表[10个问题]</td>
        <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
      </tr>
      <tr valign="top">
        <td colspan="3" bgcolor="#FFFFFF"><br>          <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
          <tr bgcolor="#AFC8E7">
            <td width="10%" height="28"><div align="center">编号</div></td>
            <td height="28"><div align="center">问题内容</div>              <div align="center"></div>              <div align="center"></div>              <div align="center"></div></td>
            <td width="10%"><div align="center">发布人</div></td>
            <td width="10%" height="28"><div align="center">用户最近登录时间</div></td>
            <td height="28"><div align="center">用户IP地址</div></td>
            <td width="10%" height="28"><div align="center">系统操作</div></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"></div></td>
            <td>&nbsp;</td>
            <td width="10%">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
          <br></td>
      </tr>
    </table>
    <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
      <tr>
        <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
        <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　未解决问题列表[10个问题]</td>
        <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
      </tr>
      <tr valign="top">
        <td colspan="3" bgcolor="#FFFFFF"><br>
            <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
              <tr bgcolor="#AFC8E7">
                <td width="10%" height="28"><div align="center">编号</div></td>
                <td height="28"><div align="center">问题内容</div>
                    <div align="center"></div>
                    <div align="center"></div>
                    <div align="center"></div></td>
                <td width="10%"><div align="center">发布人</div></td>
                <td width="10%" height="28"><div align="center">用户最近登录时间</div></td>
                <td height="28"><div align="center">用户IP地址</div></td>
                <td width="10%" height="28"><div align="center">系统操作</div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td width="10%">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
            <br></td>
      </tr>
    </table>
    <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
      <tr>
        <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
        <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　已经解决问题列表[10个问题]</td>
        <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
      </tr>
      <tr valign="top">
        <td colspan="3" bgcolor="#FFFFFF"><br>
            <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
              <tr bgcolor="#AFC8E7">
                <td width="10%" height="28"><div align="center">编号</div></td>
                <td height="28"><div align="center">问题内容</div>
                    <div align="center"></div>
                    <div align="center"></div>
                    <div align="center"></div></td>
                <td width="10%"><div align="center">发布人</div></td>
                <td width="10%" height="28"><div align="center">用户最近登录时间</div></td>
                <td height="28"><div align="center">用户IP地址</div></td>
                <td width="10%" height="28"><div align="center">系统操作</div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td width="10%">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><div align="center"></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
            <br></td>
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
