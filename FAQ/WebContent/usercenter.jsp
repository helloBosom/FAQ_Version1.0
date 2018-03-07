<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
.style5 {color: #FFFFFF}
-->
</style>
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
          
          <td><div align="center"><a href="wfaqlist.jsp">未处理问题</a></div></td>
          <td><div align="center"><a href="yfaqlist.jsp">已处理问题</a></div></td>
          
          <td><div align="center"><a href="postquestion.jsp">我要提问</a></div></td>
          <td><div align="center"><a href="userreg.jsp">我要注册</a></div></td>
          
          
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
    <td width="200" align="center" valign="top">
         
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
          <br>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="32" background="images/usercenter.jpg" class="maintitle2">　</td>
            </tr>
            <tr>
              <td><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
                  <tr>
                    <td align="left" bgcolor="#FFFFFF" class="maintxt"><br>                      <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="30%" height="28">&nbsp;</td>
                        <td height="28">我的积分</td>
                      </tr>
                      <tr>
                        <td width="30%" height="28">&nbsp;</td>
                        <td height="28">我的问题</td>
                      </tr>
                      <tr>
                        <td width="30%" height="28">&nbsp;</td>
                        <td height="28">我的消息</td>
                      </tr>
                      <tr>
                        <td width="30%" height="28">&nbsp;</td>
                        <td height="28">我的相册</td>
                      </tr>
                      <tr>
                        <td width="30%" height="28">&nbsp;</td>
                        <td height="28">我的名片</td>
                      </tr>
                      <tr>
                        <td width="30%" height="28">&nbsp;</td>
                        <td height="28">我的好友</td>
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
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">JSP</td>
                  </tr>
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Struts1.2 Struts2.0</td>
                  </tr>
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Hibernate</td>
                  </tr>
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Spring</td>
                  </tr>
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><a href="faqlist.jsp">Oracle10g数据库</a></td>
                  </tr>
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">JavaScript　HTML</td>
                  </tr>
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF">WEB服务器技术</td>
                  </tr>
                  <tr>
                    <td height="28" align="left" bgcolor="#FFFFFF">其它技术</td>
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
                    <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt"><br>
                        <table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
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
          <br>
<br>
          <br>
          <br></td><td align="center" valign="top"><table width="98%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="26" align="left" background="images/bg.jpg" class="maintitle">　　<span class="maintitle2">我的问题列表</span></td>
          <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle"><img src="images/more.gif" width="80" height="20"></td>
        </tr>
        <tr>
          <td colspan="2"><br>
              <table width="95%"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#000000">
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
        <tr>
          <td colspan="2">&nbsp;</td>
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
          <tr>
            <td colspan="2">&nbsp;</td>
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
