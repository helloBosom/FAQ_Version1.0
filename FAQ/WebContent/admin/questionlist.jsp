<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<html>
<head>
<title>FAQ��Ϣ����ϵͳ</title>
<base href="<%=basePath%>">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #CC0000}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<script type="text/javascript">
	
	function deleteQuestionById(questionId,sta){
		if(window.confirm("ȷ��ɾ��������Ϊ:" +questionId+"�ļ�¼��?" )){
			
			window.location.href=
				"<%=path%>/admin/QuestionServlet?questionId="+questionId+"&sta="+sta+"&method=delete";
		}
	}
</script>

</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;�������&gt;&gt;���������б�>
  </tr>
  <tr>
    <td class="txt14"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><div align="right"></div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">��<span class="txt14">�����б�</span></td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td colspan="3" bgcolor="#FFFFFF"><br>
              <table width="98%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
              <tbody bgcolor="#fff">
                <tr bgcolor="#AFC8E7">
                  <td width="5%" height="28"><div align="center">ID</div></td>
                  <td width="30%" height="28"><div align="center">��������</div></td>
                  <td width="10%" height="28"><div align="center">���</div></td>
                  <td width="10%" height="28"><div align="center">����ʱ��</div></td>
                  <td width="10%" height="28"><div align="center">����IP��ַ</div></td>
                  <td width="10%"><div align="center">���ͷ���</div></td>
                  <td width="10%"><div align="center">״̬</div></td>
                  <td height="28"><div align="center">ϵͳ����</div></td>
                </tr>
                 <c:choose>
                	<c:when test="${empty questions }">
                		<tr>
                			<td colspan="5">no data</td>
                		</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v"  items="${questions}"	>
                			<tr>
                			   <td height="28">${v.publish_question_id}</td>
                               <td height="28">${v.content }</td>
                               <td height="28">${v.uestionClassId }</td>
                               <td height="28">${v.publishTime }</td>
                               <td height="28">Ip</td>
                               <td height="28">50</td>
                               <td height="28">${v.status }</td>
                               <td height="28">
                               			<a href="javaScript:deleteQuestionById('${v. publish_question_id}','${sta}')">ɾ��</a>                               			
                               </td>
                			</tr>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
                </tbody>
              </table>
              <br>
          </td>
        </tr>
    </table>
    <br></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
