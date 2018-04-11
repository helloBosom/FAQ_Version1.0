<%@ page language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>机构管理</title>
    <base href="<%=basePath%>">
    <link href="../css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-location">
    <tr>
        <td height=25><img src="../images/web_icon01.gif" width="11" height="8" align="absmiddle"> 当前位置：分配角色</td>
    </tr>
</table>
<table align="center" class="table-list">
    <tr>
        <td valign="top">
            <form name="form1" method="post" action="org_info.html">
                <table align="center" class="table-form">
                    <tr>
                        <td colspan="4" class="table-title"> 分配角色</td>
                    </tr>
                    <tr>
                        <td width="15%" class="table-list_title">所在机构</td>
                        <td width="35%">河南省分公司网管中心网管室</td>
                        <td width="15%" class="table-list_title">职位类型</td>
                        <td width="35%">一般工作人员</td>
                    </tr>
                    <tr>
                        <td class="table-list_title">职位名称</td>
                        <td>网管室EOMS组组员</td>
                        <td class="table-list_title">职位描述</td>
                        <td>EOMS项目维护管理</td>
                    </tr>
                </table>
                <br>
                <table border="0" align="center" cellspacing="0" class="table-button">
                    <tr>
                        <td>
                            <iframe name="left" width="250" height="300" src="left.html"></iframe>
                        </td>
                        <td width="40"><input onClick="javascript:left.rightToLeft()" type="button" value="<<--"
                                              name="addUsers" class="cancle"> <br>
                            <br>
                            <input onClick="javascript:right.leftToRight()" type="button" value="-->>"
                                   name="removeUsers" class="cancle"></td>
                        <td>
                            <iframe width="250" height="300" src="right.html" name="right"></iframe>
                        </td>
                    </tr>
                </table>
                <table align="center" cellpadding="0" cellspacing="6" class="table-button">
                    <tr>
                        <td><input name="submit" type="button" class="cancle" value="保存"> <input name="reset"
                                                                                                 type="submit"
                                                                                                 class="cancle"
                                                                                                 value="返回"></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
</body>
</html>
<script language="jscript">
    function beforeSubmit() {
        document.mainForm.newStr.value = left.rootTree.getAllOther();
        document.mainForm.submitButton.disabled = true;
        document.mainForm.cancleButton.disabled = true;
        document.mainForm.submit();
    }

    function cancle() {
        window.location = "#";
    }
</script>
