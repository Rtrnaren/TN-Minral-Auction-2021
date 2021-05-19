function ajaxFunction()
	{  
	var xmlHttp;
	try
	{    // Firefox, Opera 8.0+, Safari    
	xmlHttp=new XMLHttpRequest(); 
	}
	catch (e)
	{    // Internet Explorer    
	try
	{     
	xmlHttp=new ActiveXObject("Msxml2.XMLHTTP"); 
	}
	catch (e)
	{  
	try
	{        
	xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	catch (e)
	{        

	alert("Your browser does not support AJAX!");        
	return false;        
	}      
	}    
	}  
	}


function CreateAjaxObject(){
var ajaxObject=false;
var is_ie5 = (navigator.appVersion.indexOf("MSIE 5.5")!=-1) ? 1 : 0;
var strObjName = (is_ie5) ? 'Microsoft.XMLHTTP' : 'Msxml2.XMLHTTP'; 
try{
ajaxObject = new ActiveXObject(strObjName);
} catch (e){
ajaxObject = false;
}
if (!ajaxObject && typeof XMLHttpRequest!='undefined') {
try {
ajaxObject = new XMLHttpRequest();
} catch (e) {
ajaxObject=false;
}
}
if (!ajaxObject && window.createRequest) {
try{
ajaxObject = window.createRequest();
}catch (e){
ajaxObject=false;
}
}
return ajaxObject
}


function CreateRequestReturnResponse(url,elementid){
this.ajaxObject = CreateAjaxObject();
ajaxObject.onreadystatechange=function()
{
	var returnval="";
// We are going to write some code here
if(ajaxObject.readyState==0)
    {
    // Get the data from the server's response
	//alert("Ready State is 0 The request is not initialized");
    }
if(ajaxObject.readyState==1)
    {
    // Get the data from the server's response
	//alert("Ready State is 1 The request has been set up");
    }
if(ajaxObject.readyState==2)
    {
    // Get the data from the server's response
	//alert("Ready State is 2 The request has been sent");
    }
if(ajaxObject.readyState==3)
    {
    // Get the data from the server's response
	//alert("Ready State is 3 The request is in process");
    }
if(ajaxObject.readyState==4)
    {
    // Get the data from the server's response
	//alert("Ready State is 4 The request is complete");
	//alert(ajaxObject.responseText);
	//document.myForm.time.value=ajaxObject.responseText;
	//alert("OK "+ajaxObject.responseText);
	returnval=ajaxObject.responseText;
	document.getElementById(elementid).value=returnval;
	document.getElementById('figureout').innerHTML="Total Price For Door Delivery Rs. &nbsp;:&nbsp;&nbsp;"+"<U>"+returnval+"</U>";
	//alert("OK "+document.getElementById('figureout').innerHTML);
	 return returnval;
    }

}
}


function sendrequest(url,elementid){
CreateRequestReturnResponse(url,elementid);
}

/*
function sendrequest_everysecond(){
setTimeout("sendrequest_everysecond()",1000); 
//setTimeout("alert('5 seconds!')",1000)
sendrequest();
}
sendrequest_everysecond();

*/