<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<%@ taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <TITLE>FAQ����ϵͳ</TITLE>
    <base href="<%=basePath%>">
</head>

<body>
<form name="form1" method="post" action="<%=path%>/admin/PowerDistributeServlet">
<!-- ������ -->
<input type="hidden" name="method" value="distribute">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;<span class="txt12">Ȩ�޷���</span></td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">��Ȩ�޹���</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">Ϊ��ɫ����Ȩ��</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">��ɫ����</td>
                  <td>
                  <input type="hidden" name="roleId" value="${roleId}">
                  <input type="text" name="roleName" value="${roleName}" maxlength="20" size="20" readonly="readonly"></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td colspan="2" ><br>
                  
                   <c:forEach items="${functionMenu}" var="v">
                   <br><br>     
                  <input type="checkbox" name="functionName" value="${v.key.functionId}"
                      <c:forEach items="${selectedFun}" var="n">
                         <c:if  test="${n eq v.key.functionId}">checked</c:if>
                      </c:forEach>
                  >${v.key.moduleName}<br>
                   
                  <c:forEach items="${functionMenu[v.key]}" var="m">
                  <input type="checkbox" name="functionName" value="${m.functionId}"
                       <c:forEach items="${selectedFun}" var="n">
                         <c:if  test="${n eq m.functionId}">checked</c:if>
                       </c:forEach>
                  >${m.moduleName}&nbsp;
                  </c:forEach>
                  
                  </c:forEach>
                  
                  <br><br><br>
                  </td>
                </tr>
               
                <tr bgcolor="#FFFFFF">
                  <td colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="�ύ">
                        ��
                        <input type="reset" name="Submit2" value="�������">
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