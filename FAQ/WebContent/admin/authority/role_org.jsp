<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
  
  <title>��������</title>
   <base href="<%=basePath%>">
  <link href="../css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-location">
    <tr>
      <td height=25><img src="../images/web_icon01.gif" width="11" height="8" align="absmiddle"> ��ǰλ�ã������ɫ</td>
    </tr>
  </table>
  <table align="center" class="table-list">
    <tr>
      <td valign="top">
        <form name="form1" method="post" action="org_info.html">
          <table align="center" class="table-form">
            <tr>
              <td colspan="4" class="table-title"> �����ɫ</td>
            </tr>
            <tr>
              <td width="15%" class="table-list_title">���ڻ���</td>
              <td width="35%">����ʡ�ֹ�˾��������������</td>
              <td width="15%" class="table-list_title">ְλ����</td>
              <td width="35%">һ�㹤����Ա</td>
            </tr>
            <tr>
              <td class="table-list_title">ְλ���� </td>
              <td>������EOMS����Ա</td>
              <td class="table-list_title">ְλ����</td>
              <td>EOMS��Ŀά������</td>
            </tr>
          </table>
          <br>
          <table border="0" align="center" cellspacing="0" class="table-button">
            <tr>
              <td>
                <iframe name="left" width="250" height="300" src="left.html"></iframe>
              </td>
              <td width="40"> <input onClick="javascript:left.rightToLeft()" type="button" value="<<--" name="addUsers" class="cancle"> <br>
                <br>
                <input onClick="javascript:right.leftToRight()" type="button" value="-->>" name="removeUsers" class="cancle"> </td>
              <td>
                <iframe width="250" height="300" src="right.html" name="right"></iframe>
              </td>
            </tr>
          </table>
          <table align="center" cellpadding="0" cellspacing="6" class="table-button">
            <tr>
              <td><input name="submit" type="button" class="cancle" value="����" > <input name="reset" type="submit"  class="cancle" value="����"  > </td>
            </tr>
          </table>
        </form>
      </td>
    </tr>
  </table>
</body>
</html>
<script language="jscript">
    function beforeSubmit()
    {
        document.mainForm.newStr.value = left.rootTree.getAllOther();
        document.mainForm.submitButton.disabled = true;
        document.mainForm.cancleButton.disabled = true;
        document.mainForm.submit();
    }

    function cancle()
    {
        window.location = "#";
    }
</script>