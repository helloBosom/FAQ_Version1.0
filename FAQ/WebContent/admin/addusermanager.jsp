<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">
</head>

<body>
<form name="form1" method="post" action="<%=path%>/admin/UserManagerServlet">
<!-- 隐藏域 -->
<input type="hidden" name="method" value="add">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;<span class="txt12">用户管理</span>&gt;&gt;添加用户管理信息</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　用户管理</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">增加用户管理信息</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">用户编号</td>
                  <td><input type="text" name="managerId" value="" maxlength="20" size="20"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">用户姓名</td>
                  <td><input type="text" name="managerName" value="" maxlength="20" size="20"></td>
                </tr>
                 <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">登录名</td>
                  <td><input type="text" name="nickName" value="" maxlength="20" size="20"></td>
                </tr>
                 <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">密码</td>
                  <td><input type="text" name="password" value="" maxlength="20" size="20"></td>
                </tr>
                 <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">联系方式</td>
                  <td><input type="text" name="contactNumber" value="" maxlength="20" size="20"></td>
                </tr>
                 <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">角色名称</td>
                  <td>
                  <c:choose>
                  <c:when test="${empty roles} ">
                  <select name="rollName" ><option value="-1">no data</option></select>
                  </c:when>
                  <c:otherwise>
                   <select name="rollName" multiple="multiple" size="2">
                  <c:forEach var="v" items="${roles}">
                   <option value="${v.roleId}">${v.roleName }</option> 
                  </c:forEach>
                   </select> 
                  </c:otherwise>
                  </c:choose>  
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="确定添加">
                        　
                        <input type="reset" name="Submit2" value="清除重填">
                  </div></td>
                </tr>
            </table></td>
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
</form>
</body>
</html>
