<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.style1 {
	color: #CC0000
}
-->
</style>
<script type="text/javascript">
	//根据问题类别编号删除记录
	function deleteQuestionTypeById(questionTypeId){
		if(window.confirm("确认删除问题类别编号为:" +questionTypeId+"的记录吗?" )){
			//跳转到前端控制器实现删除操作
			window.location.href=
				"<%=path%>/admin/QuestionClassifyServlet?questiontypeid="+questionTypeId+"&method=delete";
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
		var url="<%=path%>/admin/QuestionClassifyServlet?t=" + Math.random();
		//遍历复选框获取批量删除的问题类别编号
		var selectedQuestionId = document.getElementsByName("questionclassId");
		for (var i = 0; i < selectedQuestionId.length; i++) {
			if (selectedQuestionId[i].checked == true) {
				//获取复选框中所绑定的问题类别编号的值
				url = url + "&questiontypeid=" + selectedQuestionId[i].value;
			}
		}
		url = url + "&method=batchdelete";
		//alert(url);
		//实现页面跳转操作
		window.location.href = url;
	}
</script>
</head>

<body>
	<table width="100%" border="0" cellspacing="1" cellpadding="1">
		<tr>
			<td class="txt14">你的位置：&gt;&gt;问题类别管理&gt;&gt;类别浏览</td>
		</tr>
		<tr>
			<td class="txt14">&nbsp;</td>
		</tr>
		<tr>
			<td><table width="95%" border="0" align="center" cellpadding="1"
					cellspacing="1" bgcolor="#999999">
					<tr>
						<td width="40" height="22" align="center" valign="middle"
							background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img
							src="images/ico1.gif" width="10" height="13"></td>
						<td width="850" height="22"
							background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"
							class="txt12">问题类别管理</td>
						<td height="22" align="right" valign="top"
							background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img
							src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
					</tr>
					<tr valign="top">
						<td height="400" colspan="3" bgcolor="#FFFFFF"><br>
							<table width="90%" border="0" align="center" cellpadding="1"
								cellspacing="1">
								<tr bgcolor="#FFFFFF">
									<td height="32"><div align="right">
											[<a href="<%=path%>/admin/addquestiontype.jsp">添加新类别</a>]
										</div></td>
								</tr>
							</table> <br>
							<table width="90%" border="1" align="center" cellpadding="1"
								cellspacing="1">
								<!-- 按条件查询 -->
								<tr>
									<td colspan="4" height="50px">
										<form name="myform"
											action="<%=path%>/admin/QuestionClassifyServlet">
											输入类别编号:<input type="text" name="questionClassId">
											&nbsp;&nbsp; 输入类别名称:<input type="text" name="classifyName">
											<input type="submit" name="submit" value="查询操作">
										</form>
									</td>
									<td height="50px" align="right"><a
										href="javaScript:batchDeleteByQuestionId()">批量删除</a></td>
								</tr>
								<tr bgcolor="#AFC8E7">
									<td height="28" width="50px"><div align="center">
											<input type="checkbox" name="selectAll"
												onclick="selectCheckAll(this)">全选/全不选
										</div></td>
									<td height="28"><div align="center">类别编号</div></td>
									<td height="28"><div align="center">类别名称</div></td>
									<td height="28"><div align="center">备注</div></td>
									<td height="28"><div align="center">系统操作</div></td>
								</tr>
								<c:choose>
									<c:when test="${empty lists }">
										<tr>
											<td colspan="5">no data</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="v" items="${lists }">
											<tr>
												<td height="28"><input type="checkbox"
													name="questionclassId" value="${v. questionClassId}"></td>
												<td height="28">${v. questionClassId}</td>
												<td height="28">${v.classifyName }</td>
												<td height="28">${v.remarks }</td>
												<td height="28"><a
													href="<%=path%>/admin/QuestionClassifyServlet?qid=${v. questionClassId}&method=updateinput">修改</a>
													| <a
													href="javaScript:deleteQuestionTypeById('${v. questionClassId}')">删除</a></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								<tr>
									<td colspan="5">总页数 ${totalPages} &nbsp;&nbsp;
										当前第${currentPage }页 &nbsp;&nbsp; <a
										href="<%=path%>/admin/QuestionClassifyServlet?currentPage=1">首页</a>&nbsp;&nbsp;
										<a
										href="<%=path%>/admin/QuestionClassifyServlet?currentPage=${ (currentPage-1 < 1)?1:currentPage-1}">上一页</a>&nbsp;&nbsp;
										<a
										href="<%=path%>/admin/QuestionClassifyServlet?currentPage=${ (currentPage+1 > totalPages) ? totalPages:currentPage+1}">下一页</a>&nbsp;&nbsp;
										<a
										href="<%=path%>/admin/QuestionClassifyServlet?currentPage=${totalPages} ">末页</a>
									</td>
								</tr>
							</table> <br></td>
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
