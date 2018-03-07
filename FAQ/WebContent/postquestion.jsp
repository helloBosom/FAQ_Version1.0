<%@ page language="java" import="java.util.*" pageEncoding="gb2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        .style3 {
            color: #FF0000;
            font-weight: bold;
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
                        <div align="center"><a href="<%=path %>/IndexServlet">��ҳ</a></div>
                    </td>

                    <td>
                        <div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionNo">δ��������</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionOk">�Ѵ�������</a></div>
                    </td>

                    <td>
                        <div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionType">��Ҫ����</a></div>
                    </td>
                    <td>
                        <div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionType1">��Ҫע��</a></div>
                    </td>


                    <td>
                        <div align="center"><a href="admin/index.jsp">��¼��̨</a></div>
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
            <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#0099FF">
                <tr>
                    <td><img src="admin/images/userlogin.gif" width="200" height="40"></td>
                </tr>
                <tr>
                    <td bgcolor="#FFFFFF">
                        <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
                            <tr>
                                <c:choose>
                                <c:when test="${empty sessionScope.username}">
                                <td bgcolor="#FFFFFF">
                                    <form name="loginform" action="<%=path %>/IndexServlet?method=login" method="post">
                                        <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1"
                                               bgcolor="#CCCCCC">
                                            <tr bgcolor="#FFFFFF">
                                                <td height="32" align="center" valign="middle" class="maintxt">�û���</td>
                                                <td><input name="username" type="text" size="12" maxlength="12"></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                                <td height="32" align="center" valign="middle" class="maintxt">�� ��</td>
                                                <td><input name="userpassword" type="password" size="12" maxlength="12">
                                                </td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                                <td height="32" colspan="2">
                                                    <div align="right">
                                                        <input type="submit" name="Submit" value="�û���¼">
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </td>
                                </c:when>
                                <c:otherwise>
                            <tr bgcolor="#FFFFFF">
                                <td height="32" colspan="2">
                                    <div align="right">
                                        <p>��ӭ����<span>${sessionScope.username} </span></p>
                                    </div>
                                </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                                <td height="32" colspan="2">
                                    <div align="right">
                                        <button name="logout" onclick="logout();">�˳���¼</button>
                                    </div>
                                </td>
                            </tr>

                            </c:otherwise>
                            </c:choose>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td><a href="<%=path %>/IndexServlet?method=queryQuestionType1"><img src="admin/images/userreg.gif"
                                                                                         width="200" height="32"
                                                                                         border="0"></a></td>
                </tr>
            </table>
            <br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><a href="<%=path %>/IndexServlet?method=queryQuestionType"><img src="admin/images/question.gif"
                                                                                        width="200" height="40"></a>
                    </td>
                </tr>
            </table>
            <br>
            <br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>&nbsp;</td>
                </tr>

            </table>

            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="32" background="images/lefttitlebg.jpg" class="maintitle2">��</td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
                            <c:choose>
                                <c:when test="${empty questionClassifys }">
                                    <tr>
                                        <td>no data!</td>
                                    </tr>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="v" items="${questionClassifys }">
                                        <tr>
                                            <td height="28" align="left" bgcolor="#FFFFFF"
                                                class="maintxt">${v.classifyName}</td>
                                        </tr>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </table>
                    </td>
                </tr>

            </table>
            <br>
            <br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br>
            <br>
            <br></td>
        <td align="center" valign="top">
            <table width="98%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="26" align="left" background="images/bg.jpg" class="maintitle">����<span
                            class="maintitle2">��������</span></td>
                    <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><br>
                        <form name="myform" action="<%=path%>/IndexServlet?method=addQuestion" method="post">
                            <!-- ������ -->
                            <input type="hidden" name="method" value="add">
                            <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="20%" height="28">
                                        <div align="center">�������</div>
                                    </td>
                                    <td height="28">
                                        <div align="left">
                                            <select name="uestionClassId">
                                                <c:choose>
                                                    <c:when test="${empty questionClassifys }">
                                                        <option value="-1">��������������</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:forEach var="v" items="${questionClassifys }">
                                                            <option value="${v.questionClassId}">${v. classifyName}</option>
                                                        </c:forEach>
                                                    </c:otherwise>
                                                </c:choose>

                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20%" height="28">
                                        <div align="center">�������</div>
                                    </td>
                                    <td height="28">
                                        <div align="left">
                                            <input name="title" type="text" size="50" maxlength="50">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20%" height="28">
                                        <div align="center">���ͷ���</div>
                                    </td>
                                    <td height="28">
                                        <div align="left">
                                            <select name="totle_score">
                                                <option value="10">10</option>
                                                <option value="20">20</option>
                                                <option value="30">30</option>
                                                <option value="40">40</option>
                                                <option value="50">50</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                    <td height="28" align="center">�Ѷȵȼ�</td>
                                    <td height="28">
                                        <input type="radio" name="grade_diffculty" id="level" value="1">
                                        ��
                                        <input type="radio" name="grade_diffculty" id="level2" value="2">
                                        һ��
                                        <input type="radio" name="grade_diffculty" id="level3" value="3">
                                        ����
                                        <input type="radio" name="grade_diffculty" id="level4" value="4">
                                        ��
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20%" height="28">
                                        <div align="center">��ϸ����</div>
                                    </td>
                                    <td height="28" align="left" valign="top"><textarea name="content" cols="60"
                                                                                        rows="10"></textarea></td>
                                </tr>
                                <tr>
                                    <td height="28" colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="28">
                                        <div align="center">������</div>
                                    </td>
                                    <td height="28"><input name="publisherId" value="${sessionScope.username }"
                                                           type="text" id="publisherId" readonly="readonly"></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div align="center">
                                            <input type="submit" name="Submit2" value="�����ҵ�����">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </form>
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
