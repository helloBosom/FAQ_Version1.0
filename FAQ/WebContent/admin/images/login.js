window.onload = function () {
    document.getElementById("txtUserSerial").focus();
}

function setCookie(name, value) {
    var Days = 7;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}

function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return unescape(arr[2]);
    return null;
}

function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}

function onDownloadDone(e) {
    e = e.replace("£¬", ",");
    e = e.replace(" ", "");
    if (e.length != 3) {
        document.getElementById("Msg").innerHTML = "<font color='#FFFFFF'>" + e + "</font>";
        document.getElementById("txtUserSerial").focus();
        document.getElementById("LoginBotton").style.filter = "progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=100,finishOpacity=100)";
        document.getElementById("LoginBotton").disabled = false;
    }
    else {
        document.getElementById("Msg").innerHTML = "<color='#FFFFFF'>µÇÂ½ÖÐ,ÇëÉÔºò...</>";
        delCookie("column_tab");
        delCookie("column_i");
        delCookie("column_j");
        delCookie("tabindex");
        var defaultArr = e.split(",");
        setCookie("default_column_i", defaultArr[0]);
        setCookie("default_column_j", defaultArr[1]);
        location.replace("index.asp");
    }
}

function CheckUser() {
    if (!document.getElementById("LoginBotton").disabled) {
        document.getElementById("LoginBotton").style.filter = "progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=50,finishOpacity=50)";
        document.getElementById("LoginBotton").disabled = true;
        var url = "authenticate.asp?txtUserSerial=" + document.getElementById("txtUserSerial").value + "&txtPassword=" + document.getElementById("txtPassword").value;
        document.getElementById("LoginForm").startDownload(url, onDownloadDone);
    }
}