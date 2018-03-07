<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<html>
<head>
<title>FAQ信息管理系统</title>
<base href="<%=basePath%>">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body onLoad="MM_preloadImages('<%=path%>/admin/images/index_main_ico_souye_over.gif','<%=path%>/admin/images/index_main_ico_guanli_over.gif','<%=path%>/admin/images/index_main_ico_xuanxiang_over.gif','<%=path%>/admin/images/index_main_ico_bangzu_over.gif','<%=path%>/admin/images/index_main_ico_guanyu_over.gif','<%=path%>/admin/images/index_main_ico_logout_over.gif')">
<TABLE cellSpacing=0 cellPadding=0 width="100%" 
background=<%=path%>/admin/images/logo_back.gif border=0>
  <TBODY>
    <TR>
      <TD><img src="<%=path%>/admin/images/index_logo.gif" width="331" height="100"></TD>
      <TD align=right width=160 background=<%=path%>/admin/images/logo_back.gif>
        <DIV align=right><IMG height=100 
      src="<%=path%>/admin/images/index_right_back_jianbian.gif" width=160></DIV></TD>
      <TD width=121 background=<%=path%>/admin/images/index_right_back.gif>
        <TABLE height=100 cellSpacing=0 cellPadding=0 width=282 align=right 
      border=0>
          <TBODY>
            <TR>
              <TD vAlign=top height=27><IMG height=34 
            src="images/right_logo.gif" width=281></TD>
            </TR>
            <TR>
              <TD width=296 height=60>
                <TABLE cellSpacing=0 cellPadding=0 width=293 align=right border=0>
                  <TBODY>
                    <TR>
                      <TD width=47>
                        <DIV align=center><A 
                  onmouseover="MM_swapImage('souye','','<%=path%>/admin/images/index_main_ico_souye_over.gif',1)" 
                  onclick="LoadTree('js/IndexMenu.asp',true);" 
                  onmouseout=MM_swapImgRestore() 
                  href=""><IMG height=51 
                  src="images/index_main_ico_souye.gif" width=47 border=0 
                  name=souye></A></DIV></TD>
                      <TD width=47>
                        <DIV align=center><A 
                  onmouseover="MM_swapImage('guanli','','<%=path%>/admin/images/index_main_ico_guanli_over.gif',1)" 
                  onclick="LoadTree('js/ManageMenu.asp',true);" 
                  onmouseout=MM_swapImgRestore() 
                  href=""><IMG height=51 
                  src="<%=path%>/admin/images/index_main_ico_guanli.gif" width=47 
                  border=0 name=guanli></A></DIV></TD>
                      <TD width=47>
                        <DIV align=center><A 
                  onmouseover="MM_swapImage('xuanxiang','','<%=path%>/admin/images/index_main_ico_xuanxiang_over.gif',1)" 
                  onclick="window.showModalDialog('setting.asp','','dialogWidth:280px;dialogHeight:230px;status:no;help:no;scroll:no;');" 
                  onmouseout=MM_swapImgRestore() 
                  href=""><IMG height=51 
                  src="<%=path%>/admin/images/index_main_ico_xuanxiang.gif" width=47 
                  border=0 name=xuanxiang></A></DIV></TD>
                      <TD width=47>
                        <DIV align=center><A 
                  onmouseover="MM_swapImage('bangzu','','<%=path%>/admin/images/index_main_ico_bangzu_over.gif',1)" 
                  onclick="window.open('','Help','toolbar=no,resizable=yes')" 
                  onmouseout=MM_swapImgRestore() 
                  href=""><IMG height=51 
                  src="<%=path%>/admin/images/index_main_ico_bangzu.gif" width=47 
                  border=0 name=bangzu></A></DIV></TD>
                      <TD width=47>
                        <DIV align=center><A 
                  onmouseover="MM_swapImage('guanyu','','<%=path%>/admin/images/index_main_ico_guanyu_over.gif',1)" 
                  onclick="window.showModalDialog('about.asp','','dialogWidth:360px;dialogHeight:260px;status:no;help:no;scroll:no;');" 
                  onmouseout=MM_swapImgRestore() 
                  href=""><IMG height=51 
                  src="<%=path%>/admin/images/index_main_ico_guanyu.gif" width=47 
                  border=0 name=guanyu></A></DIV></TD>
                      <TD width=58>
                        <DIV align=center><A 
                  onmouseover="MM_swapImage('logout','','<%=path%>/admin/images/index_main_ico_logout_over.gif',1)" 
                  onmouseout=MM_swapImgRestore() 
                  href=""><IMG height=51 
                  src="<%=path%>/admin/images/index_main_ico_logout.gif" width=47 
                  border=0 
        name=logout></A></DIV></TD>
                    </TR>
                  </TBODY>
              </TABLE></TD>
            </TR>
          </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#4b6cbd border=0>
  <TBODY>
    <TR>
      <TD>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>

</body>
</html>
