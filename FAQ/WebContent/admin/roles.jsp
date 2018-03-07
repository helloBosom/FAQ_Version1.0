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
				"<%=path%>/RoleServlet?roleid="+roleId+"&method=delete";
		}
	}
</script>
<script type="text/javascript">
	//����ɾ��ȫѡ��Ч
	function selectCheckAll(selectComponent){
		var flag = selectComponent.checked;
		var selectedQuestionId =document.getElementsByName("questionclassId");
		for(var i=0;i<selectedQuestionId.length;i++){
			selectedQuestionId[i].checked =flag; 
		}
	}
	
	//����ɾ������
	function batchDeleteByQuestionId(){
		//ƴдurl
		var url="<%=path%>/QuestionClassifyServlet?t="+Math.random();
		//������ѡ���ȡ����ɾ�������������
		var selectedQuestionId =document.getElementsByName("questionclassId");
		for(var i=0;i<selectedQuestionId.length;i++){
			if(selectedQuestionId[i].checked == true){
				//��ȡ��ѡ�������󶨵���������ŵ�ֵ
				url= url + "&questiontypeid="+selectedQuestionId[i].value;
			} 
		}
		url = url +"&method=batchdelete";
		//alert(url);
		//ʵ��ҳ����ת����
		window.location.href=url;
	}
</script>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;Ȩ�޹���&gt;&gt;��ɫ����</td>
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
                  <td height="32"><div align="right">[<a href="addrole.jsp">����½�ɫ</a>]</div></td>
                </tr>
              </table>
              <br>
              <table width="90%"  border="1" align="center" cellpadding="1" cellspacing="1" >
                <tr bgcolor="#AFC8E7">
                  
                  <td height="28"><div align="center">��ɫ���</div></td>
                  <td height="28"><div align="center">��ɫ����</div></td>
                   <td height="28"><div align="center">��ɫ״̬</div></td>
                  <td height="28"><div align="center">ϵͳ����</div></td>
                </tr>
                <c:choose>
                	<c:when test="${empty roles }">
                		<tr>
                			<td colspan="5">no data</td>
                		</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v" items="${roles }">
                			<tr>
                			    
                			    <td height="28">${v. roleId}</td>
                               <td height="28">${v.roleName }</td>
                               <td height="28">${v.status }</td>
                               <td height="28">
                               <a href="<%=path%>/RoleServlet?roleid=${v. roleId}&method=updateinput">�޸�</a> | 
                               <a href="javaScript:deleteRoleById('${v. roleId}')">ɾ��</a></td>
                			</tr>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
            </table>
            <br>            </td>
        </tr>
        
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
