<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <TITLE>FAQ����ϵͳ</TITLE>
    <base href="<%=basePath%>">
<link href="images/keymen.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style5 {color: #FFFFFF}
-->
</style>
</head>

<body>
<table width="845" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr align="center">
    <td align="left"><img src="images/logo.jpg" alt="11" width="339" height="109"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/19.jpg"><img src="images/18.jpg" alt="11" width="650" height="135"></td>
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
          <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#0099FF">
            <tr>
              <td><img src="admin/images/userlogin.gif" width="200" height="40"></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
                  <tr>
                    <td bgcolor="#FFFFFF"><table width="90%"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
                        <tr bgcolor="#FFFFFF">
                          <td height="32" align="center" valign="middle" class="maintxt">�û�����</td>
                          <td><input name="textfield" type="text" size="12" maxlength="12"></td>
                        </tr>
                        <tr bgcolor="#FFFFFF">
                          <td height="32" align="center" valign="middle" class="maintxt">�û�����</td>
                          <td><input name="textfield2" type="text" size="12" maxlength="12"></td>
                        </tr>
                        <tr bgcolor="#FFFFFF">
                          <td height="32" align="center" valign="middle" class="maintxt">��֤��</td>
                          <td><input name="textfield3" type="text" size="12" maxlength="12"></td>
                        </tr>
                        <tr bgcolor="#FFFFFF">
                          <td height="32" colspan="2">
                            <div align="right">
                              <input type="submit" name="Submit" value="�û���¼">
                          </div></td>
                        </tr>
                    </table></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><a href="userreg.jsp"><img src="admin/images/userreg.gif" width="200" height="32" border="0"></a></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
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
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Oracle10g���ݿ�</td>
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
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><br>
                        <table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
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
          </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
      <br>
        <br>
        <br></td>
    <td valign="top"><table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="26" background="images/bg.jpg" class="maintitle">����<span class="maintitle2">���������ظ�</span></td>
          <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2"><br>
              <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#CCCCCC">
                  <td height="28" align="center" valign="middle"><div align="left">��������</div></td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td colspan="3" class="maintxt">�����ʡ���Struts1.2���ϴ�ͼƬ��ô����������ʾ��<br>
                      ���ϴ���ͼƬ���ǲ��ܹ�������ʾ��Ϣ���������ص�ʱ�����ʹ���ļ������ܹ�������ʾ������Ϣ��</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td width="20%" class="maintxt">�����ߣ�����</td>
                      <td width="20%" class="maintxt">ʱ�䣺2009-1-3</td>
                    </tr>
                  </table></td>
                </tr>
              </table>
              <br>
              <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#993300">
                <tr bgcolor="#CCCCCC">
                  <td height="28" align="center" valign="middle" bgcolor="#FB5846"><div align="left">��Ѵ�</div></td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="3" class="maintxt">������𰸡���Struts1.2���ϴ�ͼƬ��ô����������ʾ��<br>
            ���ϴ���ͼƬ���ǲ��ܹ�������ʾ��Ϣ���������ص�ʱ�����ʹ���ļ������ܹ�������ʾ������Ϣ��</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td width="20%" class="answertxt">�ش��ߣ�����</td>
                        <td width="20%" class="answertxt">ʱ�䣺2009-1-3</td>
                      </tr>
                  </table></td>
                </tr>
              </table>      
              
                        
              <br>
              <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
                <tr bgcolor="#CCCCCC">
                  <td width="20%" height="28" align="center" valign="middle"><div align="center">���������б�</div></td>
                  <td width="20%" align="center" valign="middle"><div align="center"><a href="index.jsp">������ҳ</a></div></td>
                  <td width="20%" align="center" valign="middle">&nbsp;</td>
                  <td width="20%" align="center" valign="middle">&nbsp;</td>
                  <td width="20%" align="center" valign="middle">&nbsp;</td>
                </tr>
            </table>              
            <!-- ��Ա�ظ����� -->
             <form action="" name="myform" method="post">
              <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td class="maintxt">�ظ�����</td>
                      </tr>
                      <tr>
                         <td><textarea  width="100%" rows="10" cols="80"></textarea></td>
                      </tr>
                       <tr>
                         <td align="center"><input type="submit" name="submit" value="�ύ">
                                                        <input type="reset" name="reset" value="ȡ��"></td>
                      </tr>
                  </table></td>
                </tr>
              </table>    
              </form>
            <br>
              <br></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
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
