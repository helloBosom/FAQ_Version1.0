//var rootpath = "/TopIcms";
var webroot = document.location.href;
webroot = webroot.substring(webroot.indexOf('//') + 2, webroot.length);
webroot = webroot.substring(webroot.indexOf('/') + 1, webroot.length);
webroot = webroot.substring(0, webroot.indexOf('/'));
var rootpath = '/' + webroot;

function MM_preloadImages() { //v3.0
    var d = document;
    if (d.images) {
        if (!d.MM_p) d.MM_p = new Array();
        var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
        for (i = 0; i < a.length; i++)
            if (a[i].indexOf("#") != 0) {
                d.MM_p[j] = new Image;
                d.MM_p[j++].src = a[i];
            }
    }
}

function MM_swapImgRestore() { //v3.0
    var i, x, a = document.MM_sr;
    for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
}

function MM_findObj(n, d) { //v4.01
    var p, i, x;
    if (!d) d = document;
    if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
        d = parent.frames[n.substring(p + 1)].document;
        n = n.substring(0, p);
    }
    if (!(x = d[n]) && d.all) x = d.all[n];
    for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
    for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
    if (!x && d.getElementById) x = d.getElementById(n);
    return x;
}

function MM_swapImage() { //v3.0
    var i, j = 0, x, a = MM_swapImage.arguments;
    document.MM_sr = new Array;
    for (i = 0; i < (a.length - 2); i += 3)
        if ((x = MM_findObj(a[i])) != null) {
            document.MM_sr[j++] = x;
            if (!x.oSrc) x.oSrc = x.src;
            x.src = a[i + 2];
        }
}

function hideViewArea() {
    top.main.cols = "6,*";
    top.viewFrame.viewArea.cols = "0,6";
    var imageId = top.viewFrame.sizeControlFrame.document.getElementById("image");
    //var imgSrc = "<a href=" + "javascript:showViewArea();" + "><img src='default/images/showRight.gif' name='leftImage' width='7' height='50' border='0' id='leftImage' onMouseOver=" + " MM_swapImage('leftImage','','default/images/showRightOver.gif',1)" + " onMouseOut=" + " MM_swapImgRestore()" + "></a>";
    var imgSrc = "<a href=" + "javascript:showViewArea();" + "><img src='../" + "images/frame/showRight.gif' name='leftImage' width='7' height='50' border='0' id='leftImage' onMouseOver=" + " MM_swapImage('leftImage','','../" + "images/frame/showRightOver.gif',1)" + " onMouseOut=" + " MM_swapImgRestore()" + "></a>";
    imageId.innerHTML = imgSrc;
}

function showViewArea() {
    top.main.cols = "180,*";
    top.viewFrame.viewArea.cols = "170,6";
    var imageId = top.viewFrame.sizeControlFrame.document.getElementById("image");
    var imgSrc = "<a href=" + "javascript:hideViewArea();" + "><img src='../" + "images/frame/hideLeft.gif' name='leftImage' width='7' height='50' border='0' id='leftImage' onMouseOver=" + " MM_swapImage('leftImage','','../" + "images/frame/hideLeftOver.gif',1)" + " onMouseOut=" + " MM_swapImgRestore()" + "></a>";
    imageId.innerHTML = imgSrc;

}

function toURL(name, url) {
    //top.headFrame.pageTitle.value = name;
    //clearNavList();
    top.mainFrame.location.href = url;
}

function getPageTitle() {
    var pageTitleStr = top.headFrame.pageTitle.value;
    var pageTitleId = document.getElementById("pageTitle");
    pageTitleId.innerHTML = pageTitleStr;
}

//�������ϵ��������
function navToURL(url) {
    //    top.headFrame.isShowNav.value = 'true';
    top.mainFrame.location.href = url;
}


/** -----------------������ʹ�õĺ���--------------------- **/
//checks browser and sets up layers accordingly
//var path = "default/images/navigate/";
var path = rootpath + "/frame/" + "default/images/navigate/";
//imgArray ��һ����ά���飺[imgName,on_img_src,off_img_src]
var imgArray = [
    ["img1", path + "tab1_on.gif", path + "tab1_off.gif"],
    ["img2", path + "tab2_on.gif", path + "tab2_off.gif"]]

//��ʾ�������еĵ�һ����壬�������������
function showOne() {
    initnavigate();
    updateTabs('img1');
    showLayer('one');
    hideLayer('two');
    showNavigateView();
}

//��ʾ�������еĵڶ�����壬�������������
function showTwo() {
    initnavigate();
    updateTabs('img2');
    showLayer('two');
    hideLayer('one');
    showNavigateView();
}

function showLayer(layerName) {
    if (top.viewFrame.navigateFrame.document.layers) {
        eval(layerRef + layerName + '.style.display="block"');
    } else {
        eval('top.viewFrame.navigateFrame.document.getElementById(' + "'" + layerName + "'" + ').style.display = "block"');
    }
}

function hideLayer(layerName) {
    if (top.viewFrame.navigateFrame.document.layers) {
        eval(layerRef + layerName + '.style.display="none"');
    } else {
        eval('top.viewFrame.navigateFrame.document.getElementById(' + "'" + layerName + "'" + ').style.display = "none"');
    }
}

function initnavigate() {
    if (top.viewFrame.navigateFrame.document.layers) {
        layerRef = "top.viewFrame.navigateFrame.document.layers.";
    }
    if (top.viewFrame.navigateFrame.document.images) {
    }
}

function updateTabs(imgName) {
    with (top.viewFrame.navigateFrame) {
        if (document.images) {
            for (var i = 0; i < imgArray.length; i++) {
                if (imgArray[i][0] == imgName) {
                    document.all(imgArray[i][0]).src = imgArray[i][1];
                } else {
                    document.all(imgArray[i][0]).src = imgArray[i][2];
                }
            }
        }
    }

}


/**-------------------������ʾʹ�õĺ���-----------------**/
//�۽�����������
function errorFocus(errId) {
    top.mainFrame.document.all(errId).focus();
}

//��������Ϣ��������ʾ�����
function fillError() {
    var tdiv = top.viewFrame.navigateFrame.document.getElementById('error_id');
    //Ϊ�����������aaf���е�js������2006��3��31�ձ����ڴ˽����޸�
    //ԭ������Ϊ��tdiv.innerHTML = top.mainFrame.document.all("__errorInfo").innerHTML;
    //wangpu
    tdiv.innerHTML = document.all("__errorInfo").innerHTML;
}

//��䵼���б����������
function fillNavList() {
    var tdiv = top.viewFrame.navigateFrame.document.getElementById('nav_id');
    tdiv.innerHTML = top.mainFrame.document.all("__nav_id").innerHTML;
}

//��䵼���б�����ʾ�����б�
function fillNavAndShow() {
    //��䵼������������
    fillNavList();
    //��ʾ������
    showOne();
    //���õ�����״̬Ϊ����״̬
    top.headFrame.isShowNav.value = "true";
}

//��յ������б�������
function clearNavList() {
    var tdiv = top.viewFrame.navigateFrame.document.getElementById('nav_id');
    tdiv.innerHTML = "";
    //���õ�����״̬Ϊ����״̬
    top.headFrame.isShowNav.value = "false";
    //���ص�����
    hideNavigateView();
}


//�Ӵ�����ʾ�������մ�����Ϣ,����ʾ�������
function clearError() {
    var tdiv = top.viewFrame.navigateFrame.document.getElementById('error_id');
    tdiv.innerHTML = "";
    if (top.headFrame.isShowNav.value == "true") {
        //��ʾ�������
        showOne();
    } else {//���ص�����
        hideNavigateView();
    }
}

function fillJsErrorAndShow(errs) {
    var tdiv = top.viewFrame.navigateFrame.document.getElementById('error_id');
    var strHtml = "<TABLE cellSpacing=0 cellPadding=0 width='100%' align=center border=0>";
    for (var i = 0; i < errs.length; i++) {
        strHtml += "<TR>";
        strHtml += "<TD><IMG src='" + rootpath + "/frame/default/images/navigate/error_light.gif'></TD>";
        strHtml += "<TD class='TD_guide_line_test'><A href=\"javascript:errorFocus('" + errs[i][0] + "');\">" + errs[i][1] + "</A></TD>";
        strHtml += "</TR>";
    }
    strHtml += "</TABLE>";
    tdiv.innerHTML = strHtml;
    showTwo();
    window.attachEvent("onunload", clearError);
}

//��ʾ�ȴ�ҳ��
function _showWait() {
    var win = top.headFrame;
    if (win == null) return;
    if (win._wait != null) return;
    win._wait = win.showModelessDialog(rootpath + "/page/frame/Loading.jsp", window, "dialogTop:550px;dialogLeft:750px;dialogHeight: 100px; dialogWidth: 200px; center: yes; help: no; scroll: no; status: no;");
    ;
}

//���صȴ�ҳ��
function _hiddenWait() {
    var win = top.headFrame;
    if (win == null) return;
    if (win._wait != null) {
        if (!win._wait.closed) win._wait.close();
        win._wait = null;
    }
}

//���壬�����¼�����ֹ����ظ��¼�
//���¼�
//window.detachEvent("onload",_hiddenWait);
//window.detachEvent("onunload",_showWait);
////����¼�
//window.attachEvent("onload",_hiddenWait);
//window.attachEvent("onunload",_showWait);