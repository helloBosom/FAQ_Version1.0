<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<html>
<head>
<title>FAQ��Ϣ����ϵͳ</title>
<base href="<%=basePath%>">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #CC0000}
-->
</style>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;ע���û�����&gt;&gt;���ע���û���Ϣ</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">��<span class="txt14">���ע���û���Ϣ</span></td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td colspan="3" bgcolor="#FFFFFF"><br>
              <br>
          <table width="95%"  border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#FFFFFF">
              <td width="15%" height="24">ѧԱע����ˮ��</td>
              <td width="16%" height="24"><input name="studid" type="text" id="studid" size="16" maxlength="16"></td>
              <td width="16%" height="24">ע������</td>
              <td width="17%" height="24"><input name="regdate" type="text" id="regdate" size="16" maxlength="16"></td>
              <td width="12%" rowspan="5"><div align="left">��Ƭ</div></td>
              <td width="24%" rowspan="5">&nbsp;</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">ѧԱע���</td>
              <td height="24"><input name="regcode" type="text" id="regcode" size="16" maxlength="16"></td>
              <td height="24">&nbsp;</td>
              <td height="24">&nbsp;</td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">ѧԱ����</td>
              <td height="24"><input name="studname" type="text" id="studname" size="16" maxlength="16"></td>
              <td height="24">��������</td>
              <td height="24"><input name="birthday" type="text" id="birthday" size="16" maxlength="16"></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">�Ա�</td>
              <td height="24"><input name="studgender" type="radio" value="radiobutton" checked>
                �� 
                <input type="radio" name="studgender" value="radiobutton"> 
                Ů </td>
              <td height="24">���֤��</td>
              <td height="24"><input name="studsid" type="text" id="studsid" size="20" maxlength="20"></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">��ҵԺУ</td>
              <td height="24"><input name="studcollege" type="text" id="studcollege" size="16" maxlength="16"></td>
              <td height="24">רҵ</td>
              <td height="24"><input name="studmajor" type="text" id="studmajor" size="16" maxlength="16"></td>
              </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">��ϵ�绰</td>
              <td height="24"><input name="telphone" type="text" id="telphone" size="16" maxlength="16"></td>
              <td height="24">�ֻ�</td>
              <td height="24"><input name="mobile" type="text" id="mobile" size="16" maxlength="16"></td>
              <td width="12%">��ͥסַ</td>
              <td width="24%"><input name="address" type="text" id="address" size="20"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">QQ</td>
              <td height="24"><input name="studqq" type="text" id="studqq" size="16" maxlength="16"></td>
              <td height="24">MSN</td>
              <td height="24"><input name="studmsn" type="text" id="studmsn" size="16" maxlength="16"></td>
              <td width="12%">��������</td>
              <td width="24%"><input name="postcode" type="text" id="postcode" size="20"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">Email</td>
              <td height="24"><input name="studemail" type="text" id="studemail" size="16" maxlength="16"></td>
              <td height="24">Ӣ��ˮƽ</td>
              <td height="24"><select name="englishlevel" id="englishlevel">
                <option value="һ��">һ��</option>
                <option value="��ѧ�ļ�">��ѧ�ļ�</option>
                <option value="��ѧ����">��ѧ����</option>
                <option value="����">����</option>
                <option value="����">����</option>
              </select></td>
              <td height="24">&nbsp;</td>
              <td height="24">&nbsp;</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">ѧϰרҵ</td>
              <td height="24"><select name="major" id="major">
                </select></td>
              <td height="24">�༶���</td>
              <td height="24"><select name="batchcode" id="batchcode">
                </select></td>
              <td height="24">��ѧ����</td>
              <td height="24"><input name="enrolldate" type="text" id="enrolldate"></td>
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
