<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<html>
<head>
<title>FAQ��Ϣ����ϵͳ</title>
<base href="<%=basePath%>">
</head>

<body>
<form name="form1" method="post" action="">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;ϵͳ����&gt;&gt;�༶����</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">���༶������Ϣ</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">�޸İ༶��Ϣ</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28" align="center">�༶����</td>
                  <td height="28"><input name="batchname" type="text" id="batchname" value="" size="20" maxlength="20"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28" align="center">�༶����</td>
                  <td height="28"><select name="batchtype" id="batchtype">
                    <option value="�Ѳ���">�Ѳ���</option>
                    <option value="��ĩ��">��ĩ��</option>
                    <option value="���">���</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">��������</td>
                  <td height="28"><input name="startdate" type="text" id="startdate"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">��������</td>
                  <td height="28"><input name="enddate" type="text" id="enddate"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">�Ͽ�ʱ���</td>
                  <td height="28"><input name="batchslot" type="text" id="batchslot"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">ѧ����</td>
                  <td height="28"><select name="sem" id="sem">
                    <option value="��һѧ��">��һѧ��</option>
                    <option value="�ڶ�ѧ��">�ڶ�ѧ��</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">רҵ����</td>
                  <td height="28"><select name="major" id="major">
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="ȷ���޸�">
                        ��&nbsp;&nbsp;
                        <input type="submit" name="Submit2" value="�������">
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
