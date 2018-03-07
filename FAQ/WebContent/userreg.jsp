<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <TITLE>FAQ管理系统</TITLE>
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
<!-- 注册帐号验证-->
 function isValidId(obj,id){
	 var reg = /^[0-9]{4,8}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="注册号不能为空！";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="注册号必须为4～8位数字";
	 }
	 
	 
 }

 <!--姓名验证-->
 function isValidName(obj,id){
	 var reg = /^[\u4e00-\u9fa5]{2,4}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="姓名不能为空！";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="请输入正确的姓名(2～4个汉字)";
	 }
 }

 <!--密码验证-->
 function isValidPwd(obj,id){
	 var reg = /^[A-Za-z0-9]{6,10}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="密码不能为空！";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="密码必须由6～10为字母.数字组成!";
	 }
 }

 <!--qq验证-->
 function isValidQQ(obj,id){
	 var reg = /^[0-9]{6,12}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="";
			
		 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="请输入合法的qq(6～12位数字)";
	 }
 }
 
 <!--Email验证-->
 function isValidEmail(obj,id){
	 var reg = /^[-_A-Za-z0-9]+(\.[-_A-Za-z0-9]+)*@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="Email不能为空！";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="请输入合法的Email!";
		 }
 }
 <!--MSN验证-->
 function isValidMSN(obj,id,id1){
	 var reg = /^[A-Za-z0-9]+@msn\.com$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="MSN不能为空！";
			document.getElementById(id1).innerHTML="";
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 document.getElementById(id1).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="请输入合法的MSN!";
			 document.getElementById(id1).innerHTML="请输入的MSN!";
		 }
 }
 
 <!--联系电话验证-->
 function isValidTelNum(obj,id){
	 var reg = /^[0-9]{6,14}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="请输入正确的联系电话!";
		 }
 }
 
 <!--移动电话验证-->
 function isValidMoblie(obj,id){
	 var reg = /^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/;
	 var strId = obj.value;
	 if(strId==""){
			document.getElementById(id).innerHTML="请输入手机号!";
			
		 }else if(reg.test(obj.value)){
		 document.getElementById(id).innerHTML="";
		 }else{
			 document.getElementById(id).innerHTML="请输入正确的手机号码!";
		 }
 }

 <!--非必选汉字验证-->
 function isValidChinese(obj,id){
	 var reg = /^[\u4e00-\u9fa5]{1,10}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="请输入2~10位汉字信息!";
	 }
 }
 <!--班级信息验证-->
 function  isValidClass(obj,id){
	 var reg = /^[0-9]{2,3}$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="请输入2~3数字的班级信息!";
	 }
 }
 <!--身份证号码验证-->isValidBirthday
 function  isValidIdCardNo(obj,id){
	 var reg = /^[0-9]{17}(X|[0-9])$/;
	 var strId = obj.value;
	//window.alert(strId);
	 if(strId==""){
		document.getElementById(id).innerHTML="";
		
	 }else if(reg.test(obj.value)){
	 document.getElementById(id).innerHTML="";
	 }else{
		 document.getElementById(id).innerHTML="身份证号码不正确!";
	 }
 }
 <!--生日验证-->
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
		 document.getElementById(id).innerHTML="出生日期格式不正确!";
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
          <td><div align="center"><a href="<%=path %>/IndexServlet">首页</a></div></td>
          
           <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionNo">未处理问题</a></div></td>
          <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionOk">已处理问题</a></div></td>
          
          <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionType">我要提问</a></div></td>
          <td><div align="center"><a href="<%=path %>/IndexServlet?method=queryQuestionType1">我要注册</a></div></td>
          
          
          <td><div align="center"><a href="admin/index.jsp">登录后台</a></div></td>
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
                <td height="32" align="center" valign="middle" class="maintxt">用户名</td>
                <td><input name="username" type="text" size="12" maxlength="12"></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" align="center" valign="middle" class="maintxt">密 码</td>
                <td><input name="userpassword" type="password" size="12" maxlength="12"></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" colspan="2">
                  <div align="right">
                    <input type="submit" name="Submit" value="用户登录">
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
                    <p>欢迎您：<span>${sessionScope.username} </span></p>
                </div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" colspan="2">
                  <div align="right">
                    <button name="logout" onclick="logout();">退出登录</button>
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
            <td height="32" background="images/lefttitlebg.jpg" class="maintitle2">　</td>
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
        <td height="26" background="images/bg.jpg" class="maintitle">　　<span class="maintitle2">用户注册</span></td>
        <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><br>          <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
          <tr bgcolor="#CCCCCC">
            <td height="28" colspan="2" align="center" valign="middle"><div align="center">用户基本信息（必填项目）</div>              </td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt" >
            <td width="29%" height="32"><div align="center">学员注册号　</div></td>
            <td width="71%" height="13" align="center"><div align="left">
              　
                  <input type="text" name="userid" "id=userid" onblur="isValidId(this,'idTip');">
                  <span class="style4" id="idTip" >*(*为必填项目)</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">学员姓名　</div></td>
            <td width="71%" height="14" align="center"><div align="left">
              　
                  <input type="text" name="username" onblur="isValidName(this,'nameTip');">
                  <span class="style4" id="nameTip">*</span></div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">用户密码　</div></td>
            <td height="28" align="center"><div align="left">
              　
                  <input type="password" name="userpassward" onblur="isValidPwd(this,'pwdTip');">
                  <span class="style4" id="pwdTip">*</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">用户QQ　</div></td>
            <td height="28" align="center"><div align="left">
              　
                  <input type="text" name="studqq" onblur="isValidQQ(this,'qqTip');">
                  <span class="style4" id="qqTip"></span></div>
            </div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">电子邮件　</div></td>
            <td height="28" align="center"><div align="left">
              　
                  <input type="text" name="studemail" onblur="isValidEmail(this,'emailTip');">
                  <span class="style4" id=emailTip>*</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">MSN　</div></td>
            <td height="13" align="center"><div align="left">
              　
                  <input type="text" name="textfield6" onblur="isValidMSN(this,'MSNTip','MSNTip1');">
                   <span class="style4" id="MSNTip">*</span>
                   <span class="style5" id="MSNTip1">例如:admin@msn.com</span>
            </div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">联系电话　</div></td>
            <td height="14" align="center"><div align="left">
              　
                  <input type="text" name="contactnumber" onblur="isValidTelNum(this,'telTip');">
                  <span class="style4" id="telTip"></span></div>
            </div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">移动电话　</div></td>
            <td height="6" align="center"><div align="left">
              　
                  <input type="text" name="mobilephone" onblur="isValidChinese(this,'mobileTip');">
                  <span class="style4" id="mobileTip">*</span></div></td>
            </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">学习专业　</div></td>
            <td height="2" align="center"><div align="left">
              　
                  <input type="text" name="textfield9" onblur="isValidChinese(this,'majorTip');">
                  <span class="style4" id="majorTip"></span>
            </div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">班级　</div></td>
            <td height="3" align="center"><div align="left">
              　
                  <input type="text" name="classes" onblur="isValidClass(this,'classTip');">
                  <span class="style4" id="classTip">*</span></div></td>
          </tr>
          <tr bgcolor="#FFFFFF" class="maintxt">
            <td height="32"><div align="center">验证码　</div></td>
            <td height="14" align="center">&nbsp;</td>
          </tr>
        </table>
          <br>
          <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#CCCCCC">
              <td height="28" colspan="2" align="center" valign="middle"><div align="center">用户高级信息（选填）</div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td width="29%" height="32"><div align="center">毕业院校　</div></td>
              <td width="71%" height="28" align="center"><div align="left">
                　
                    <input type="text" name="textfield8" onblur="isValidChinese(this,'CollegeTip');">
                    <span class="style4" id="CollegeTip"></span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">专业　</div></td>
              <td height="28" align="center"><div align="left">
                　
                    <input type="text" name="textfield22" onblur="isValidChinese(this,'MajorTip');">
                    <span class="style4" id="MajorTip"></span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">用户身份号码　</div></td>
              <td height="28" align="center"><div align="left">
                　
                    <input type="text" name="identitycard" onblur="isValidIdCardNo(this,'IdCardNoTip');">
                    <span class="style4" id="IdCardNoTip"></span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">出生日期　</div></td>
              <td height="28" align="center"><div align="left">
                　
                    <input type="text" name="birth" onblur="isValidBirthday(this,'birthdayTip');">
                      <span class="style5" id="birthdayTip">例如：2000-01-01</span>
                    </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">英文水平　</div></td>
              <td height="13" align="center"><div align="left">
                　
                    <select name="select4">
                  <option value="common">大学基础英语</option>
                  <option value="CET4">大学四级</option>
                  <option value="CET6">大学六级</option>
                  <option value="well">良好</option>
                  <option value="excellent">优秀</option>
                </select>
              </div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">是否在职人员&nbsp;&nbsp;</div></td>
              <td height="6" align="center"><div align="left">
                    　
                        <input type="radio" name="radiobutton" value="radiobutton">
                在职
                <input type="radio" name="radiobutton" value="radiobutton">
                学生在读
                <input type="radio" name="radiobutton" value="radiobutton">
                待业</div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="32"><div align="center">工作单位　</div></td>
              <td height="7" align="center"><div align="left">
                　
                    <input type="text" name="textfield12" onblur="isValidChinese(this,'jobDepTip');">
                    <span class="style4" id="jobDepTip"></span>
              </div></td>
            </tr>
          </table>  
          <br>  
          <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="100%" height="28" align="center" valign="middle"><div align="center">
                <input type="submit" name="Submit" value="确定注册">　
                <input type="submit" name="Submit2" value="取消重填">
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
    <td height="64" bgcolor="#5a8ddc"><p class="style5"><strong>地址</strong>：西安市高新技术产业开发区锦业1路11号西安软件服务外包学院实训基地<br>
      西安市高新技术产业开发区科技二路68号西安软件园秦风阁C101 E102</p></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc"><span class="style5"><strong>电话</strong>：029-87607249  87669779</span></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc">&nbsp;</td>
  </tr>
</table>
</body>
</html>
