<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <TITLE>FAQ����ϵͳ</TITLE>
    <base href="<%=basePath%>">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="images/keymen.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style4 {color: #FF0000}
.style5 {color: #FFFFFF}
-->
</style>
<script type="text/javascript">
<!-- ע���ʺ���֤-->
 function isValidId(obj,id){
	 var reg = /^[0-9]{4,8}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="ע��Ų���Ϊ�գ�";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="ע��ű���Ϊ4��8λ����";
	 }
	 
	 
 }

 <!--������֤-->
 function isValidName(obj,id){
	 var reg = /^[\u4e00-\u9fa5]{2,4}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="��������Ϊ�գ�";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="��������ȷ������(2��4������)";
	 }
 }

 <!--������֤-->
 function isValidPwd(obj,id){
	 var reg = /^[A-Za-z0-9]{6,10}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="���벻��Ϊ�գ�";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="���������6��10Ϊ��ĸ.�������!";
	 }
 }

 <!--qq��֤-->
 function isValidQQ(obj,id){
	 var reg = /^[0-9]{6,12}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="";
			
		 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="������Ϸ���qq(6��12λ����)";
	 }
 }
 
 <!--Email��֤-->
 function isValidEmail(obj,id){
	 var reg = /^[-_A-Za-z0-9]+(\.[-_A-Za-z0-9]+)*@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="Email����Ϊ�գ�";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="������Ϸ���Email!";
		 }
 }
 <!--MSN��֤-->
 function isValidMSN(obj,id,id1){
	 var reg = /^[A-Za-z0-9]+@msn\.com$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="MSN����Ϊ�գ�";
			document.getElementById(id1).innerHTML="";
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 document.getElementById(id1).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="������Ϸ���MSN!";
			 document.getElementById(id1).innerHTML="�������MSN!";
		 }
 }
 
 <!--��ϵ�绰��֤-->
 function isValidTelNum(obj,id){
	 var reg = /^[0-9]{6,14}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="��������ȷ����ϵ�绰!";
		 }
 }
 
 <!--�ƶ��绰��֤-->
 function isValidMoblie(obj,id){
	 var reg = /^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="�������ֻ���!";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="��������ȷ���ֻ�����!";
		 }
 }

 <!--�Ǳ�ѡ������֤-->
 function isValidChinese(obj,id){
	 var reg = /^[\u4e00-\u9fa5]{1,10}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="������2~10λ������Ϣ!";
	 }
 }
 <!--�༶��Ϣ��֤-->
 function  isValidClass(obj,id){
	 var reg = /^[0-9]{2,3}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="������2~3���ֵİ༶��Ϣ!";
	 }
 }
 <!--���֤������֤-->isValidBirthday
 function  isValidIdCardNo(obj,id){
	 var reg = /^[0-9]{17}(X|[0-9])$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="���֤���벻��ȷ!";
	 }
 }
 <!--������֤-->
 function  isValidBirthday(obj,id){
	 var reg = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).className="style4";
		 document.getElementById(id).innerHTML="�������ڸ�ʽ����ȷ!";
	 }
 }
</script>
</head>

<body>
<table width="845" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr align="center">
    <td align="left"><img src="images/logo.jpg" alt="11" width="339" height="109"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/19.jpg"><img src="images/18.jpg" alt="11" width="650" height="135"></td>
  </tr>
</table>
<table width="845"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="32" align="left" background="images/navbg.gif"><table width="90%" height="32"  border="0" align="left" cellpadding="0" cellspacing="0">
        <tr class="navtxt">
          <td><div align="center"><a href="<%=path %>/IndexServlet">��ҳ</a></div></td>
          
           <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionNo">δ��������</a></div></td>
          <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionOk">�Ѵ�������</a></div></td>
          
          <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionType">��Ҫ����</a></div></td>
          <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionType1">��Ҫע��</a></div></td>
          
          
          <td><div align="center"><a href="admin/index.jsp">��¼��̨</a></div></td>
        </tr>
    </table></td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
  <tr>
    <td height="8"></td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="200" align="center" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#0099FF">
      <tr>
        <td><img src="admin/images/userlogin.gif" width="200" height="40"></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
          <tr>
          	<c:choose>
          	<c:when test="${empty sessionScope.username}">
            <td bgcolor="#FFFFFF"><form name="loginform" action="<%=path %>/IndexServlet?method=login" method="post" >
            <table width="100%"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
              <tr bgcolor="#FFFFFF">
                <td height="32" align="center" valign="middle" class="maintxt">�û���</td>
                <td><input name="username" type="text" size="12" maxlength="12"></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" align="center" valign="middle" class="maintxt">�� ��</td>
                <td><input name="userpassword" type="password" size="12" maxlength="12"></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" colspan="2">
                  <div align="right">
                    <input type="submit" name="Submit" value="�û���¼">
                </div></td>
              </tr>
            </table>
            </form>
            </td>
            </c:when>
         	<c:otherwise>
         	<tr bgcolor="#FFFFFF">
                <td height="32" colspan="2">
                  <div align="right">
                    <p>��ӭ����<span>${sessionScope.username} </span></p>
                </div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" colspan="2">
                  <div align="right">
                    <button name="logout" onclick="logout();">�˳���¼</button>
                </div></td>
              </tr>

            </c:otherwise>
            </c:choose>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><a href="<%=path %>/IndexServlet?method=queryQuestionType1"><img src="admin/images/userreg.gif" width="200" height="32" border="0"></a></td>
      </tr>
    </table>      
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><a href="<%=path %>/IndexServlet?method=queryQuestionType"><img src="admin/images/question.gif" width="200" height="40"></a></td>
        </tr>
      </table>      <br>
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
        
    </table>
        
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32" background="images/lefttitlebg.jpg" class="maintitle2">��</td>
          </tr>
          <tr>
            <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
            	<c:choose>
            	<c:when test="${empty questionClassifys }">
            	<tr><td>no data!</td></tr>
            	</c:when>
            	<c:otherwise>
            	<c:forEach var="v" items="${questionClassifys }">
                <tr>
                  <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">${v.classifyName}</td>
                </tr>
                </c:forEach>
                </c:otherwise>
                </c:choose>
            </table></td>
          </tr>
         		
      </table>      
        <br>
          <br>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>      
        <br>      
        <br>
    <br></td>
    <td valign="top">
	
	<form name="form1" method="post" action="<%=path %>/IndexServlet?method=addUser">
	<table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="26" background="images/bg.jpg" class="maintitle">����<span class="maintitle2">�û�ע��</span></td>
        <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><br>          <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
          <tr bgcolor="#CCCCCC">
            <td height="28" colspan="2" align="center" valign="middle"><div align="center">�û�������Ϣ��������Ŀ��</div>              </td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt" >
            <td width="29%" height="32"><div align="center">ѧԱע��š�</div></td>
            <td width="71%" height="13" align="center"><div align="left">
              ��
                  <input type="text" name="userid" "id=userid" onblur="isValidId(this,'idTip');">
                  <span class="style4" id="idTip" >*(*Ϊ������Ŀ)</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">ѧԱ������</div></td>
            <td width="71%" height="14" align="center"><div align="left">
              ��
                  <input type="text" name="username" onblur="isValidName(this,'nameTip');">
                  <span class="style4" id="nameTip">*</span></div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">�û����롡</div></td>
            <td height="28" align="center"><div align="left">
              ��
                  <input type="password" name="userpassward" onblur="isValidPwd(this,'pwdTip');">
                  <span class="style4" id="pwdTip">*</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">�û�QQ��</div></td>
            <td height="28" align="center"><div align="left">
              ��
                  <input type="text" name="studqq" onblur="isValidQQ(this,'qqTip');">
                  <span class="style4" id="qqTip"></span></div>
            </div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">�����ʼ���</div></td>
            <td height="28" align="center"><div align="left">
              ��
                  <input type="text" name="studemail" onblur="isValidEmail(this,'emailTip');">
                  <span class="style4" id=emailTip>*</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">MSN��</div></td>
            <td height="13" align="center"><div align="left">
              ��
                  <input type="text" name="textfield6" onblur="isValidMSN(this,'MSNTip','MSNTip1');">
                   <span class="style4" id="MSNTip">*</span>
                   <span class="style5" id="MSNTip1">����:admin@msn.com</span>
            </div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">��ϵ�绰��</div></td>
            <td height="14" align="center"><div align="left">
              ��
                  <input type="text" name="contactnumber" onblur="isValidTelNum(this,'telTip');">
                  <span class="style4" id="telTip"></span></div>
            </div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">�ƶ��绰��</div></td>
            <td height="6" align="center"><div align="left">
              ��
                  <input type="text" name="mobilephone" onblur="isValidChinese(this,'mobileTip');">
                  <span class="style4" id="mobileTip">*</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">ѧϰרҵ��</div></td>
            <td height="2" align="center"><div align="left">
              ��
                  <input type="text" name="textfield9" onblur="isValidChinese(this,'majorTip');">
                  <span class="style4" id="majorTip"></span>
            </div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">�༶��</div></td>
            <td height="3" align="center"><div align="left">
              ��
                  <input type="text" name="classes" onblur="isValidClass(this,'classTip');">
                  <span class="style4" id="classTip">*</span></div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">��֤�롡</div></td>
            <td height="14" align="center">&nbsp;</td>
          </tr>
        </table>
          <br>
          <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#CCCCCC">
              <td height="28" colspan="2" align="center" valign="middle"><div align="center">�û��߼���Ϣ��ѡ�</div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td width="29%" height="32"><div align="center">��ҵԺУ��</div></td>
              <td width="71%" height="28" align="center"><div align="left">
                ��
                    <input type="text" name="textfield8" onblur="isValidChinese(this,'CollegeTip');">
                    <span class="style4" id="CollegeTip"></span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">רҵ��</div></td>
              <td height="28" align="center"><div align="left">
                ��
                    <input type="text" name="textfield22" onblur="isValidChinese(this,'MajorTip');">
                    <span class="style4" id="MajorTip"></span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">�û���ݺ��롡</div></td>
              <td height="28" align="center"><div align="left">
                ��
                    <input type="text" name="identitycard" onblur="isValidIdCardNo(this,'IdCardNoTip');">
                    <span class="style4" id="IdCardNoTip"></span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">�������ڡ�</div></td>
              <td height="28" align="center"><div align="left">
                ��
                    <input type="text" name="birth" onblur="isValidBirthday(this,'birthdayTip');">
                      <span class="style5" id="birthdayTip">���磺2000-01-01</span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">Ӣ��ˮƽ��</div></td>
              <td height="13" align="center"><div align="left">
                ��
                    <select name="select4">
                  <option value="common">��ѧ����Ӣ��</option>
                  <option value="CET4">��ѧ�ļ�</option>
                  <option value="CET6">��ѧ����</option>
                  <option value="well">����</option>
                  <option value="excellent">����</option>
                </select>
              </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">�Ƿ���ְ��Ա&nbsp;&nbsp;</div></td>
              <td height="6" align="center"><div align="left">
                    ��
                        <input type="radio" name="radiobutton" value="radiobutton">
                ��ְ
                <input type="radio" name="radiobutton" value="radiobutton">
                ѧ���ڶ�
                <input type="radio" name="radiobutton" value="radiobutton">
                ��ҵ</div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">������λ��</div></td>
              <td height="7" align="center"><div align="left">
                ��
                    <input type="text" name="textfield12" onblur="isValidChinese(this,'jobDepTip');">
                    <span class="style4" id="jobDepTip"></span>
              </div></td>
            </tr>
          </table>  
          <br>  
          <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="100%" height="28" align="center" valign="middle"><div align="center">
                <input type="submit" name="Submit" value="ȷ��ע��">��
                <input type="submit" name="Submit2" value="ȡ������">
              </div></td>
            </tr>
          </table>          <br></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
    </table>
	</form>
      <br>
      <br>
      <br>
      <br></td>
  </tr>
</table>      
<table width="845"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#000000" height="6"></td>
  </tr>
  <tr>
    <td height="64" bgcolor="#5a8ddc"><p class="style5"><strong>��ַ</strong>�������и��¼�����ҵ��������ҵ1·11����������������ѧԺʵѵ����<br>
      �����и��¼�����ҵ�������Ƽ���·68���������԰�ط��C101 E102</p></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc"><span class="style5"><strong>�绰</strong>��029-87607249  87669779</span></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc">&nbsp;</td>
  </tr>
</table>
</body>
</html>
