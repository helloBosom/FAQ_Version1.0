<%@ page language="java" pageEncoding="gb2312" %>
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
        <td align="left"><img src="images/logo.jpg" alt="LOGOS" width="339" height="109"></td>
        <td>&nbsp;</td>
    </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td background="images/19.jpg"><img src="images/18.jpg" alt="LOGOS" width="650" height="135"></td>
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
                                                <td>
                                                    <input name="userpassword" type="password" size="12" maxlength="12">
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
                    <td><a href="<%=path %>/IndexServlet?method=queryQuestionType1">
                        <img src="admin/images/userreg.gif"
                             width="200" height="32"
                             border="0">
                    </a></td>
                </tr>
            </table>
            <br>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><a href="<%=path %>/IndexServlet?method=queryQuestionType">
                        <img src="admin/images/question.gif"
                             width="200" height="40">
                    </a>
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
        <td valign="top">
            <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="26" background="images/bg.jpg" class="maintitle">����<span class="maintitle2">[��ҳ]&gt;&gt;[δ���������б�]&gt;&gt;[Oracle]</span>
                    </td>
                    <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;
                    </td>
                </tr>

                <tr>
                    <td colspan="2"><br>
                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
                            <!--��ʾδ��������-->
                            <c:choose>
                                <c:when test="${empty  questions}">
                                    <tr bgcolor="#FFFFFF" class="maintxt">
                                        <td height="28" colspan="3">no data!</td>
                                    </tr>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="v" items="${questions }">
                                        <tr bgcolor="#FFFFFF" class="maintxt">
                                            <td height="28"><a
                                                    href="<%=path%>/DisplayQuestionServlet?questionId=${v.publish_question_id}&method=querycontentbyid"
                                                    target="_blank">${v. title}</a></td>
                                            <td width="20%" height="28" align="center">${v.publishTime}</td>
                                            <td width="20%" height="28" align="center">${v.publisherId}</td>
                                        </tr>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </table>
                        <br>
                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
                            <tr bgcolor="#CCCCCC">
                                <td height="28" align="center" valign="middle">
                                    <div align="center"></div>
                                    <div align="center">
                                        <table width="80%" height="28" border="0" align="center" cellpadding="0"
                                               cellspacing="0">
                                            <tr>
                                                <td>
                                                    <div align="center">��ҳ</div>
                                                </td>
                                                <td>
                                                    <div align="center">��һҳ</div>
                                                </td>
                                                <td>
                                                    <div align="center">��һҳ</div>
                                                </td>
                                                <td>
                                                    <div align="center">���һҳ</div>
                                                </td>
                                                <td>
                                                    <div align="center">��ת����
                                                        <select name="select">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                        </select>
                                                        ҳ
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
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
</body>
</html>
