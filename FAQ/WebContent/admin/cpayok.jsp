<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">
<style type="text/css">
<!--
.style1 {color: #CC0000}
-->
</style>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;系统管理&gt;&gt;学生缴费信息管理(续交学费)</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　学生缴费信息管理（续交学费）</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td colspan="3" bgcolor="#FFFFFF"><br>　
            <span class="style1">恭喜你，学费收缴成功！</span><br>
            <br>        
                　            显示缴费历史信息<br>
              <br>
              <br>
              <table width="95%"  border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td width="13%" height="24"><div align="center">学员注册号</div></td>
                  <td width="9%" height="24"><div align="center">学员姓名</div></td>
                  <td width="12%" height="24"><div align="center">缴费日期</div></td>
                  <td width="12%" height="24"><div align="center">缴费金额</div></td>
                  <td width="15%" align="center" valign="middle"><div align="center">票据编号</div></td>
                  <td width="14%" align="center" valign="middle"><div align="center">票据类型</div></td>
                  <td width="12%" align="center" valign="middle"><div align="center">学期数</div></td>
                  <td width="13%" align="center" valign="middle"><div align="center">经办人</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">&nbsp;</td>
                  <td height="24">&nbsp;</td>
                  <td height="24">&nbsp;</td>
                  <td height="24">&nbsp;</td>
                  <td align="center" valign="middle">&nbsp;</td>
                  <td align="center" valign="middle">&nbsp;</td>
                  <td align="center" valign="middle">&nbsp;</td>
                  <td align="center" valign="middle">&nbsp;</td>
                </tr>
            </table>
          <br>
          <table width="95%"  border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#AFC8E7">
              <td width="13%" height="24"><div align="center">学员注册号</div></td>
              <td width="9%" height="24"><div align="center">学员姓名</div></td>
              <td width="12%" height="24"><div align="center">缴费合计</div></td>
              <td width="12%" height="24"><div align="center">应付学费</div></td>
              <td width="15%" align="center" valign="middle"><div align="center">实收学费</div></td>
              <td width="14%" align="center" valign="middle"><div align="center">欠费</div></td>
              <td width="12%" align="center" valign="middle"><div align="center">缴费状态</div></td>
              <td width="13%" align="center" valign="middle"><div align="center"></div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">&nbsp;</td>
              <td height="24">&nbsp;</td>
              <td height="24">&nbsp;</td>
              <td height="24">&nbsp;</td>
              <td align="center" valign="middle">&nbsp;</td>
              <td align="center" valign="middle">&nbsp;</td>
              <td align="center" valign="middle">&nbsp;</td>
              <td align="center" valign="middle">&nbsp;</td>
            </tr>
          </table>
          <br>
          <table width="95%"  border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#FFFFFF">
              <td height="24"><input type="submit" name="Submit" value="添加新的缴费信息"></td>
              </tr>
          </table>
          <br></td>
        </tr>
        <tr valign="top">
          <td colspan="3" bgcolor="#FFFFFF">&nbsp;</td>
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
