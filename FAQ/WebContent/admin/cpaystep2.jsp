<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">
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
              <br>
              <table width="95%"  border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#FFFFFF">
                  <td width="15%" height="24">学员缴费流水号</td>
                  <td width="16%" height="24"><input name="payid" type="text" id="payid" size="16" maxlength="16"></td>
                  <td width="16%" height="24">缴费日期</td>
                  <td width="17%" height="24"><input name="paydate" type="text" id="paydate" size="16" maxlength="16"></td>
                  <td width="10%" rowspan="7" align="center" valign="middle">照片                  </td>
                  <td width="26%" rowspan="7" align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">学员注册号</td>
                  <td height="24"><input name="regcode" type="text" id="regcode" size="16" maxlength="16"></td>
                  <td height="24">已付学费</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">学员姓名</td>
                  <td height="24"><input name="studname" type="text" id="studname" size="16" maxlength="16"></td>
                  <td height="24">欠款</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">学员类型</td>
                  <td height="24" colspan="2"><input name="radiobutton" type="radio" value="radiobutton" checked>
                  个人
                    <input type="radio" name="radiobutton" value="radiobutton">
                  企业
                  <input type="radio" name="radiobutton" value="radiobutton">
                  团体</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">缴费类型</td>
                  <td height="24"><input name="textfield6" type="text" value="续交学费" size="16" maxlength="16"></td>
                  <td height="24">票据类型</td>
                  <td height="24"><select name="select2">
                      <option value="收款收据" selected>收款收据</option>
                      <option value="办学发票">办学发票</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">学期数</td>
                  <td height="24"><select name="select3">
                      <option value="第一学期" selected>第一学期</option>
                      <option value="第二学期">第二学期</option>
                      <option value="一二学期">一二学期</option>
                  </select></td>
                  <td height="24">票据编号</td>
                  <td height="24"><input name="textfield3" type="text" size="16" maxlength="16">
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">本次缴费</td>
                  <td height="24"><input name="textfield42" type="text" size="16" maxlength="16"></td>
                  <td height="24">&nbsp;</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">经办人</td>
                  <td height="24"><select name="operator" id="select3">
                  </select></td>
                  <td height="24" colspan="4">&nbsp;</td>
                </tr>
            </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1">
        <tr>
          <td height="28"><div align="right">
              <input type="submit" name="Submit2" value="确定缴费">
              <input type="submit" name="Submit3" value="清除重填">
          </div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
