
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">











 

   

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to MSTC Eauction Site</title>
<link href="css/mystyle3.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body { 
	background-color: #0091D7;
}
#apDiv1 {
	position:absolute;
	left:401px;
	top:219px;
	width:227px;
	height:24px;
	z-index:1;
}
#apDiv2 {
	position:absolute;
	left:402px;
	top:258px;
	width:236px;
	height:116px;
	z-index:2;
	overflow: auto;
}
.style4 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	color: #003366;
	font-style: normal;
}
.style5 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 14px;
	padding: 5px;
	color: #FFFFFF;
}
.style6 {color: #FF0000}
.style8 {
	color: #FF0000;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style>

<SCRIPT language=javascript>

String.prototype.equalsIgnoreCase=myEqualsIgnoreCase;
String.prototype.equals=myEquals;

function myEquals(arg){
        return (this.toString()==arg.toString());
}

function myEqualsIgnoreCase(arg)
{               
        return (new String(this.toLowerCase())==(new
String(arg)).toLowerCase());
}

</script>


<script type="text/javascript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->


function resetFrm(){

	document.chpwd.reset();
	return true;
}

function validate(){
	
// alert("Chk...");
	if ((document.chpwd.user.value).length < 1)
	{ 
		alert("Please enter values in the UserName field.");
		document.chpwd.user.focus();
		return false;
	}
	else if((document.chpwd.email.value).length < 1	)
	{
		alert("Please enter values in the Email field.");
		document.chpwd.email.focus();
		return false;
	}
	else
	{
		document.chpwd.submit();
		return true;
	}
}

</script>
</head>
<body >

<div class="main_wrapper" >

  <html>
 <head>
  <title> </title>
 
<script language="javascript" >
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
</script>
 </head>

 <body onload="MM_preloadImages('images/about_us_a.jpg','images/contact_us_a.jpg','images/e_pay_guide_a.jpg','images/help_a.jpg','images/website_lnk_a.jpg')">

 <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td valign="top"><img src="images/banner.jpg" width="735" height="115" /></td>
    </tr>
    <tr>
      <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top"><img src="images/left_bar.jpg" width="137" height="32" /></td>
          <td><table border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td valign="top"><a href="http://www.mstcecommerce.com/auctionhome/mstc/about_us.htm" target="_top" onclick="MM_nbGroup('down','group1','home','',1)" onmouseover="MM_nbGroup('over','home','images/about_us_a.jpg','',1)" onmouseout="MM_nbGroup('out')"><img src="images/about_us.jpg" alt="" name="home" width="93" height="32" border="0" id="home" onload="" /></a></td>
              <td valign="top"><a href="http://www.mstcindia.co.in/MSTC_Static_Pages/frontpage/Contact_us_new.htm" target="_top" onclick="MM_nbGroup('down','group1','contactUs','',1)" onmouseover="MM_nbGroup('over','contactUs','images/contact_us_a.jpg','',1)" onmouseout="MM_nbGroup('out')"><img src="images/contact_us.jpg" alt="" name="contactUs" width="80" height="32" border="0" id="contactUs" onload="" /></a></td>
              <td valign="top"><a href="http://www.mstcecommerce.com/auctionhome/mstc/BuyerManualforePayment.pdf" target="_top" onclick="MM_nbGroup('down','group1','ePayGuide','',1)" onmouseover="MM_nbGroup('over','ePayGuide','images/e_pay_guide_a.jpg','',1)" onmouseout="MM_nbGroup('out')"><img src="images/e_pay_guide.jpg" alt="" name="ePayGuide" width="83" height="32" border="0" id="ePayGuide" onload="" /></a></td>
              <td valign="top"><a href="http://www.mstcecommerce.com/auctionhome/mstc/help.htm" target="_top" onclick="MM_nbGroup('down','group1','help','',1)" onmouseover="MM_nbGroup('over','help','images/help_a.jpg','',1)" onmouseout="MM_nbGroup('out')"><img src="images/help.jpg" alt="" name="help" width="49" height="32" border="0" id="help" onload="" /></a></td>
              <td valign="top"><a href="http://www.mstcindia.co.in" target="_top" onclick="MM_nbGroup('down','group1','mstcweb','',1)" onmouseover="MM_nbGroup('over','mstcweb','images/website_lnk_a.jpg','',1)" onmouseout="MM_nbGroup('out')"><img src="images/website_lnk.jpg" alt="" name="mstcweb" width="156" height="32" border="0" id="mstcweb" onload="" /></a></td>
            </tr>
          </table></td>
          <td valign="top"><img src="images/right_bar.jpg" width="137" height="32" /></td>
          </tr>
      </table></td>
    </tr>
    
  </table>
  
 </body>
</html>

 
   
   <div class="middleCol">
   <div class="blnkspctop"></div>
   <div class="middlebox2">

   <form METHOD="POST" ACTION ="forgot_hpass_mlcl.jsp" name="chpwd">
	<INPUT TYPE="hidden" name ="editFlag" value="1">
	<strong><i><font face="Verdana" size="2">
</font></i></strong>

   <table width="100%" border="0" cellpadding="3" cellspacing="0">
   <tr>
    <td colspan="2" bgcolor="#006699"><div align="center" class="style5">Forgot Password</div></td>
    </tr>
  <tr>
    <td colspan="2"><div align="center"><span class="style4">Type in your User-ID and Email and your password will   be mailed to you shortly.</span></div></td>
    </tr>
  <tr>
    <td width="50%">&nbsp;</td>
    <td width="50%">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="right" class="middle_col_text1">Type : </div></td>
    <td>
		<div class="form_bullet_designpwd">
          <label>
            <input type="radio" name="type" value="buyer" id="RadioGroup1_0" checked/>
            <font size="2" color="#FF3300">Bidder</font></label>
          <label>
            <input type="radio" name="type" value="seller" id="RadioGroup1_1" />
            Seller</label>
          <label>
            <input type="radio" name="type" value="admin" id="RadioGroup1_2" />
            <font size="2" color="#339933">TCM</font></label>
		  <label style="display:none">
            <input type="radio" name="type" value="Utilities" id="RadioGroup1_2" />
            <font size="2" color="#339933">Utilities</font></label>
        </div>    
	</td>
  </tr>
  <tr>
    <td><div align="right" class="middle_col_text1">UserName :</div></td>
    <td>
    <input type="text" name="user" id="user" size="30" maxlength="25"/>    </td>
  </tr>
  <tr>
    <td><div align="right" class="middle_col_text1">Email :</div></td>
    <td>
     <input type="text" name="email" id="email" size="30" />    </td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"><strong class="middle_col_text1">Note </strong><span class="style6">*</span> <span class="style8">Must for Buyer <font color="#6633FF">optional for   Seller</font></span></div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td><table width="52%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="64%"><a href="#"><img src="images/submit_btn.jpg" width="52" height="20" border="0" onClick="return validate();"/></a></td>
        <td width="36%"><a href="#"><img src="images/reset_btn.jpg" width="52" height="20" border="0" onClick="return resetFrm();"/></a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>

   </div>
   </div>
   <div class="blnkspctop"></div>
   <div class="blnkspctop"></div>
  <div class="foot_below">
  <div class="foot_txt">copyright@MSTC Limited</div>
  
  </div>
  
</div>
</div>
</body>
</html>
