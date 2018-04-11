<%@ page language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>菜单</title>
    <base href="<%=basePath%>">
    <link href="../css/main.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="../js/frame/xtree1.js"></script>
    <script type="text/javascript" src="../js/frame/frame1.js"></script>
    <script language="javascript">
        function TransTree(src, dest) {
            this.srcTree = src;
            this.destTree = dest;
            this.obj = this.srcTree.getSelected();  //选中的节点
            this.parentObj = this.srcTree.getSelected().parentNode;  //留着最后用
            //通过other找obj   destTree,other
            this.getObjByOther = function (treeNode, other) {
                var obj;
                if (treeNode.other == other) return treeNode;
                for (var i = 0; i < treeNode.childNodes.length; i++) {
                    obj = this.getObjByOther(treeNode.childNodes[i], other);
                    if (obj) break;
                }
                return obj;
            }

            //两个roottree的other必须相同
            this.tran = function () {
                var allOther = this.destTree.getAllOther();
                var parentObj = this.obj.parentNode;
                var lastParentObj = this.obj; //上个parentobj

                //从选中节点象上递归，直到找到相同的父节点
                var parentOther = new Array();
                var parentText = new Array();
                var i = 0;
                while (parentObj && (allOther.indexOf(parentObj.other) < 0)) {
                    parentOther[i] = parentObj.other;
                    parentText[i] = parentObj.text;
                    i = i + 1;
                    lastParentObj = parentObj;
                    parentObj = parentObj.parentNode;
                }

                if (!parentObj) parentObj = lastParentObj;  //parentObj是表示最上层一致的

                //上面的parentobj是srctree的
                //下面得到desttree的parentobj(与srctree相同层次)
                parentObj = this.getObjByOther(this.destTree, parentObj.other);
                for (var j = i - 1; j >= 0; j--) {
                    parentObj = parentObj.add(new WebFXTreeItem(parentText[j], null, null, parentOther[j], false));
                }

                //建选种的那个obj，要判断是不是已经有这个层了
                var destObj;
                if (this.getObjByOther(parentObj, this.obj.other) != null)
                    destObj = this.getObjByOther(parentObj, this.obj.other);
                else
                    destObj = parentObj.add(new WebFXTreeItem(this.obj.text, null, null, this.obj.other, false));

                //传选中节点的所有子节点
                this.tranObj(this.obj, destObj);

                //roottree
                if (!this.obj.parentNode) {
                    for (var i = this.obj.childNodes.length - 1; i >= 0; i--) {
                        this.obj.childNodes[i].remove();
                    }
                }
                else {
                    this.obj.remove();
                    //删除接点部分，如果父节点只有一个节点，那父节点也删了
                    while (this.parentObj && (this.parentObj.childNodes.length == 0)) {
                        this.obj = this.parentObj;
                        this.parentObj = this.parentObj.parentNode;
                        this.obj.remove();
                    }
                }

                //刷新处理 越处理越差 还是别处理了
                //this.destTree.indent();
                this.destTree.expandAll();
                this.destTree.collapseChildren();

                if (destObj.childNodes.length > 0)
                    destObj.expandAll();
                else
                    destObj.parentNode.expandAll();
            }

            this.tranObj = function (srcObj, destObj) {
                for (var i = 0; i < srcObj.childNodes.length; i++) {
                    var tempDestObj;
                    var tempSrcObj = srcObj.childNodes[i];
                    if (this.getObjByOther(destObj, tempSrcObj.other) != null)
                        tempDestObj = this.getObjByOther(destObj, tempSrcObj.other);
                    else
                        tempDestObj = destObj.add(new WebFXTreeItem(tempSrcObj.text, null, null, tempSrcObj.other, false));
                    this.tranObj(tempSrcObj, tempDestObj);
                }
            }
        }

        function leftToRight() {
            var left = new TransTree(parent.left.rootTree, rootTree);
            left.tran();
            return;
        }
    </script>
</head>
<body topmargin="0" bgcolor="#F4F7FB">
<table border="0">
    <tr>
        <td nowrap>
            <script type="text/javascript">
                /*一级菜单*/
                var rootTree = new WebFXTree('已分配权限');

                /*二级菜单*/
                var folder1 = new WebFXTreeItem('系统管理维护', null, null, null, true);
                rootTree.add(folder1);
                var folder2 = new WebFXTreeItem('投诉工单', null, null, null, true);
                rootTree.add(folder2);

                /*三级菜单*/
                var item1_1 = new WebFXTreeItem("职位代理");
                folder1.add(item1_1);
                var item1_2 = new WebFXTreeItem("撤销职位代理");
                folder1.add(item1_2);

                var item6_1 = new WebFXTreeItem("新增工单", "javascript:toURL('新增工单','../order/list1.jsp')");
                folder2.add(item6_1);
                var item6_2 = new WebFXTreeItem("我的工作", "javascript:toURL('我的工作','../order/undoorder_list.jsp')");
                folder2.add(item6_2);
                var item6_3 = new WebFXTreeItem("已操作工单", "javascript:toURL('已操作工单','../order/order_list.jsp')");
                folder2.add(item6_3);
                var item6_4 = new WebFXTreeItem("工单查询", "javascript:toURL('工单查询','../order/search_list.jsp')");
                folder2.add(item6_4);

                document.write(rootTree);
                rootTree.expand();
            </script>
        </td>
    </tr>
</table>
</body>
</html>
