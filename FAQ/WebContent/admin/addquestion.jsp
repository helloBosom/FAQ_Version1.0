<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">
    <style type="text/css">
    .style4 {color: #FF0000}
    </style>
<script type="text/javascript">


<!-- 注册帐号验证-->
 function isValidTitle(obj,id){
		 var reg =  /^[（\u4e00-\u9fa5）|[0-9A-Za-z]{2,15}$/;
		 var strId = obj.value;
		//window.alert(strId);
		 if(strId==""){
			document.getElementById(id).innerHTML="标题不能为空";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="标题长度应在2-15之间!";
		 }
	 }
 
 <!--内容验证 -->
 function isValidContent(obj,id){
		 var reg = /^[（\u4e00-\u9fa5）|[0-9A-Za-z]{10,100}$/;
		 var strId = obj.value;
		//window.alert(strId);
		 if(strId==""){
			document.getElementById(id).innerHTML="请描述问题内容";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="内容不能少于10个字符!";
		 }
	 }
 </script>
</head>

<body>
<form name="form1" method="post" action="<%=path %>/admin/QuestionServlet">
<input type="hidden" name="method" value="add">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;问题管理&gt;&gt;添加新问题</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　问题信息</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">增加新问题</div></td>
                </tr>
                   <tr bgcolor="#FFFFFF">
                  <td width="40%" height="28" align="center">问题标题</td>
                  <td height="28">  <div align="left">
                  <input name="title" type="text" id="batchname" value="" size="40" maxlength="40"  onblur="isValidTitle(this,'titleTip');">
                  <span class="style4" id="titleTip"></span></div></td>
                  
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                <td width="20%" height="28"><div align="center">问题类型</div></td>
                <td height="28"><div align="left">
              <select name="questionClassifyId">
                <c:choose>
                	<c:when test="${empty questionClasses }">
                	      <option value="-1">请先添加问题类型</option>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="v" items="${questionClasses }">
                			<option value="${v.questionClassId }">${v. classifyName}</option>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
              
              </select>
            </div></td>
          </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">悬赏积分</td>
                  <td height="28"><select name="totle_score"  id="batchtype2">
                    <option value="10">10分</option>
                    <option value="15">15分</option>
                    <option value="20">20分</option>
                  </select></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">难度等级</td>
                  <td height="28">
                    <input type="radio" name="grade_diffculty" id="level" value="1">
                  简单
                  <input type="radio" name="grade_diffculty" id="level2" value="2">
                  一般
                  <input type="radio" name="grade_diffculty" id="level3" value="3">
                  复杂
                  <input type="radio" name="grade_diffculty" id="level4" value="4">
                  难</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">问题内容<br><br><span class="style4" id="contentTip"></span></td>
                  <td width="40" height="60"><label>
                    <textarea name="content" id="textarea" cols="45" rows="40"  onblur="isValidContent(this,'contentTip');"></textarea>
                  </label></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td height="28" align="center">发布人</td>
                  <td height="28"><input name="publisherId"  value="${sessionScope.username }" type="text" id="publisherId" readonly="readonly"></td>
                <tr bgcolor="#FFFFFF">
                  <td height="28" colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="确定添加">
                        　&nbsp;&nbsp;
                        <input type="submit" name="Submit2" value="清除重填">
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
