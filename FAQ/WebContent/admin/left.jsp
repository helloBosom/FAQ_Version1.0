<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<base href="<%=basePath%>">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {color: #FFFFFF}
-->
</style>
<link href="<%=path%>/admin/css/styles.css" rel="stylesheet" type="text/css">



<style type="text/css">
<!--
.style2 {color: #0033FF}
.style4 {
	color: #1c5290;
	font-weight: bold;
}
.style6 {color: #000000}
-->
</style>
</head>

<body>
<table width="115%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="15%"><img src="<%=path%>/admin/images/left_index.gif" width="153" height="43"></td>
    <td width="85%" valign="top"><img src="<%=path%>/admin/images/left_conner.gif" width="44" height="31"></td>
  </tr>
  <tr>
    <td background="<%=path%>/admin/images/left_index_back.gif">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="780" valign="top" background="<%=path%>/admin/images/left_index_back.gif">
    <c:forEach items="${power}" var="v">
     <c:if test="${ v.key == 'F1001'}">
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">       

      <tr>
        <td height="32" bgcolor="#c5d0e9"><div align="left" class="style1 style2">���������</div></td>
      </tr>
       <c:forEach items="${power['F1001']}" var="m">
      <c:if test="${m == 'F1002'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="<%=path%>/admin/addquestiontype.jsp" target="BoardRight">����������</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1003'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="<%=path%>/admin/QuestionClassifyServlet" target="BoardRight">����б�</a></div></td>
      </tr></c:if>
      </c:forEach>
     
      </table>
      </c:if>
     <c:if test="${ v.key == 'F1004'}">
     <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">   
      <tr>
        <td height="32" bgcolor="#c5d0e9"><div align="left" class="style1 style2">��<span class="style4">�������</span></div></td>
      </tr>
      <c:forEach items="${power['F1004']}" var="m">
     <c:if test="${m == 'F1005'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="<%=path %>/admin/QuestionServlet?method=queryquestiontype" target="BoardRight">���������</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1006'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="<%=path %>/admin/QuestionServlet?method=queryno&sta=no" target="BoardRight">δ��������б�</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1007'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center"><a href="<%=path %>/admin/QuestionServlet?method=queryok&sta=ok" target="BoardRight">�ѽ�������б�</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1008'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center"><a href="<%=path %>/admin/QuestionServlet?method=queryall&sta=all" target="BoardRight">���������б�</a></div></td>
      </tr></c:if>
      </c:forEach> 
    </table>
        </c:if> 
    
   <c:if test="${ v.key == 'F1009'}">
     <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
    
      <tr>
        <td height="32" bgcolor="#c5d0e9"><div align="left" class="style1 style2">��<span class="style4">�û�����</span></div></td>
      </tr>
      <c:forEach items="${power['F1009']}" var="m">  
      <c:if test="${m == 'F1010'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="studreg.jsp" target="BoardRight">ע���û�����</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1011'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="<%=path %>/admin/UserMemberServlet" target="BoardRight">ע���û���ѯ</a></div></td>
      </tr></c:if>
       </c:forEach>
    </table>
    </c:if>
    
     <c:if test="${ v.key == 'F1012'}">
     <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC"> 
      <tr>
        <td height="32" bgcolor="#c5d0e9"><div align="left" class="style1 style2">��<span class="style4">�������</span></div></td>
      </tr>
      <c:forEach items="${power['F1012']}" var="m">
      <c:if test="${m == 'F1013'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href ="<%=path %>/admin/AnnouncementServlet?method=add"  target="BoardRight">��ӹ���</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1014'}">
       <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href ="<%=path %>/admin/AnnouncementServlet?method=query"  target="BoardRight">�����ѯ</a></div></td>
      </tr></c:if></c:forEach>
    </table> 
    </c:if>
     
      <c:if test="${ v.key == 'F1015'}">
     <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">  
      <tr>
        <td height="32" bgcolor="#c5d0e9"><div align="left" class="style1 style2">Ȩ�޹���</div></td>
      </tr>
      <c:forEach items="${power['F1015']}" var="m">
       <c:if test="${m == 'F1016'}">  
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="<%=path%>/admin/RoleManagerServlet"" target="BoardRight">��ɫ����</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1017'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="<%=path%>/admin/UserManagerServlet" target="BoardRight">�û�����</a></div></td>
      </tr></c:if>
      <c:if test="${m == 'F1018'}">
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center"><a href="<%=path%>/admin/PowerDistributeServlet" target="BoardRight">Ȩ�޷���</a></div></td>
      </tr></c:if>
     </c:forEach>     
    </table>
    </c:if>
    </c:forEach>
    
    
    
    <br>
    <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
      <tr>
        <td height="32" bgcolor="#c5d0e9"><div align="left" class="style1 style2">���˳�ϵͳ</div></td>
      </tr>
      <tr>
        <td height="28" bgcolor="#98AAC2"><div align="center" class="style6"><a href="index.jsp" target="_top">�˳�ϵͳ</a></div></td>
        
      </tr>
    </table>
    <br>
    <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
      <tr>
        <td height="64" bgcolor="#c5d0e9"><div align="left" class="style1 style2">��</div></td>
      </tr>
    </table> </td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>  
