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
<form name="form1" method="post" action="<%=path %>/admin/AnnouncementServlet?method=add">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;公告管理&gt;&gt;添加公告</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　公告信息</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">增加新公告</div></td>
                </tr>
                   <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28" align="center">公告编号</td>
                  <td height="28"><input name="announcementId" type="text" id="batchname" value="" size="60" maxlength="60"></td>
                </tr>
      
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">公告内容</td>
                  <td width="40" height="60"><label>
                    <textarea name="announcementContent" id="textarea" cols="45" rows="40"></textarea>
                  </label></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">公告人</td>
                 <td height="28"><input name="publisherId"  value="1001" type="text" id="publisherId" readonly="readonly"></td>
                <tr bgcolor="#FFFFFF">
                  <td height="28" colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="确定添加">
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
