<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
 
  <title>�û�����--�޸��û�</title>
  <base href="<%=basePath%>">
  <link href="../css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-location">
    <tr>
      <td height=25><img src="../images/web_icon01.gif" width="11" height="8" align="absmiddle"> ��ǰλ�ã��û�����</td>
    </tr>
  </table>
  <table width="100%" align="center" class="table-list">
    <tr>
      <td>
        <table align="center" class="table-form">
          <tr>
            <td colspan="5" class="table-title"> �޸��û�</td>
          <tr>
            <td width="10%" class="table-list_title">����</td>
            <td width="40%"><input name="textfield2" type="text" class="input" value="1004"> <span class="red">*</span></td>
            <td width="10%" class="table-list_title">����</td>
            <td width="40%"><input name="textfield2" type="text" class="input" value="����"> <span class="red">*</span></td>
          </tr>
          <tr>
            <td class="table-list_title">�Ա�</td>
            <td>
              <select name="select">
                <option>��</option>
                <option>Ů</option>
              </select>
              <span class="red">*</span></td>
            <td class="table-list_title">ְλ</td>
            <td>
              <select name="select" class="input">
                <option>AR����Ա</option>
                <option>CE����Ա</option>
                <option selected>�������Ա</option>
                <option>����Ա</option>
              </select>
              <span class="red">*</span></td>
          </tr>
          <tr>
            <td class="table-list_title">����</td>
            <td><input name="textfield22" type="text" class="input" value="�����������"> <span class="red">*</span></td>
            <td class="table-list_title">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="30%" class="pizhu">˵�������д�<span class="red">*</span>��Ϊ������</td>
            <td height="30" style="padding-right:300px;" class="table-button"> <input type="button" value="�ύ" name="B333" class="input" onClick="location.href('user_manage.jsp')"> <input type="button" value="����" name="B332" class="input" onClick="location.href('#')"> </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>