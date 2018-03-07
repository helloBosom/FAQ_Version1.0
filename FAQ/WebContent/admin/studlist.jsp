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
.style1 {}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<script type="text/javascript">
	function lockById(userId){
		if(window.confirm("确认锁定问题类别编号为:" +userId+"的记录吗?" )){
			window.location.href=
				"<%=path%>/admin/UserMemberServlet?userid="+userId+"&method=lock";
		}
	}
	</script>
	<script type="text/javascript">
	function deblockById(userId){
		if(window.confirm("确认解锁问题类别编号为:" +userId+"的记录吗?" )){
			window.location.href=
				"<%=path%>/admin/UserMemberServlet?userid="+userId+"&method=deblock";
		}
	}
</script>
</head>
<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;注册用户管理&gt;&gt;添加注册用户信息</td>
  </tr>
  <tr>
    <td class="txt14"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><div align="right">[<a href="studreg.jsp">添加新用户</a>]</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="1" cellspacing="1" >
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　<span class="txt14">添加注册用户信息</span></td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td colspan="3"><br>
              <table width="98%"  border="1" align="center" cellpadding="1" cellspacing="1" >
                <tr >
     
                  <td height="28"><div align="center">学员注册号</div></td>
                  <td height="28"><div align="center">学员姓名</div></td>     
                  <td width="10%" height="28"><div align="center">班级编号</div></td>
                  <td width="10%" height="28"><div align="center">联系电话</div></td>
                  <td height="28"><div align="center">手机</div></td>
                  <td height="28"><div align="center">QQ</div></td>
                  <td><div align="center">电子邮件</div></td>
                  <td height="28"><div align="center">系统操作</div></td>
                </tr>
                <c:choose>
                	<c:when test="${empty lists }">
                		<tr>
                			<td colspan="8">no data</td>
                		</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v" items="${lists }">
                			<tr>
                			    <td height="28">${v.userid }&nbsp;&nbsp;</td>
                               <td height="28">${v.username }&nbsp;&nbsp;</td>
                               <td height="28">${v. classes}&nbsp;&nbsp;</td>
                               <td height="28">${v. mobilephone}&nbsp;&nbsp;</td>
                               <td height="28">${v. contactnumber}&nbsp;&nbsp;</td>
                               <td height="28">${v. qq}&nbsp;&nbsp;</td>
                               <td height="28">${v. email}&nbsp;&nbsp;</td>
                               <td><div align="center">
             <a href="javaScript:lockById('${v.userid }')">锁定</a>
        <a href="javaScript:deblockById('${v. userid}')">解锁</a></div></td>
                			</tr>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
                  <tr>
                   <td colspan="4" align="center"> 总页数 ${totalPages} &nbsp;&nbsp;
                   <a href="<%=path%>/admin/UserMemberServlet?currentPage=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                   <a href="<%=path%>/admin/UserMemberServlet?currentPage=${ (currentPage-1 < 1)?1:currentPage-1}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                   <a href="<%=path%>/admin/UserMemberServlet?currentPage=${ (currentPage+1 > totalPages) ? totalPages:currentPage+1}">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                   <a href="<%=path%>/admin/UserMemberServlet?currentPage=${totalPages} ">末页</a> </td>
                </tr> 
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
