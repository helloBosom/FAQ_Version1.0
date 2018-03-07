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

<body>
<form name="form1" method="post" action="">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;系统管理&gt;&gt;班级管理</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　班级管理信息</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">修改班级信息</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28" align="center">班级名称</td>
                  <td height="28"><input name="batchname" type="text" id="batchname" value="" size="20" maxlength="20"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28" align="center">班级类型</td>
                  <td height="28"><select name="batchtype" id="batchtype">
                    <option value="脱产班">脱产班</option>
                    <option value="周末班">周末班</option>
                    <option value="晚班">晚班</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">开班日期</td>
                  <td height="28"><input name="startdate" type="text" id="startdate"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">结束日期</td>
                  <td height="28"><input name="enddate" type="text" id="enddate"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">上课时间段</td>
                  <td height="28"><input name="batchslot" type="text" id="batchslot"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">学期数</td>
                  <td height="28"><select name="sem" id="sem">
                    <option value="第一学期">第一学期</option>
                    <option value="第二学期">第二学期</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">专业名称</td>
                  <td height="28"><select name="major" id="major">
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="确定修改">
                        　&nbsp;&nbsp;
                        <input type="submit" name="Submit2" value="清除重填">
                  </div></td>
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
</form>
</body>
</html>
