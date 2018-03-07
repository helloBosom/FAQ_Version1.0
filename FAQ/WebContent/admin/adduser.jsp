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
    <td class="txt14">你的位置：&gt;&gt;系统管理&gt;&gt;系统用户管理</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　用户管理信息</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
		  <form name="form1" method="post" action="" onSubmit="return checkUser();">
              <table width="50%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">添加新用户</div>                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28"><div align="right">用户名称　　</div></td>
                  <td><input name="username" type="text" id="username" size="16" maxlength="16" ></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28"><div align="right">用户密码　　</div></td>
                  <td><input name="password" type="password" id="password" size="16" maxlength="16"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28"><div align="right">重复密码　　</div></td>
                  <td><input name="repass" type="password" id="repass" size="16" maxlength="16"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28"><div align="right">用户类型　　</div></td>
                  <td><select name="usertype" id="usertype">
                    <option value="系统管理员">系统管理员</option>
                    <option value="操作员">操作员</option>
                    <option value="普通用户">普通用户</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28"><div align="right"></div></td>
                  <td>&nbsp;</td>
                </tr>
            </table>
			  <br>
			  <table width="50%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr >
                  <td height="28">                    <div align="center">
                      <input name="submit" type="submit" id="submit"  value=" 新增用户 ">
                      　
                      <input name="submit2" type="reset" id="submit2"  value=" 取消重填 ">
                  </div></td></tr>
              </table>
		  </form>
          <br>
          </td>
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
