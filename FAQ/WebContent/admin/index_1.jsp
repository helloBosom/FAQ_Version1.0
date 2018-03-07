<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">

<LINK 
href="admin/css/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="js/login.js" 
type=text/javascript></SCRIPT>

<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<script type="text/javascript">
	//登录验证
	function gotopage(){
		document.getElementById('LoginForm').submit();
	}
</script>
</HEAD>
<BODY style="BACKGROUND-COLOR: #175492" leftMargin=0 topMargin=0>
<FORM id="LoginForm"  name=LoginForm 
action="<%=path%>/admin/LoginServlet" method=post>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD>
      <DIV align=center>
      <TABLE cellSpacing=0 cellPadding=0 width=479 align=center 
      background="<%=path%>/admin/images/login.jpg" border=0>
        <TBODY>
        <TR>
          <TD vAlign=center width=479 height=305><BR><BR>
            <TABLE cellSpacing=0 cellPadding=0 width=407 align=center 
              border=0><TBODY>
              <TR>
                <TD width=311>
                  <TABLE cellSpacing=3 cellPadding=2 width=250 align=right 
                  border=0>
                    <TBODY>
                    <tr>
                       <td colspan="2">${error}</td>
                    </tr>
                    <TR>
                      <TD width=65>
                        <div align="left"><STRONG><FONT 
                        color=#ffffff>用户：</FONT></STRONG></div></TD>
                      <TD width=141>
                          <div align="left">
                            <INPUT        name=userName  id=userName 
                        onkeydown="if(event.keyCode==13) document.getElementById('txtPassword').focus()" size="16" maxlength="16"> 
                          </div></TD></TR>
                    <TR>
                      <TD>
                        <div align="left"><FONT 
                        color=#ffffff><STRONG>密码：</STRONG></FONT></div></TD>
                      <TD>
                          <div align="left">
                            <INPUT name=userPwd
                        type=password id=userPwd 
                        onkeydown="if(event.keyCode==13) CheckUser()" size="16" maxlength="16"> 
                          </div></TD></TR>
                    <TR>
                      <TD><div align="left"><FONT 
                        color=#ffffff><STRONG>验证码：</STRONG></FONT></div></TD>
                      <TD><div align="left"></div></TD>
                    </TR>
                    </TBODY></TABLE></TD>
                <TD width=96 align="center" valign="middle">
                <img src="<%=path%>/admin/images/login_botton.jpg" width="83" height="81" border="0"  onclick="gotopage();"> 
                 </TD>
              </TR>
              <TR>
                <TD></TD>
                <TD>&nbsp;</TD></TR>
              <TR>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD></TR>
              <TR>
                <TD colSpan=2 height=24>
                  <DIV id=Msg 
        align=right></DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></FORM></BODY></HTML>

