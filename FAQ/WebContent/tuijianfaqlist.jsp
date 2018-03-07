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
.style3 {	color: #FF0000;
	font-weight: bold;
}
.style5 {color: #FFFFFF}
-->
</style>
</head>

<body>
<table width="845" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr align="center">
    <td align="left"><img src="images/logo.jpg" alt="LOGOS" width="339" height="109"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/19.jpg"><img src="images/18.jpg" alt="LOGOS" width="650" height="135"></td>
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
    <td height="8"></td>
  </tr>
</table>
<table width="845" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="200" align="center" valign="top">
      <table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#0099FF">
        <tr>
          <td><img src="admin/images/userlogin.gif" width="200" height="40"></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#5a8ddc">
              <tr>
                <td bgcolor="#FFFFFF"><table width="90%"  border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
                    <tr bgcolor="#FFFFFF">
                      <td height="32" align="center" valign="middle" class="maintxt">用户名称</td>
                      <td><input name="textfield" type="text" size="12" maxlength="12"></td>
                    </tr>
                    <tr bgcolor="#FFFFFF">
                      <td height="32" align="center" valign="middle" class="maintxt">用户密码</td>
                      <td><input name="textfield2" type="text" size="12" maxlength="12"></td>
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
                </table></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td><img src="admin/images/userreg.gif" width="200" height="32"></td>
        </tr>
      </table>
      <br>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
        
    </table>
        <br>
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
                  <td height="28" align="left" bgcolor="#FFFFFF" class="maintxt">Oracle10g数据库</td>
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
        <br>
  <br>      
        <br>
      <br></td><td valign="top"><table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="26" background="images/bg.jpg" class="maintitle">　　<span class="maintitle2">[首页]&gt;&gt;[未处理问题列表]&gt;&gt;[Oracle]</span></td>
        <td width="20%" align="center" valign="middle" background="images/bg.jpg" class="maintitle">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><br>          <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
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
          <br>
          <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
            <tr bgcolor="#CCCCCC">
              <td height="28" align="center" valign="middle"><div align="center"></div>                <div align="center">
                <table width="80%" height="28"  border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="center">首页</div></td>
                    <td><div align="center">上一页</div></td>
                    <td><div align="center">下一页</div></td>
                    <td><div align="center">最后一页</div></td>
                    <td><div align="center">跳转到第
                          <select name="select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                          </select>
                        页</div></td>
                  </tr>
                </table>
              </div></td>
              </tr>
          </table>
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
