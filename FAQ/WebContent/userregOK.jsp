<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <TITLE>FAQ����ϵͳ</TITLE>
    <base href="<%=basePath%>">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="images/keymen.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style4 {color: #FF0000}
.style5 {color: #FFFFFF}
-->
</style>
</head>

<body>
<table width="845" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr align="center">
    <td align="left"><img src="images/logo.jpg" alt="LOGOS" width="339" height="109"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/19.jpg"><img src="images/18.jpg" alt="LOGOS" width="650" height="135"></td>
  </tr>
</table>
<table width="845"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="32" align="left" background="images/navbg.gif"><table width="90%" height="32"  border="0" align="left" cellpadding="0" cellspacing="0">
        <tr class="navtxt">
          <td><div align="center"><a href="index.jsp">��ҳ</a></div></td>
          <td><div align="center"><a href="tuijianfaqlist.jsp">�Ƽ�����</a></div></td>
          <td><div align="center"><a href="wfaqlist.jsp">δ��������</a></div></td>
          <td><div align="center"><a href="yfaqlist.jsp">�Ѵ�������</a></div></td>
          <td><div align="center"><a href="tuijianfaqlist.jsp">��������</a></div></td>
          <td><div align="center"><a href="postquestion.jsp">��Ҫ����</a></div></td>
          <td><div align="center"><a href="userreg.jsp">��Ҫע��</a></div></td>
          <td><div align="center">ʹ�ð���</div></td>
          <td><div align="center"><a href="usercenter.jsp">�û�����</a></div></td>
          <td><div align="center"><a href="admin/index.jsp">��¼��̨</a></div></td>
        </tr>
    </table></td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
  <tr>
    <td height="8"></td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="200" align="center" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      
    </table>
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="32" background="images/lefttitlebg02.jpg" class="maintitle2">��</td>
        </tr>
        <tr>
          <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
            <tr>
              <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">һ�����ʣ�</td>
            </tr>
            <tr>
              <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">�Ѿ���������⣺</td>
            </tr>
            <tr>
              <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">�д���������⣺</td>
            </tr>
            <tr>
              <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">���������û���</td>
            </tr>
            <tr>
              <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">��������������û���</td>
            </tr>
          </table></td>
        </tr>
        
      </table>      
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="32" background="images/lefttitlebg.jpg" class="maintitle2">��</td>
        </tr>
        <tr>
          <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">JAVA SE6.0</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">JSP</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Struts1.2 Struts2.0</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Hibernate</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Spring</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><a href="faqlist.jsp">Oracle10g���ݿ�</a></td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">JavaScript��HTML</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF">WEB����������</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF">��������</td>
              </tr>
          </table></td>
        </tr>
       
      </table>      
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="32" background="images/lefttitlebg03.jpg" class="maintitle2">��</td>
        </tr>
        <tr>
          <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><br>                  <table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>����</td>
                    <td>556840</td>
                  </tr>
                  <tr>
                    <td>����</td>
                    <td>556840</td>
                  </tr>
                  <tr>
                    <td>����</td>
                    <td>556840</td>
                  </tr>
                  <tr>
                    <td>����</td>
                    <td>556840</td>
                  </tr>
                  <tr>
                    <td>����Ա</td>
                    <td>556840</td>
                  </tr>
                </table>
                <br></td>
              </tr>
          </table></td>
        </tr>
      </table>      
      <br>
      <br>
      <br>      
      <br>
    <br></td>
    <td valign="top"><table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="26" background="images/bg.jpg" class="maintitle">����<span class="maintitle2">�û�ע��</span></td>
        <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><br>          <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
          <tr bgcolor="#CCCCCC">
            <td height="28" colspan="2" align="center" valign="middle"><div align="center">�û�ע��ɹ���Ϣ</div>              </td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td colspan="2"><div align="center">
              <p>&nbsp;</p>
              <p class="style4">��ϲ�㣬ע��ɹ���</p>
              <p>����Ե��������Ͼ�[<a href="login.jsp">��¼ϵͳ</a>]</p>
            </div>              </td>
            </tr>
        </table>
          <br>
          <br>
          <br></td>
      </tr>
     
    </table>
      <br>
      <br>
      <br>
      <br></td>
  </tr>
</table>
<table width="845"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#000000" height="6"></td>
  </tr>
  <tr>
    <td height="64" bgcolor="#5a8ddc"><p class="style5"><strong>��ַ</strong>�������и��¼�����ҵ��������ҵ1·11����������������ѧԺʵѵ����<br>
      �����и��¼�����ҵ�������Ƽ���·68���������԰�ط��C101 E102</p></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc"><span class="style5"><strong>�绰</strong>��029-87607249  87669779</span></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc">&nbsp;</td>
  </tr>
</table>
</body>
</html>
