<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>

  <title>用户管理--添加用户</title>
   <base href="<%=basePath%>">
  <link href="../css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-location">
    <tr>
      <td height=25><img src="../images/web_icon01.gif" width="11" height="8" align="absmiddle"> 当前位置：用户管理</td>
    </tr>
  </table>
  <table width="100%" align="center" class="table-list">
    <tr>
      <td>
        <table align="center" class="table-form">
          <tr>
            <td colspan="5" class="table-title"> 添加用户</td>
          <tr>
            <td width="10%" class="table-list_title">工号</td>
            <td width="40%"><input name="textfield2" type="text" class="input"><span class="red">*</span></td>
            <td width="10%" class="table-list_title">姓名</td>
            <td width="40%"><input name="textfield2" type="text" class="input"><span class="red">*</span></td>
          </tr>
          <tr>
            <td class="table-list_title">性别</td>
            <td>
              <select name="select">
                <option>男</option>
                <option>女</option>
              </select>
              <span class="red">*</span></td>
            <td class="table-list_title">职位</td>
            <td>
              <select name="select" class="input">
                <option>AR管理员</option>
                <option>CE管理员</option>
                <option>传输管理员</option>
                <option>申请员</option>
              </select>
              <span class="red">*</span></td>
          </tr>
          <tr>
            <td class="table-list_title">部门</td>
            <td><input name="textfield22" type="text" class="input"><span class="red">*</span></td>
            <td class="table-list_title">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="30%" class="pizhu">说明：其中带<span class="red">*</span>号为必填项</td>
            <td height="30" style="padding-right:300px;" class="table-button"> <input type="button" value="提交" name="B333" class="input" onClick="location.href('user_manage.html')"> <input type="button" value="重置" name="B332" class="input" onClick="location.href('#')"> </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>
