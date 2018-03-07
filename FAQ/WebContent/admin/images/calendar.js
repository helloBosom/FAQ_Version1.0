function SelectDate(DivID)
{
	var fullPath="js/calendar/PopDate.Htm";
	var strDate;	//Chinese date formate
	var intDate;	//Integer date formate
	var objEffectDate=DivID;
	intDate=showModalDialog(fullPath,window,"dialogWidth=335px;dialogHeight=303px;center=yes;border=this;help=no");
	if (intDate!=null)
	{
		objEffectDate.value=intDate.substr(0,4)+"-"+intDate.substr(5,2)+"-"+intDate.substr(8,2);
		if (objEffectDate.value!="undefined")
		{
			strDate=intDate.substr(0,4)+"-"+intDate.substr(5,2)+"-"+intDate.substr(8,2);
			objEffectDate.value=strDate;
		}
		else
		{
			objEffectDate.value="";
		}
	}
	event.returnValue =false;
}