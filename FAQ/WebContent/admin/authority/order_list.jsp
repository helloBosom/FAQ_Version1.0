<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
  
  <title>��ɫ�б�</title>
   <base href="<%=basePath%>">
  <link href="../css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-location">
    <tr>
      <td height=25 bgcolor="#FFFFFF"><img src="../images/web_icon01.gif" width="11" height="8" align="absmiddle">��ǰλ�ã���ɫ�б� </td>
    </tr>
  </table>
  <table align="center" class="table-list">
    <form name="form1" method="post" action="">
      <tr>
        <td>
          <table class="table-table">
            <tr>
              <td class="table-title">��ɫ�б�</td>
            </tr>
          </table>
          <table width="100%" align="center" class="table-table">
            <tr>
              <td width="8%" class="table-title1">���</td>
              <td width="22%" class="table-title1">ҵ������</td>
              <td width="27%" class="table-title1">ҵ�񻷽�</td>
              <td width="24%" class="table-title1">��ɫ����</td>
              <td width="19%" class="table-title1">Ȩ�޷���</td>
            </tr>
            <tr>
              <td align="center">1</td>
              <td align="center">ϵͳ����</td>
              <td align="center">ϵͳ����</td>
              <td align="center">ʡ��EOMSϵͳ������</td>
              <td align="center"><span class="table-list_title"><a href="role_manage.jsp">Ȩ�޷���</a></span></td>
            </tr>
            <tr>
              <td align="center">2</td>
              <td align="center">��������</td>
              <td align="center">���Ϲ���</td>
              <td align="center">���Ϲ���������</td>
              <td align="center"><span class="table-list_title"><a href="role_manage.jsp">Ȩ�޷���</a></span></td>
            </tr>
            <tr>
              <td align="center">3</td>
              <td align="center">��������</td>
              <td align="center">�����ݹ���</td>
              <td align="center">�����ݹ���������</td>
              <td align="center"><span class="table-list_title"><a href="role_manage.jsp">Ȩ�޷���</a></span></td>
            </tr>
            <tr>
              <td align="center">4</td>
              <td align="center">ֵ����ҵ</td>
              <td align="center">ֵ�����</td>
              <td align="center">ֵ�����ά����</td>
              <td align="center"><span class="table-list_title"><a href="role_manage.jsp">Ȩ�޷���</a></span></td>
            </tr>
            <tr>
              <td align="center">5</td>
              <td align="center">ֵ����ҵ</td>
              <td align="center">��ҵ�ƻ�</td>
              <td align="center">��ҵ�ƻ�ά����</td>
              <td align="center"><span class="table-list_title"><a href="role_manage.jsp">Ȩ�޷���</a></span></td>
            </tr>
          </table>
        </td>
      </tr>
    </form>
  </table>
</body>
</html>
<script type="text/javascript">var Ptr=document.getElementsByTagName("tr");function recolor() {for (i=1;i<Ptr.length+1;i++) {Ptr[i-1].className = (i%2>0)?"t1":"t2";}}window.onload=recolor;for(var i=0;i<Ptr.length;i++) {Ptr[i].onmouseover=function(){this.tmpClass=this.className;this.className = "t3";};Ptr[i].onmouseout=function(){this.className=this.tmpClass;};}</script>