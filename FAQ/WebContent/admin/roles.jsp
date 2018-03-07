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
	function deleteRoleById(roleId){
		if(window.confirm("确认删除角色编号为:" +roleId+"的记录吗?" )){
			//跳转到前端控制器实现删除操作
			window.location.href=
				"<%=path%>/RoleServlet?roleid="+roleId+"&method=delete";
		}
	}
</script>
<script type="text/javascript">
	//批量删除全选特效
	function selectCheckAll(selectComponent){
		var flag = selectComponent.checked;
		var selectedQuestionId =document.getElementsByName("questionclassId");
		for(var i=0;i<selectedQuestionId.length;i++){
			selectedQuestionId[i].checked =flag; 
		}
	}
	
	//批量删除操作
	function batchDeleteByQuestionId(){
		//拼写url
		var url="<%=path%>/QuestionClassifyServlet?t="+Math.random();
		//遍历复选框获取批量删除的问题类别编号
		var selectedQuestionId =document.getElementsByName("questionclassId");
		for(var i=0;i<selectedQuestionId.length;i++){
			if(selectedQuestionId[i].checked == true){
				//获取复选框中所绑定的问题类别编号的值
				url= url + "&questiontypeid="+selectedQuestionId[i].value;
			} 
		}
		url = url +"&method=batchdelete";
		//alert(url);
		//实现页面跳转操作
		window.location.href=url;
	}
</script>
</head>

<body>
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;权限管理&gt;&gt;角色管理</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　角色管理</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1">
                <tr bgcolor="#FFFFFF">
                  <td height="32"><div align="right">[<a href="addrole.jsp">添加新角色</a>]</div></td>
                </tr>
              </table>
              <br>
              <table width="90%"  border="1" align="center" cellpadding="1" cellspacing="1" >
                <tr bgcolor="#AFC8E7">
                  
                  <td height="28"><div align="center">角色编号</div></td>
                  <td height="28"><div align="center">角色名称</div></td>
                   <td height="28"><div align="center">角色状态</div></td>
                  <td height="28"><div align="center">系统操作</div></td>
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
                               <a href="<%=path%>/RoleServlet?roleid=${v. roleId}&method=updateinput">修改</a> | 
                               <a href="javaScript:deleteRoleById('${v. roleId}')">删除</a></td>
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
