<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
 
  <title>�û�����</title>
  <base href="<%=basePath%>">
  <link href="../css/main.css" rel="stylesheet" type="text/css">
</head>
<script language="javascript" type="text/javascript">
  function del(){
  var box = document.getElementsByName("checkbox");
  var boxvalue = new Array();
  for(i=0; i<box.length; i++)
  {
  if(box[i].checked)
  boxvalue[i] = box[i].value;
  }
  if(boxvalue.length<=0)
  alert("��ѡ��Ҫɾ���ļ�¼");
  else
   if(confirm("ȷ��ɾ����"))
   window.location.reload();
  }
</script>
<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-location">
    <tr>
      <td height=25 bgcolor="#FFFFFF"><img src="../images/web_icon01.gif" width="11" height="8" align="absmiddle"> ��ǰλ�ã��û�����</td>
    </tr>
  </table>
  <table width="100%" align="center" class="table-list">
    <tr>
      <td bgcolor="#FFFFFF">
        <table align="center" class="table-form">
          <tr>
            <td colspan="7" class="table-title"> �û���ѯ</td>
          <tr>
            <td width="10%" class="table-list_title">����</td>
            <td><input name="textfield2" type="text" class="input"></td>
            <td width="10%" class="table-list_title">����</td>
            <td><input name="textfield23" type="text" class="input"></td>
            <td width="10%" class="table-list_title">�Ա�</td>
            <td>
              <select name="select">
                <option>��</option>
                <option>Ů</option>
              </select>
            </td>
            <td rowspan="2"><span class="table-button"> <input type="button" value="��ѯ" name="B33" class="input" onClick="location.href('#')"></span></td>
          </tr>
          <tr>
            <td class="table-list_title">ְλ</td>
            <td>
              <select name="select">
                <option>AR����Ա</option>
                <option>CE����Ա</option>
                <option>�������Ա</option>
                <option>����Ա</option>
              </select>
            </td>
            <td class="table-list_title">����</td>
            <td><input name="textfield24" type="text" class="input"></td>
            <td class="table-list_title">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="60%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="40%" height="30" bgcolor="#FFFFFF" class="table-button"> 
            <input type="button" value="����" name="B332" class="input" onClick="location.href='user_manage_add.html'"> <input type="button" value="�޸�" name="B333" class="input" onClick="location.href='user_manage_update.html'"> <input type="button" value="ɾ��" name="B334" class="input" onClick="location.href('javascript:del();')"> </td>
          </tr>
        </table>
        <table align="center" class="table-table">
          <tr>
            <td colspan="6" class="table-title"> ������Ϣ</td>
          <tr>
            <td class="table-title1">&nbsp;</td>
            <td class="table-title1">����</td>
            <td class="table-title1">����</td>
            <td class="table-title1">�Ա�</td>
            <td class="table-title1">ְλ</td>
            <td class="table-title1">����</td>
          </tr>
          <tr>
            <td align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
            <td>1001</td>
            <td>����</td>
            <td>��</td>
            <td>AR����Ա</td>
            <td>�����������</td>
          </tr>
          <tr>
            <td align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
            <td>1002</td>
            <td>����</td>
            <td>��</td>
            <td>CE����Ա</td>
            <td>�����������</td>
          </tr>
          <tr>
            <td align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
            <td>1003</td>
            <td>���</td>
            <td>��</td>
            <td>����Ա</td>
            <td>���̽�������</td>
          </tr>
          <tr>
            <td align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
            <td>1004</td>
            <td>����</td>
            <td>��</td>
            <td>�������Ա</td>
            <td>�����������</td>
          </tr>
        </table>
        <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="right" bgcolor="#FFFFFF"> ��1����¼ <a href="#">��ҳ</a> | <a href="#">��һҳ</a> | <a href="#">��һҳ</a> | <a href="#">βҳ</a>
              <select name="_page">
                <option value="1" selected="selected">1/2</option>
                <option value="2">2/2</option>
              </select>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>
<script type="text/javascript">var Ptr=document.getElementsByTagName("tr");function recolor() {for (i=1;i<Ptr.length+1;i++) {Ptr[i-1].className = (i%2>0)?"t1":"t2";}}window.onload=recolor;for(var i=0;i<Ptr.length;i++) {Ptr[i].onmouseover=function(){this.tmpClass=this.className;this.className = "t3";};Ptr[i].onmouseout=function(){this.className=this.tmpClass;};}</script>