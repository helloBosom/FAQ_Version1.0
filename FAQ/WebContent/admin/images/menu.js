var old_num;

var right_arraw = "images/left_index_arrow_over.gif";
var down_arraw = "images/left_index_arrow.gif";

var column_i,column_j;

function setCookie(name,value)
{
    var Days = 7; 
    var exp  = new Date();
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}
function getCookie(name)
{
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]); return null;
}

function delCookie(name)
{
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval=getCookie(name);
    if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}

function LoadJS(tag,url)
{
	var script;
	
	if(tag !=undefined && url != undefined)
	{
		var scriptTag = document.getElementById(tag);
		if(scriptTag == null)
		{
			script = document.createElement('script');
			script.src = url;
			script.type = 'text/javascript';
			script.id = tag;
			document.getElementsByTagName('head').item(0).appendChild(script);
		}
	}
}

function Jump(num,mode)
{
	var ColumnName;
	var pic;

	ColumnName = eval("Column" + num.toString());
	pic = eval("Img" + num.toString());
	
	if(old_num !=undefined)
	{
		if(old_num != num)
		{
			try
			{
				eval("Img" + old_num.toString()).rows[0].style.display = "block";
				eval("Img" + old_num.toString()).rows[1].style.display = "none";
				eval("Column" + old_num.toString()).style.display = "none";
			}
			catch(e){}
		}
	}
	
	if(pic.rows[0].style.display == "block" || mode == "block")
	{
		pic.rows[0].style.display = "none";
		pic.rows[1].style.display = "block";
		ColumnName.style.display = "block";
	}
	else
	{
		pic.rows[0].style.display = "block";
		pic.rows[1].style.display = "none";
		ColumnName.style.display = "none";
	}
	
	old_num = num;
}

function ShowTitle(i,j,arr,root)
{	
	var treeItem_Id;
	var treeItem_Text;
	var treeItem_Js;
	var return_string;
	if(j==0)
	{
		treeItem_Id = "treeItem" + i.toString();
	}
	else
	{
		treeItem_Id = "treeItem" + i.toString() + "-" + j.toString();
	}
	if(root == undefined)
	{
		treeItem_Text = arr[0];
	}
	else
	{
		treeItem_Text = root + " &gt; " + arr[0];
	}
	if(arr.length==5)
	{
		treeItem_Js = "LoadJS(\"" + arr[3] + "\",\"" + arr[4] + "\");";
	}
	if(arr[2].toLowerCase() == "fullscreen")
	{
		return_string = "<a id='" + treeItem_Id + "' href='javascript:void(0)' onClick='window.open(\"" + arr[1] + "\",\"\",\"toolbar=no,resizable=yes\")' class=main><strong>" + arr[0] + "</strong></a>\n";	
	}
	else if(arr[2].toLowerCase() == "mainframe")
	{
		return_string = "<a id='" + treeItem_Id + "' href='#' onClick='LoadPage(\"" + treeItem_Text + "\",\"" + arr[1] + "\"," + (i+1) + "," + j + ");" + treeItem_Js + "'><strong>" + arr[0] + "</strong></a>\n";
	}
	else if(arr[2].toLowerCase() == "iframe")
	{
		return_string = "<a id='" + treeItem_Id + "' href='#' onClick='LoadPage(\"" + treeItem_Text + "\",\"iframe.asp?url=" + arr[1] + "\"," + (i+1) + "," + j + ");" + treeItem_Js + "'><strong>" + arr[0] + "</strong></a>\n";
	}
	else
	{
		return_string = "<a id='" + treeItem_Id + "' href='" + arr[1] + "' target='" + arr[2] + "' class=main><strong>" + arr[0] + "</strong></a>\n";
	}

	if(j!=0)
	{
		return_string = return_string.replace("<strong>","").replace("</strong>","");
	}
	return return_string;
}

function onDownloadDone(e)
{
	MainContent.innerHTML = e;
	if(e.indexOf("连接超时")==0 || e.indexOf("该账户已在别处登录")==0)
	{
		window.setTimeout("location.replace('login.asp')", 2000);
	}
}

function LoadPage(text,url,i,j)
{
	if(i != undefined) setCookie("column_i",i);
	if(j != undefined) setCookie("column_j",j);
	if(url!="" && url!="#")
	{
		if(text != "") Postion.innerHTML = text;
		MainContent.innerHTML = "<table width='100%' style='height:expression(document.body.offsetHeight-250)' border='0' cellpadding='0' cellspacing='0'><tr><td height='30'><div align='center'>正在加载...</div></td></tr></table>";
		oDownload.startDownload(url,onDownloadDone);
	}
}

function onDownloadDoneFile(e)
{
	if(e.indexOf("连接超时")==0 || e.indexOf("该账户已在别处登录")==0)
	{
		if(e.indexOf("连接超时")==0)
		{
			window.alert("连接超时，准备重新登录...");	
		}
		else
		{
			window.alert("该账户已在别处登录，准备重新登录...");
		}
		location.replace("login.asp");
	}
}

function LoadFile(url)
{
	oDownload.startDownload(url,onDownloadDoneFile);
}

function ClickItem(i,j)
{
	try
	{
		var Item;
		if(j == undefined || j == 0)
		{
			Item = document.getElementById("treeItem" + (i-1).toString());
		}
		else
		{
			Item = document.getElementById("treeItem" + (i-1).toString() + "-" + j.toString());
			Jump(i-1,"block");
		}
		
		if(Item != null)
		{
			Item.click();
		}
	}
	catch(e)
	{
		ClickItem(1);
	}
}

function LoadTree(Src,ReloadFlag)
{	
	column_i = null;
	column_j = null;
	if(ReloadFlag)
	{
		delCookie('column_i');
		delCookie('column_j');
	}
	else
	{
		column_i = getCookie("column_i");
		column_j = getCookie("column_j");		
	}

	if(Src=="js/IndexMenu.asp")
	{
		if(column_i == null) column_i = getCookie("default_column_i");
		if(column_j == null) column_j = getCookie("default_column_j");
	}
	if(column_i == null) column_i = 1;
	if(column_j == null) column_j = 1;
	
	Menu.src = Src;	
}

function ShowTotalTimes()
{
	if(document.getElementById("time"))
	{
		if(document.getElementById("PageStatus").value=="1")
		{
			document.getElementById("PageStatus").value="0";
			document.getElementById("time").src = "js/time.asp?rnd=" + Math.random();
		}
	}
}

function ShowMenu(Obj,Data_Array)
{
	var i,j;
	var html = "<span id='oDownload' style='behavior:url(#default#download)'></span>\n";
	
	for(i=0;i<Data_Array.length;i++)
	{
		html += "<table width='71%' border='0' cellspacing='0' cellpadding='2'>\n";
		html += "	<tr>\n";
		html += "		<td width='17%' height='21'><div align='center'><img src='images/left_index_ico.gif' width='13' height='13'></div></td>\n";
		html += "		<td width='75%'>\n";
		if(Data_Array[i].length>1)
		{
			html += "			<a id='treeItem" + i.toString() + "' href='javascript:void(0)' class=main onClick='Jump(" + i.toString() + ")'><strong>" + Data_Array[i][0][0] + "</strong></a>";
		}
		else
		{
			html += ShowTitle(i,0,Data_Array[i][0]);
		}
		html += "</td>\n";
		html += "		<td width='8%'>\n";
		if(Data_Array[i].length>1)
		{
			html += "			<table width='100%' id='Img" + i.toString() + "' border='0' cellspacing='0' cellpadding='0' onMouseOver='style.cursor=\"hand\"' onMouserOut='style.cursor=\"default\"' onClick='Jump(" + i.toString() + ")'><tr style='display=block'><td><img src='" + down_arraw + "' width='12' height='12'></td></tr><tr style='display=none'><td><img src='" + right_arraw + "' width='12' height='12'></td></tr></table>";
		}
		else
		{
			html += "&nbsp;";
		}
		html += "		</td>\n";
		html += "	</tr>\n";
		
		if(Data_Array[i].length>1)
		{
			html += "	<tr id='Column" + i.toString() + "' style='display:none'>\n";
			html += "		<td>&nbsp;</td>\n";
			html += "		<td colspan='2'>\n";
			html += "			<table width='100%' border='0' cellspacing='0' cellpadding='2'>\n";
			for(j=1;j<Data_Array[i].length;j++)
			{
				html += "				<tr>\n";
				html += "					<td width='12%'><div align='center'><img src='images/left_index_arrow_over_ico.gif' width='10' height='10'></div></td>\n";
				html += "					<td width='88%'>";
				html += ShowTitle(i,j,Data_Array[i][j],Data_Array[i][0][0]);
				html += "</td>\n";
				html += "				</tr>\n";
			}
			html += "			</table>\n";
			html += "		</td>\n";
			html += "	</tr>\n";
		}
		html += "	<tr>\n";
		html += "		<td colspan='3'><img src='images/left_index_line.gif' width='137' height='2'></td>\n";
		html += "	</tr>\n";
		html += "</table>\n";
	}
	
	Obj.innerHTML = html;
	ClickItem(column_i,column_j);
	
	//window.setInterval("LoadFile('check.asp')",300000);
	
	ShowTotalTimes();
	window.setInterval("ShowTotalTimes()",60000);	
}