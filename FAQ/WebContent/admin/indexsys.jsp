<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<HTML>
<HEAD>
<TITLE>FAQ信息管理系统</TITLE>
<base href="<%=basePath%>">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {color: #FFFFFF}
-->
</style>
<link href="<%=path%>/admin/css/styles.css" rel="stylesheet" type="text/css">

<SCRIPT language=JavaScript>
<!--
function switchSysBar(){
if (switchPoint.innerText==3){
switchPoint.innerText=4
document.all("frmTitle").style.display="none"
}else{
switchPoint.innerText=3
document.all("frmTitle").style.display=""
}}
//-->
</SCRIPT>
</HEAD>
<BODY style="MARGIN: 0px" scroll=no topmargin="0" leftmargin="0" >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD colSpan=3><IFRAME 
      style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100px" 
      name=Explorer_Tool marginWidth=0 marginHeight=0 
      src="<%=path%>/admin/top.jsp" frameBorder=0 noResize scrolling=no 
      bordercolor="threedface"></IFRAME></TD></TR>
  <TR>
    <TD id=frmTitle align=middle width=170 height="100%"><IFRAME 
      style="Z-INDEX: 2; VISIBILITY: inherit; WIDTH: 170; HEIGHT: 100%" 
      id=BoardLeft name=BoardLeft marginWidth=0 frameSpacing=2 marginHeight=0 
      src="<%=path%>/admin/left.jsp" frameBorder=0 noResize></IFRAME></TD>
    <TD width=3 bgcolor="#A3A7A3" style="HEIGHT: 100%" onclick="switchSysBar();"><FONT 
      style="FONT-SIZE: 9pt; CURSOR: hand; COLOR: #000000; FONT-FAMILY: Webdings"><SPAN 
      id=switchPoint>3</SPAN></FONT></TD>
    <TD height="100%"><IFRAME 
      style="Z-INDEX: 3; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" 
     id=BoardRight name=BoardRight  frameSpacing=1 src="<%=path%>/admin/user/NewFile.jsp" 
      frameBorder=0></IFRAME></TD></TR>
</TBODY></TABLE>
</BODY>
</HTML>