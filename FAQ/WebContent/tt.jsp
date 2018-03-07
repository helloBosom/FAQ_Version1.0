<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">
<script language="javascript">
function selAll(){
   var len = form1.userid.length;
   for(var i=0;i<len;i++){
       form1.userid[i].checked = form1.chkAll.checked;
   }
}
</script>
</head>

<body>
<form name="form1" method="post" action="">
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28"><input name="userid" type="checkbox" id="userid" value="checkbox"></td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
  </tr>
  <tr>
    <td height="28"><input name="userid" type="checkbox" id="userid" value="checkbox"></td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
  </tr>
  <tr>
    <td height="28"><input name="userid" type="checkbox" id="userid" value="checkbox"></td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
  </tr>
  <tr>
    <td height="28"><input name="userid" type="checkbox" id="userid" value="checkbox"></td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
  </tr>
  <tr>
    <td height="28"><input name="userid" type="checkbox" id="userid" value="checkbox" ></td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
  </tr>
  <tr>
    <td height="28"><input name="chkAll" type="checkbox" id="chkAll" value="checkbox" onclick="selAll()">
    全部选中</td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
    <td height="28">&nbsp;</td>
  </tr>
</table>
<p>
  <select name="select">
    <option value="qqqq" selected>1111</option>
  </select>
</p>
</form>
</body>
</html>
