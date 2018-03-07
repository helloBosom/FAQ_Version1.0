<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<html>
<head>
<title>FAQ信息管理系统</title>
<base href="<%=basePath%>">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #CC0000}
-->
</style>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;权限管理</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　权限管理</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1">
              </table>
              <br>
              <table width="90%"  border="1" align="center" cellpadding="1" cellspacing="1" >
                <tr bgcolor="#AFC8E7">
                  <td height="28"><div align="center">角色编号</div></td>
                  <td height="28"><div align="center">角色名称</div></td>
                  <td height="28"><div align="center">权限设置</div></td>
                </tr>
                <c:choose>
                	<c:when test="${empty roles}">
                		<tr>
                			<td colspan="3">no data</td>
                		</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v" items="${roles}">
                			<tr>
                			    <td height="28">${v.roleId}</td>
                               <td height="28">${v.roleName }</td>
                               <td height="28">
                              <a href="<%=path%>/admin/PowerDistributeServlet?roleid=${v.roleId}&rolename=${v.roleName}&method=find">权限分配</a></td>
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

<!-- <a href="<%=path%>/admin/powerdistribute.jsp?roleid=${v.roleId}&rolename=${v.roleName}">权限分配</a></td> -->