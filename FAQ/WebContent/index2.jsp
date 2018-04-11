<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="peri.fun.service.IQuestionClassifyService" %>
<%@ page import="peri.fun.model.QuestionClassify" %>
<%@ page import="peri.fun.model.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- List<QuestionClassify>queryQuestionClassify()
--%>
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
.style4 {
	color: #FFFFFF;
	font-size: 12pt;
}
.style5 {color: #FFFFFF}
.style6 {font-size: 10pt; line-height: 25px; font-weight: normal; font-family: "宋体";}
-->
</style>
<script type="text/javascript">
	//根据问题类别编号删除记录
	function logout(){
			window.location.href=
				"<%=path%>/NormalLoginServlet?method=logout";
	}
</script>
</head>

<body>
<table width="845" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr align="center">
    <td align="left"><img src="images/logo.jpg" width="339" height="109"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/19.jpg"><img src="images/18.jpg" width="650" height="135"></td>
  </tr>
</table>
<table width="845"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="32" align="left" background="images/navbg.gif"><table width="90%" height="32"  border="0" align="left" cellpadding="0" cellspacing="0">
        <tr class="navtxt">
          <td><div align="center"><a href="index.jsp">首页</a></div></td>
          <td><div align="center"><a href="tuijianfaqlist.jsp">推荐问题</a></div></td>
          <td><div align="center"><a href="wfaqlist.jsp">未处理问题</a></div></td>
          <td><div align="center"><a href="yfaqlist.jsp">已处理问题</a></div></td>
          <td><div align="center"><a href="tuijianfaqlist.jsp">热门问题</a></div></td>
          <td><div align="center"><a href="postquestion.jsp">我要提问</a></div></td>
          <td><div align="center"><a href="userreg.jsp">我要注册</a></div></td>
          <td><div align="center">使用帮助</div></td>
          <td><div align="center"><a href="usercenter.jsp">用户中心</a></div></td>
          <td><div align="center"><a href="admin/index.jsp">登录后台</a></div></td>
        </tr>
    </table></td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
  <tr>
    <td height="4" bgcolor="#000000"></td>
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
            <td bgcolor="#FFFFFF"><form name="loginform" action="<%=path %>/NormalLoginServlet" method="post" >
            <table width="100%"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
              <tr bgcolor="#FFFFFF">
                <td height="32" align="center" valign="middle" class="maintxt">昵称</td>
                <td><input name="username" type="text" size="12" maxlength="12"></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" align="center" valign="middle" class="maintxt">密 码</td>
                <td><input name="userpassword" type="password" size="12" maxlength="12"></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="32" align="center" valign="middle" class="maintxt">验证码</td>
                <td><input name="textfield3" type="text" size="12" maxlength="12"></td>
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
            <td bgcolor="#FFFFFF">
           <p>welcome:<span>${sessionScope.username} </span></p>
               <button name="logout" onclick="logout()">退出登录</button>    
                </div></td>
              </tr>
            </table>
            </form>
            </td>
            </c:otherwise>
            </c:choose>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><a href="userreg.jsp"><img src="admin/images/userreg.gif" width="200" height="32" border="0"></a></td>
      </tr>
    </table>      
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="admin/images/question.gif" width="200" height="40"></td>
        </tr>
      </table>      <br>
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
        
    </table>
        <br>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32" background="images/lefttitlebg02.jpg" class="maintitle2">　</td>
          </tr>
          <tr>
            <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">一共提问：</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">已经解决的问题：</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">尚待解决的问题：</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">提问最多的用户：</td>
              </tr>
              <tr>
                <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">解决问题最做的用户：</td>
              </tr>
            </table></td>
          </tr>
          
      </table>      
        <br>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32" background="images/lefttitlebg.jpg" class="maintitle2">　</td>
          </tr>
          <tr>
            <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
            
                <tr>
                  <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">JAVA SE6.0</td>
                </tr>
                
            </table></td>
          </tr>
         		
      </table>      
        <br>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32" background="images/lefttitlebg03.jpg" class="maintitle2">　</td>
          </tr>
          <tr>
            <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
                <tr>
                  <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><br>                  <table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td>张三</td>
                      <td>556840</td>
                    </tr>
                    <tr>
                      <td>李四</td>
                      <td>556840</td>
                    </tr>
                    <tr>
                      <td>王五</td>
                      <td>556840</td>
                    </tr>
                    <tr>
                      <td>马六</td>
                      <td>556840</td>
                    </tr>
                    <tr>
                      <td>管理员</td>
                      <td>556840</td>
                    </tr>
                  </table>
                  <br></td>
                </tr>
            </table></td>
          </tr>
        </table>      
        <br>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="32" background="images/lefttitlebg04.jpg" class="maintitle2">　</td>
          </tr>
          <tr>
            <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
                <tr>
                  <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">启明问题知识库文档</td>
                </tr>
                <tr>
                  <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">启明问题知识库文档</td>
                </tr>
                <tr>
                  <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">启明问题知识库文档</td>
                </tr>
            </table></td>
          </tr>
        </table>      <br>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>      
        <br>      
        <br>
    <br></td>
    <td align="center" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="26" align="left" background="images/bg.jpg" class="maintitle">　　<span class="style4">最新公告</span></td>
        <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle"><img src="images/more.gif" width="80" height="20"></td>
      </tr>
      <tr>
        <td colspan="2"><br>
            <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28"><a href="showdetail.jsp" target="_blank">在Struts1.2中上传图片怎么不能正常显示？</a></td>
                <td width="20%" height="28" align="center">2009-1-3</td>
                <td width="20%" height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
            </table>
            <br></td>
      </tr>
    </table>      <br>      <br>
      <table width="98%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="26" align="left" background="images/bg.jpg" class="maintitle">　　<span class="maintitle2">推荐问题</span></td>
          <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle"><img src="images/more.gif" width="80" height="20"></td>
        </tr>
        <tr>
          <td colspan="2"><br>          <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#CCCCCC">
              <td height="28" align="center" valign="middle"><div align="center">问题列表（FAQ List）</div></td>
              <td width="20%" height="28" align="center" valign="middle"><div align="center">发贴时间</div></td>
              <td width="20%" height="28" align="center" valign="middle"><div align="center">发帖人</div></td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="28"><a href="showdetail.jsp" target="_blank">在Struts1.2中上传图片怎么不能正常显示？</a></td>
              <td height="28" align="center">2009-1-3</td>
              <td height="28" align="center">张三</td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
              <td height="28" align="center">2009-1-3</td>
              <td height="28" align="center">张三</td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
              <td height="28" align="center">2009-1-3</td>
              <td height="28" align="center">张三</td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
              <td height="28" align="center">2009-1-3</td>
              <td height="28" align="center">张三</td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
              <td height="28" align="center">2009-1-3</td>
              <td height="28" align="center">张三</td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
              <td height="28" align="center">2009-1-3</td>
              <td height="28" align="center">张三</td>
            </tr>
            <tr bgcolor="#FFFFFF" class="maintxt">
              <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
              <td height="28" align="center">2009-1-3</td>
              <td height="28" align="center">张三</td>
            </tr>
          </table>
            <br></td>
        </tr>
       
    </table>
        <br>
        <table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="26" align="left" background="images/bg.jpg">　 <span class="maintitle2">未处理的问题</span></td>
            <td width="20%" align="center" valign="middle" background="images/bg.jpg"><img src="images/more.gif" width="80" height="20"></td>
          </tr>
          <tr>
            <td colspan="2">　　 <br>
              <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
                <tr bgcolor="#CCCCCC">
                  <td height="28" align="center" valign="middle"><div align="center">问题列表（FAQ List）</div></td>
                  <td width="20%" height="28" align="center" valign="middle"><div align="center">发贴时间</div></td>
                  <td width="20%" height="28" align="center" valign="middle"><div align="center">发帖人</div></td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                  <td height="28" align="center">2009-1-3</td>
                  <td height="28" align="center">张三</td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                  <td height="28" align="center">2009-1-3</td>
                  <td height="28" align="center">张三</td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                  <td height="28" align="center">2009-1-3</td>
                  <td height="28" align="center">张三</td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                  <td height="28" align="center">2009-1-3</td>
                  <td height="28" align="center">张三</td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                  <td height="28" align="center">2009-1-3</td>
                  <td height="28" align="center">张三</td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                  <td height="28" align="center">2009-1-3</td>
                  <td height="28" align="center">张三</td>
                </tr>
                <tr bgcolor="#FFFFFF" class="maintxt">
                  <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                  <td height="28" align="center">2009-1-3</td>
                  <td height="28" align="center">张三</td>
                </tr>
              </table>
            <br></td>
          </tr>
        
      </table>
      <br>
      <table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="26" align="left" background="images/bg.jpg">　　<span class="maintitle2">已经处理的问题</span></td>
          <td width="20%" align="center" valign="middle" background="images/bg.jpg"><img src="images/more.gif" width="80" height="20"></td>
        </tr>
        <tr>
          <td colspan="2">　　 <br>
            <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
              <tr bgcolor="#CCCCCC">
                <td height="28" align="center" valign="middle"><div align="center">问题列表（FAQ List）</div></td>
                <td width="20%" height="28" align="center" valign="middle"><div align="center">发贴时间</div></td>
                <td width="20%" height="28" align="center" valign="middle"><div align="center">发帖人</div></td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
              <tr bgcolor="#FFFFFF" class="maintxt">
                <td height="28">在Struts1.2中上传图片怎么不能正常显示？</td>
                <td height="28" align="center">2009-1-3</td>
                <td height="28" align="center">张三</td>
              </tr>
            </table>
            <br></td>
        </tr>
      </table>
   
    <br></td></tr>
</table>
<table width="845"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#000000" height="6"></td>
  </tr>
  <tr>
    <td height="64" bgcolor="#5a8ddc" align="center"><p class="style5"><strong>地址</strong>：西安市高新技术产业开发区锦业1路11号西安软件服务外包学院实训基地<br>
    西安市高新技术产业开发区</p></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc" align="center"><span class="style5"><strong>电话</strong>：029-87607249  87669779</span></td>
  </tr>
  <tr>
    <td height="32" bgcolor="#5a8ddc">&nbsp;</td>
  </tr>
</table>
</body>
</html>
