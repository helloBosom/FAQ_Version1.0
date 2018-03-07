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
<script type="text/javascript">
	//根据问题类别编号删除记录
	function deleteUserById(userId){
		if(window.confirm("确认删除用户编号为:" +userId+"的记录吗?" )){
			//跳转到前端控制器实现删除操作
			window.location.href=
				"<%=path%>/admin/UserManagerServlet?userid="+userId+"&method=delete";
		}
	}
</script>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;用户管理&gt;&gt;用户浏览</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　用户管理</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1">
                <tr bgcolor="#FFFFFF">
                  <td height="32"><div align="right">[<a href="<%=path%>/admin/UserManagerServlet?method=queryRole">添加新用户</a>]</div></td>
                </tr>
              </table>
              <br>
              <table width="90%"  border="1" align="center" cellpadding="1" cellspacing="1" >
               <!-- 按条件查询 -->
              <!--   <tr>
                  <td colspan="4" height="50px">
                 
                  <form name="myform" action="" >
                  输入类别编号:<input type="text" name="questionClassId"> &nbsp;&nbsp;
                  输入类别名称:<input type="text" name="classifyName">
                  <input type="submit" name="submit" value="查询操作">
                  </form>
                  </td>
               </tr>-->
                <tr bgcolor="#AFC8E7">
                  <td height="28"><div align="center">用户编号</div></td>
                  <td height="28"><div align="center">用户姓名</div></td>
                  <td height="28"><div align="center">登录名</div></td>
                  <td height="28"><div align="center">密码</div></td>
                  <td height="28"><div align="center">联系方式</div></td>
                  <td height="28"><div align="center">角色名称</div></td>
                  <td height="28"><div align="center">系统操作</div></td>
                </tr>
                <c:choose>
                	<c:when test="${empty list}">
                		<tr>
                			<td colspan="7">no data</td>
                		</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v" items="${list}">
                			<tr>
                			    <td height="28">${v.managerId}</td>
                               <td height="28">${v.managerName }</td>
                               <td height="28">${v.nickName }</td>
                                <td height="28">${v.password}</td>
                               <td height="28">${v.contactNumber }</td>
                               <td height="28">
                               <c:forEach var="roleNames" items="${v.roleNames}">
                                  ${roleNames}&nbsp;
                               </c:forEach>
                               </td>
                               <td height="28">
                               <a href="<%=path%>/admin/UserManagerServlet?userid=${v.managerId}&method=updateInput">修改</a> | 
                               <a href="javaScript:deleteUserById('${v.managerId}')">删除</a></td>
                			</tr>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
              <!--  <tr>
                    <td colspan="4"> 总页数 ${totalPages} &nbsp;&nbsp;
                   当前第${currentPage }页 &nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=1">首页</a>&nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=${ (currentPage-1 < 1)?1:currentPage-1}">上一页</a>&nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=${ (currentPage+1 > totalPages) ? totalPages:currentPage+1}">下一页</a>&nbsp;&nbsp;
                   <a href="<%=path%>/QuestionClassifyServlet?currentPage=${totalPages} ">末页</a> </td>
                </tr> --> 
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
