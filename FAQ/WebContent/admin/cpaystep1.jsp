<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<html>
  <head>
    <TITLE>FAQ����ϵͳ</TITLE>
    <base href="<%=basePath%>">
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;ϵͳ����&gt;&gt;ѧ���ɷ���Ϣ����(����ѧ��)</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">��ѧ���ɷ���Ϣ��������ѧ�ѣ�</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td colspan="3" bgcolor="#FFFFFF"><br>
 ����������ѧԱ��� �� <br>
              <br>
              <table width="95%"  border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#FFFFFF">
                  <td width="15%" height="24"><div align="center">ѧԱע���</div></td>
                  <td width="16%" height="24"><input name="regcode" type="text" id="regcode" size="20" maxlength="20"></td>
                  <td height="24"><input type="submit" name="Submit" value="��һ��"></td>
                </tr>
            </table>
          <br></td>
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
