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
-->
</style>
<script type="text/javascript">
	//�������������ɾ����¼
	function deleteRoleById(roleId){
		if(window.confirm("ȷ��ɾ����ɫ���Ϊ:" +roleId+"�ļ�¼��?" )){
			//��ת��ǰ�˿�����ʵ��ɾ������
			window.location.href=
				"<%=path%>/admin/RoleManagerServlet?roleid="+roleId+"&method=delete";
		}
	}
</script>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;��ɫ����&gt;&gt;��ɫ���</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">����ɫ����</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1">
                <tr bgcolor="#FFFFFF">
                  <td height="32"><div align="right">[<a href="addrolemanager.jsp">����½�ɫ</a>]</div></td>
                </tr>
              </table>
              <br>
              <table width="90%"  border="1" align="center" cellpadding="1" cellspacing="1" >
               <!-- ��������ѯ 
               <tr>
                  <td colspan="4" height="50px">
                 
                  <form name="myform" action="" >
                  ���������:<input type="text" name="questionClassId"> &nbsp;&nbsp;
                  �����������:<input type="text" name="classifyName">
                  <input type="submit" name="submit" value="��ѯ����">
                  </form>
                  </td>
               </tr>-->
                <tr bgcolor="#AFC8E7">
                  <td height="28"><div align="center">��ɫ���</div></td>
                  <td height="28"><div align="center">��ɫ����</div></td>
                  <td height="28"><div align="center">ϵͳ����</div></td>
                </tr>
                <c:choose>
                	<c:when test="${empty list }">
                		<tr>
                			<td colspan="3">no data</td>
                		</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v" items="${list}">
                			<tr>
                			    <td height="28">${v.roleId}</td>
                               <td height="28">${v.roleName }</td>
                               <td height="28">
                               <a href="<%=path%>/admin/RoleManagerServlet?roleid=${v.roleId}&method=updateInput">�޸�</a> | 
                               <a href="javaScript:deleteRoleById('${v.roleId}')">ɾ��</a></td>
                			</tr>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
               <!--   <tr>
                   <td colspan="4"> ��ҳ�� ${totalPages} &nbsp;&nbsp;
                   ��ǰ��${currentPage }ҳ &nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=1">��ҳ</a>&nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=${ (currentPage-1 < 1)?1:currentPage-1}">��һҳ</a>&nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=${ (currentPage+1 > totalPages) ? totalPages:currentPage+1}">��һҳ</a>&nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=${totalPages} ">ĩҳ</a> </td>
                </tr> 
            </table>
            <br>            </td>
        </tr>-->
        
    </table></td>
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
