<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
    <base href="<%=basePath%>">
    <style type="text/css">
    .style4 {color: #FF0000
    font-size:12px}
    </style>
    <script type="text/javascript">
    <!-- 编号验证-->
    function isValidNum(obj,id){
   	 var reg = /^[0-9]{1,10}$/;
   	 var strId = obj.value;
   	//window.alert(strId);
   	 if(strId==""){
   		document.getElementById(id).innerHTML="问题编号不能为空！";
   		
   	 }else if(reg.test(obj.value)){
   	 document.getElementById(id).innerHTML="";
   	 }else{
   		 document.getElementById(id).innerHTML="标号必须为1-10位数字";
   	 }
   	 
   	 
    }
    

    function isValidClassify(obj,id){
   	 var reg =/^[\u4e00-\u9fa5]{1,10}$/;
   	 var strId = obj.value;
   	//window.alert(strId);
   	 if(strId==""){
   		document.getElementById(id).innerHTML="类别名称不能为空！";
   		
   	 }else if(reg.test(obj.value)){
   	 document.getElementById(id).innerHTML="";
   	 }else{
   		 document.getElementById(id).innerHTML="类别名称必须由汉字组成！";
   	 }
   	 
   	 
    }
    
    
    function isValidRemarks(obj,id){
      	 var reg =/^[()\u4e00-\u9fa5)|[0-9a-zA-Z]]{1,10}$/;
      	 var strId = obj.value;
      	//window.alert(strId);
      	 if(strId==""){
      		document.getElementById(id).innerHTML="备注不能为空！";
      		
      	 }else if(reg.test(obj.value)){
      	 document.getElementById(id).innerHTML="";
      	 }else{
      		 document.getElementById(id).innerHTML="备注长度应介于1-10之间";
      	 }
      	 
      	 
       }
    </script>
</head>

<body>
<form name="form1" method="post" action="<%=path%>/admin/QuestionClassifyServlet">
<!-- 隐藏域 -->
<input type="hidden" name="method" value="add">
<table width="100%"  border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td class="txt14">你的位置：&gt;&gt;<span class="txt12">问题类别管理</span>&gt;&gt;添加新类别信息</td>
  </tr>
  <tr>
    <td class="txt14">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="60%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#999999">
        <tr>
          <td width="40" height="22" align="center" valign="middle" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/ico1.gif" width="10" height="13"></td>
          <td width="850" height="22" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF" class="txt12">　问题类别管理</td>
          <td height="22" align="right" valign="top" background="images/index_xiao_windows_back.gif" bgcolor="#FFFFFF"><img src="images/index_xiao_windows_right.gif" width="20" height="22"></td>
        </tr>
        <tr valign="top">
          <td height="400" colspan="3" bgcolor="#FFFFFF"><br>
              <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#AFC8E7">
                  <td height="28" colspan="2"><div align="center">增加新类别信息</div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">类别编号</td>
                  <td><div>
                  <input type="text" name="questionClassId" value="" maxlength="20" size="20" onblur="isValidNum(this,'numTip');">
                 <span class="style4" id="numTip"></span>
                  </div></td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">类别名称</td>
                  <td><div>
                  <input type="text" name="classifyName" value="" maxlength="20" size="20" nblur="isValidClassify(this,'classifyTip');">
                  <span class="style4" id="classifyTip"></span>
                  </div></td>
                </tr>
                 <tr bgcolor="#FFFFFF">
                  <td width="40%" align="center">备注</td>
                  <td><div><input type="text" name="remarks" value="" maxlength="20" size="20" nblur="isValidRemarks(this,'remarksTip');">
                 <span class="style4" id="remarksTip"></span>
                  <div>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                  <td colspan="2"><div align="center">
                      <input type="submit" name="Submit" value="确定添加">
                        　
                        <input type="reset" name="Submit2" value="清除重填">
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
