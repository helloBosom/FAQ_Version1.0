<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<html>
  <head>
    <TITLE>FAQ����ϵͳ</TITLE>
    <base href="<%=basePath%>">
    <style type="text/css">
    .style4 {color: #FF0000
    font-size:12px}
    </style>
    <script type="text/javascript">
    <!-- �����֤-->
    function isValidNum(obj,id){
   	 var reg = /^[0-9]{1,10}$/;
   	 var strId = obj.value;
   	//window.alert(strId);
   	 if(strId==""){
   		document.getElementById(id).innerHTML="�����Ų���Ϊ�գ�";
   		
   	 }else if(reg.test(obj.value)){
   	 document.getElementById(id).innerHTML="";
   	 }else{
   		 document.getElementById(id).innerHTML="��ű���Ϊ1-10λ����";
   	 }
   	 
   	 
    }
    

    function isValidClassify(obj,id){
   	 var reg =/^[\u4e00-\u9fa5]{1,10}$/;
   	 var strId = obj.value;
   	//window.alert(strId);
   	 if(strId==""){
   		document.getElementById(id).innerHTML="������Ʋ���Ϊ�գ�";
   		
   	 }else if(reg.test(obj.value)){
   	 document.getElementById(id).innerHTML="";
   	 }else{
   		 document.getElementById(id).innerHTML="������Ʊ����ɺ�����ɣ�";
   	 }
   	 
   	 
    }
    
    
    function isValidRemarks(obj,id){
      	 var reg =/^[()\u4e00-\u9fa5)|[0-9a-zA-Z]]{1,10}$/;
      	 var strId = obj.value;
      	//window.alert(strId);
      	 if(strId==""){
      		document.getElementById(id).innerHTML="��ע����Ϊ�գ�";
      		
      	 }else if(reg.test(obj.value)){
      	 document.getElementById(id).innerHTML="";
      	 }else{
      		 document.getElementById(id).innerHTML="��ע����Ӧ����1-10֮��";
      	 }
      	 
      	 
       }
    </script>
</head>

<body>
<form name="form1" method="post" action="<%=path%>/admin/QuestionClassifyServlet">
<!-- ������ -->
<input type="hidden" name="method" value="add">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">���λ�ã�&gt;&gt;<span class="txt12">����������</span>&gt;&gt;�����������Ϣ</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">������������</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">�����������Ϣ</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">�����</td>
                  <td><div>
                  <input type="text" name="questionClassId" value="" maxlength="20" size="20" onblur="isValidNum(this,'numTip');">
                 <span class="style4" id="numTip"></span>
                  </div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">�������</td>
                  <td><div>
                  <input type="text" name="classifyName" value="" maxlength="20" size="20" nblur="isValidClassify(this,'classifyTip');">
                  <span class="style4" id="classifyTip"></span>
                  </div></td>
                </tr>
                 <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">��ע</td>
                  <td><div><input type="text" name="remarks" value="" maxlength="20" size="20" nblur="isValidRemarks(this,'remarksTip');">
                 <span class="style4" id="remarksTip"></span>
                  <div>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="ȷ������">
                        ��
                        <input type="reset" name="Submit2" value="�������">
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