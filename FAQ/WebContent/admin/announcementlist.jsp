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
	//���ݹ�����ɾ����¼
	function deleteAnnouncementById(announcementId){
		if(window.confirm("ȷ��ɾ��������Ϊ:" +announcementId+"�ļ�¼��?" )){
			//��ת��ǰ�˿�����ʵ��ɾ������
			window.location.href=
				"<%=path%>/admin/AnnouncementServlet?announcementId="+announcementId+"&method=delete";
		}
	}
</script>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;�������&gt;&gt;���й����б�>
  </tr>
  <tr>
    <td class="txt14"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><div align="right">[<a href="<%=path%>/admin/addannouncement.jsp">����¹���</a>]</div></td>
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
                  <td width="10%" height="28"><div align="center">����ID</div></td>
                  <td width="70%" height="28"><div align="center">��������</div></td>         
                  <td height="10"><div align="center">ϵͳ����</div></td>
                </tr>
                 <c:choose>
                	<c:when test="${empty lists}">
                		<tr>
                			<td colspan="5">no data</td>
                		</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v"  items="${lists}">
                			<tr>
                			   <td height="28">${v.announcementId}</td>
                               <td height="28">${v.announcementContent }</td>
                               <td height="28"><a href="javaScript:deleteAnnouncementById('${v. announcementId}')">ɾ��</a></td>
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
