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
<link href="images/keymen.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style5 {color: #FFFFFF}
-->
</style>
<script type="text/javascript">
function submitAnswer(username){
	if(typeof(username)=='undefined'||!username){
		alert("���ȵ�¼��");
		window.location.href="<%=path %>/IndexServlet?method=addUser";	
		return;
	}else{
		document.getElementById("answerForm").submit();
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
    <td valign="top"><table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="26" background="images/bg.jpg" class="maintitle">����<span class="maintitle2">���������ظ�</span></td>
          <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2"><br>
              <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#CCCCCC">
                  <td height="28" align="center" valign="middle"><div align="left">��������</div></td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td colspan="3" class="maintxt">�����ʡ�${question.title}<br>
                      ${question.content }</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td width="20%" class="maintxt">�����ߣ�${question.publisherId }</td>
                      <td width="20%" class="maintxt">ʱ�䣺${question.publishTime }</td>
                    </tr>
                  </table></td>
                </tr>
              </table>
              <br>
              <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#993300">
                <tr bgcolor="#CCCCCC">
                  <td height="28" align="center" valign="middle" bgcolor="#FB5846"><div align="left">��Ѵ�</div></td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">
                  
                  <!-- ��ʾ�ظ�������Ϣ -->
                  <c:choose>
                  	<c:when test="${empty answerquestion }">
                  	      <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">                    
                      <tr>
                        <td>���޻ظ�</td>                       
                      </tr>
                      </table>
                  	</c:when>
                  	<c:otherwise>
                  		<c:forEach items="${answerquestion }" var="v">
                  			
                  			 <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="3" class="maintxt">������𰸡�${question.title}<br>
                         ${v.questionContent }</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td width="20%" class="answertxt">�ش��ߣ�${v.userId }</td>
                        <td width="20%" class="answertxt">ʱ�䣺${v.replyTime }</td>
                      </tr>
                  </table>
                  
                  		</c:forEach>
                  	</c:otherwise>
                  </c:choose>
                  
                  
                 
                  </td>
                </tr>
              </table>      
              
                        
              <br>
              <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
                <tr bgcolor="#CCCCCC">
                  <td width="20%" height="28" align="center" valign="middle"><div align="center">���������б�</div></td>
                  <td width="20%" align="center" valign="middle"><div align="center"><a href="index.jsp">������ҳ</a></div></td>
                  <td width="20%" align="center" valign="middle">&nbsp;</td>
                  <td width="20%" align="center" valign="middle">&nbsp;</td>
                  <td width="20%" align="center" valign="middle">&nbsp;</td>
                </tr>
            </table>              
            <!-- ��Ա�ظ����� -->
             <form id="answerForm" action="<%=path%>/DisplayQuestionServlet" name="myform" method="post">
              <input type="hidden" name="method" value="addanswerquestion">
              <input type="hidden" name="publishQuestionId" value="${question.publish_question_id}">
              <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td class="maintxt">�ظ�����</td>
                      </tr>
                      <tr>
                         <td><textarea  width="100%" rows="10" cols="80" name="questionContent"></textarea></td>
                      </tr>
                       <tr>
                         <td align="center"><input type="button" name="button" onclick="submitAnswer('${sessionScope.username}');" value="�ύ">
                                                        <input type="reset" name="reset" value="ȡ��"></td>
                      </tr>
                  </table>
                  </form>
                  </td>
                </tr>
              </table>    
              
            <br>
              <br></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
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
