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
              <br>
              <table width="95%"  border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#FFFFFF">
                  <td width="15%" height="24">ѧԱ�ɷ���ˮ��</td>
                  <td width="16%" height="24"><input name="payid" type="text" id="payid" size="16" maxlength="16"></td>
                  <td width="16%" height="24">�ɷ�����</td>
                  <td width="17%" height="24"><input name="paydate" type="text" id="paydate" size="16" maxlength="16"></td>
                  <td width="10%" rowspan="7" align="center" valign="middle">��Ƭ                  </td>
                  <td width="26%" rowspan="7" align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">ѧԱע���</td>
                  <td height="24"><input name="regcode" type="text" id="regcode" size="16" maxlength="16"></td>
                  <td height="24">�Ѹ�ѧ��</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">ѧԱ����</td>
                  <td height="24"><input name="studname" type="text" id="studname" size="16" maxlength="16"></td>
                  <td height="24">Ƿ��</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">ѧԱ����</td>
                  <td height="24" colspan="2"><input name="radiobutton" type="radio" value="radiobutton" checked>
                  ����
                    <input type="radio" name="radiobutton" value="radiobutton">
                  ��ҵ
                  <input type="radio" name="radiobutton" value="radiobutton">
                  ����</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">�ɷ�����</td>
                  <td height="24"><input name="textfield6" type="text" value="����ѧ��" size="16" maxlength="16"></td>
                  <td height="24">Ʊ������</td>
                  <td height="24"><select name="select2">
                      <option value="�տ��վ�" selected>�տ��վ�</option>
                      <option value="��ѧ��Ʊ">��ѧ��Ʊ</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">ѧ����</td>
                  <td height="24"><select name="select3">
                      <option value="��һѧ��" selected>��һѧ��</option>
                      <option value="�ڶ�ѧ��">�ڶ�ѧ��</option>
                      <option value="һ��ѧ��">һ��ѧ��</option>
                  </select></td>
                  <td height="24">Ʊ�ݱ��</td>
                  <td height="24"><input name="textfield3" type="text" size="16" maxlength="16">
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">���νɷ�</td>
                  <td height="24"><input name="textfield42" type="text" size="16" maxlength="16"></td>
                  <td height="24">&nbsp;</td>
                  <td height="24">&nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="24">������</td>
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
              <input type="submit" name="Submit2" value="ȷ���ɷ�">
              <input type="submit" name="Submit3" value="�������">
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
