<%@ page language="java" import="java.util.*" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <TITLE>FAQ����ϵͳ</TITLE>
    <base href="<%=basePath%>">
    <style type="text/css">
        <!--
        .style4 {
            color: #FF0000
        }

        .style5 {
            color: #FFFFFF
        }

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
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td height="32" align="left" background="images/navbg.gif">
            <table width="90%" height="32" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr class="navtxt">
                    <td>
                        <div align="center"><a href="index.jsp">��ҳ</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="tuijianfaqlist.jsp">�Ƽ�����</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="wfaqlist.jsp">δ��������</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="yfaqlist.jsp">�Ѵ�������</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="tuijianfaqlist.jsp">��������</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="postquestion.jsp">��Ҫ����</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="userreg.jsp">��Ҫע��</a></div>
                    </td>
                    <td>
                        <div align="center">ʹ�ð���</div>
                    </td>
                    <td>
                        <div align="center"><a href="usercenter.jsp">�û�����</a></div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
    <tr>
        <td height="8"></td>
    </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="200" align="center" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">

            </table>
            <br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="32" background="images/lefttitlebg02.jpg" class="maintitle2">��</td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
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
                        </table>
                    </td>
                </tr>
            </table>
            <br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="32" background="images/lefttitlebg.jpg" class="maintitle2">��</td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
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
                                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><a href="faqlist.jsp">Oracle10g���ݿ�</a>
                                </td>
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
                        </table>
                    </td>
                </tr>
            </table>
            <br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="32" background="images/lefttitlebg03.jpg" class="maintitle2">��</td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
                            <tr>
                                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><br>
                                    <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
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
                        </table>
                    </td>
                </tr>
            </table>
            <br>
            <br>
            <br>
            <br></td>
        <td valign="top">
            <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="26" background="images/bg.jpg" class="maintitle">����<span class="maintitle2">�û���¼</span>
                    </td>
                    <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><br>
                        <table width="95%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                            <tr bgcolor="#CCCCCC">
                                <td height="28" colspan="2" align="center" valign="middle">
                                    <div align="center">�û���¼ϵͳ</div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF" class="maintxt">
                                <td width="29%" height="32">
                                    <div align="center">ѧԱע��š�</div>
                                </td>
                                <td width="71%" height="13" align="center">
                                    <div align="left"> ��
                                        <input type="text" name="textfield">
                                        <span class="style4">*(*Ϊ������Ŀ)</span></div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF" class="maintxt">
                                <td height="32">
                                    <div align="center">�û����롡</div>
                                </td>
                                <td height="28" align="center">
                                    <div align="left"> ��
                                        <input type="text" name="textfield2">
                                        <span class="style4">*</span></div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF" class="maintxt">
                                <td height="32">
                                    <div align="center">ȷ�����롡</div>
                                </td>
                                <td height="28" align="center">
                                    <div align="left"> ��
                                        <input type="text" name="textfield3">
                                        <span class="style4">*</span></div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF" class="maintxt">
                                <td height="32">
                                    <div align="center">��֤�롡</div>
                                </td>
                                <td height="14" align="center">&nbsp;</td>
                            </tr>
                        </table>
                        <br>
                        <br>
                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="100%" height="32" align="center" valign="middle">
                                    <div align="center">
                                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="100%" height="28" align="center" valign="middle">
                                                    <div align="center">
                                                        <input type="submit" name="Submit" value="��¼ϵͳ">
                                                        ��
                                                        <input type="submit" name="Submit2" value="ȡ������">
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        ��
                                    </div>
                                </td>
                            </tr>
                        </table>
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
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td bgcolor="#000000" height="6"></td>
    </tr>
    <tr>
        <td height="32" bgcolor="#5a8ddc">&nbsp;</td>
    </tr>
</table>
</body>
</html>
