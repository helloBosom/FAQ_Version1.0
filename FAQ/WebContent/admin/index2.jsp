<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<HTML><HEAD><TITLE>FAQ管理系统</TITLE>
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
</HEAD>
<BODY style="BACKGROUND-COLOR: #175492" leftMargin=0 topMargin=0>
<FORM id=LoginForm  name=LoginForm 
action="indexsys.jsp" method=post>
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
                    <TR>
                      <TD width=65>
                        <div align="left"><STRONG><FONT 
                        color=#ffffff>用户：</FONT></STRONG></div></TD>
                      <TD width=141>
                          <div align="left">
                            <INPUT 
                        name=txtUserSerial id=txtUserSerial 
                        onkeydown="if(event.keyCode==13) document.getElementById('txtPassword').focus()" size="16" maxlength="16"> 
                          </div></TD></TR>
                    <TR>
                      <TD>
                        <div align="left"><FONT 
                        color=#ffffff><STRONG>密码：</STRONG></FONT></div></TD>
                      <TD>
                          <div align="left">
                            <INPUT name=txtPassword 
                        type=password id=txtPassword 
                        onkeydown="if(event.keyCode==13) CheckUser()" size="16" maxlength="16"> 
                          </div></TD></TR>
                    <TR>
                      <TD><div align="left"><FONT 
                        color=#ffffff><STRONG>验证码：</STRONG></FONT></div></TD>
                      <TD><div align="left"></div></TD>
                    </TR>
                    </TBODY></TABLE></TD>
                <TD width=96 align="center" valign="middle"><a href="<%=path%>/admin/indexsys.jsp"><img src="<%=path%>/admin/images/login_botton.jpg" width="83" height="81" border="0"></a>
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

