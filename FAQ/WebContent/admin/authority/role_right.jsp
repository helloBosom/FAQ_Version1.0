<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
  
  <title>�˵�</title>
   <base href="<%=basePath%>">
  <link href="../css/main.css" type="text/css" rel="stylesheet">
  <script type="text/javascript" src="../js/frame/xtree1.js"></script>
  <script type="text/javascript" src="../js/frame/frame1.js"></script>
  <script language="javascript">
function TransTree(src,dest)
{
  this.srcTree=src;
  this.destTree=dest;
  this.obj = this.srcTree.getSelected();  //ѡ�еĽڵ�
  this.parentObj = this.srcTree.getSelected().parentNode;  //���������

  //ͨ��other��obj   destTree,other
  this.getObjByOther=function(treeNode,other)
  {
     var obj;
     if(treeNode.other==other) return treeNode;
     for(var i=0;i<treeNode.childNodes.length;i++)
	  {
	   obj=this.getObjByOther(treeNode.childNodes[i],other);
	   if(obj) break;
	  }
	 return obj;
  }

  //����roottree��other������ͬ
 this.tran=function()
 {
   var allOther=this.destTree.getAllOther();
   var parentObj=this.obj.parentNode;
   var lastParentObj=this.obj; //�ϸ�parentobj

   //��ѡ�нڵ����ϵݹ飬ֱ���ҵ���ͬ�ĸ��ڵ�
   var parentOther=new Array();
   var parentText=new Array();
   var i=0;
   while(parentObj && (allOther.indexOf(parentObj.other)<0))
    {
        parentOther[i]=parentObj.other;
		parentText[i]=parentObj.text;
		i=i+1;
		lastParentObj=parentObj;
		parentObj=parentObj.parentNode;
	}

  if(!parentObj) parentObj=lastParentObj;  //parentObj�Ǳ�ʾ���ϲ�һ�µ�

  //�����parentobj��srctree��
  //����õ�desttree��parentobj(��srctree��ͬ���)
  parentObj=this.getObjByOther(this.destTree,parentObj.other);
  for(var j=i-1;j>=0;j--)
   {
        parentObj=parentObj.add(new WebFXTreeItem(parentText[j],null,null,parentOther[j],false));
   }

   //��ѡ�ֵ��Ǹ�obj��Ҫ�ж��ǲ����Ѿ����������
   var destObj;
   if(this.getObjByOther(parentObj,this.obj.other)!=null)
	      destObj= this.getObjByOther(parentObj,this.obj.other);
   else
       destObj=parentObj.add(new WebFXTreeItem(this.obj.text,null,null,this.obj.other,false));

   //��ѡ�нڵ�������ӽڵ�
   this.tranObj(this.obj,destObj);

   //roottree
   if(!this.obj.parentNode)
     {
	   for(var i=this.obj.childNodes.length-1;i>=0;i--)
	    {
	     this.obj.childNodes[i].remove();
		 }
	   }
   else
   {
      this.obj.remove();
   //ɾ���ӵ㲿�֣�������ڵ�ֻ��һ���ڵ㣬�Ǹ��ڵ�Ҳɾ��
     while(this.parentObj && (this.parentObj.childNodes.length==0))
     {
	    this.obj=this.parentObj;
	    this.parentObj=this.parentObj.parentNode;
		this.obj.remove();
	}
	}

    //ˢ�´��� Խ����Խ�� ���Ǳ�����
	//this.destTree.indent();
	this.destTree.expandAll();
	this.destTree.collapseChildren();

	if(destObj.childNodes.length>0)
       destObj.expandAll();
	else
	  destObj.parentNode.expandAll();
 }

 this.tranObj=function(srcObj,destObj)
 {
    for(var i=0;i<srcObj.childNodes.length;i++)
	 {
	    var tempDestObj;
	    var tempSrcObj=srcObj.childNodes[i];
		if(this.getObjByOther(destObj,tempSrcObj.other)!=null)
		   tempDestObj=this.getObjByOther(destObj,tempSrcObj.other);
		else
	      tempDestObj=destObj.add(new WebFXTreeItem(tempSrcObj.text,null,null,tempSrcObj.other,false));
		this.tranObj(tempSrcObj,tempDestObj);
	  }
 }

}

function leftToRight(){
	var left=new TransTree(parent.left.rootTree,rootTree);
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
                /*һ���˵�*/
                var rootTree = new WebFXTree('�ѷ���Ȩ��');
                
				/*�����˵�*/    
				var folder1 = new WebFXTreeItem('ϵͳ����ά��', null, null, null, true);
				rootTree.add(folder1);  
				var folder2 = new WebFXTreeItem('Ͷ�߹���', null, null, null, true);
				rootTree.add(folder2); 

                /*�����˵�*/
                var item1_1 = new WebFXTreeItem("ְλ����");
                folder1.add(item1_1);
				var item1_2 = new WebFXTreeItem("����ְλ����");
                folder1.add(item1_2);	
				
				var item6_1 = new WebFXTreeItem("��������", "javascript:toURL('��������','../order/list1.jsp')");
                folder2.add(item6_1);	
				var item6_2 = new WebFXTreeItem("�ҵĹ���", "javascript:toURL('�ҵĹ���','../order/undoorder_list.jsp')");
                folder2.add(item6_2);	
				var item6_3 = new WebFXTreeItem("�Ѳ�������", "javascript:toURL('�Ѳ�������','../order/order_list.jsp')");
                folder2.add(item6_3);	
				var item6_4 = new WebFXTreeItem("������ѯ", "javascript:toURL('������ѯ','../order/search_list.jsp')");
                folder2.add(item6_4);

                document.write(rootTree);
                rootTree.expand();
            </script>
      </td>
    </tr>
  </table>
</body>
</html>