
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">









 





<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
<meta http-equiv="X-UA-Compatible" content="IE=9,10">
<script src="js/jquery-1.11.0.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Non Coal Block Bidder Registration</title>
<link href="../css/scrap_layout.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="Vector.js"></script>
<SCRIPT LANGUAGE="JavaScript" src="ajaxhelper.js"></script>






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
function replaceURLWithHTMLLinks(text) {
    var exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/i;
    return text.replace(exp,"<a href='$1'>$1</a>"); 
}
function checkForSpecialChars(formobject){
	var iChars = "!@#$%^&*()+=-[]\\\';,./{}|\":<>?";
	var iChars2 = "!#$%^&*()+=-[]\\\';,/{}|\":<>?";
	var iChars3 = "!@#$%^&*+=-[]\\\';,/{}|\":<>?";
	var iChars4 = "!@#$%^&*()+=-[]\\\';,/{}|\":<>?";
	var iChars6 = "%^&*()+=-[]\\\';,/{}|\":<>?";
	var checkchars="";
	noOfElements=formobject.elements.length
	for(i=0;i<noOfElements;i++){
		if(formobject.elements[i].type!='select-one' && formobject.elements[i].type!='select-multiple' && formobject.elements[i].type!='radio' && formobject.elements[i].type!='checkbox' && formobject.elements[i].type!='button' && formobject.elements[i].type!='hidden' && formobject.elements[i].type!='file'){
	
		if(formobject.elements[i].value.length==0 && (!formobject.elements[i].name.equalsIgnoreCase('comment') && !formobject.elements[i].name.equalsIgnoreCase('capcha')&& !formobject.elements[i].name.equalsIgnoreCase('fax')) ){
			alert ("Field left blank this is not allowed");
			formobject.elements[i].style.background="red";
			formobject.elements[i].focus();
			var elname1=formobject.elements[i].id;
			formobject.elements[i].attachEvent('onkeydown',function(){document.getElementById(elname1).style.background="#FFFFFF"});
			formobject.elements[i].attachEvent('onchange',function(){document.getElementById(elname1).style.background="#FFFFFF"});
			formobject.elements[i].attachEvent('onclick',function(){document.getElementById(elname1).style.background="#FFFFFF"});

			return false;
		}

	for (var j = 0; j < formobject.elements[i].value.length; j++) {
		checkchars=iChars;
		if(formobject.elements[i].name.equalsIgnoreCase('street')){
			checkchars=iChars3;
		}
		if(formobject.elements[i].name.equalsIgnoreCase('password') || formobject.elements[i].name.equalsIgnoreCase('pass_confirm')){
			checkchars=iChars6;
		}
		if(formobject.elements[i].name.equalsIgnoreCase('e_mail')){
			checkchars=iChars2;
		}
		if(formobject.elements[i].name.equalsIgnoreCase('contact')){
			checkchars=iChars4;
		}
		if (checkchars.indexOf(formobject.elements[i].value.charAt(j))!= -1){ 
			alert ("Your input has special characters. \nThese are not allowed.\n Please remove them and try again.");
			formobject.elements[i].style.background="red";
			formobject.elements[i].focus();
			var elname=formobject.elements[i].id;
			if(elname==""){
				formobject.elements[i].id=formobject.elements[i].name;
				elname=formobject.elements[i].id;
			}
			formobject.elements[i].attachEvent('onclick',function(){document.getElementById(elname).style.background="#FFFFFF"});
			formobject.elements[i].attachEvent('onchange',function(){document.getElementById(elname1).style.background="#FFFFFF"});
			formobject.elements[i].attachEvent('onkeydown',function(){document.getElementById(elname1).style.background="#FFFFFF"});
			return false;
		}
	}
   }
 }
return true;
}
function removeCrossSiteScript(formobject){
	if(!checkForSpecialChars(formobject)){
		return false;	
}
var re = /(<([^>]+)>)/gi;
noOfElements=formobject.elements.length
for(i=0;i<noOfElements;i++){
	if(formobject.elements[i].type!='select-one' && formobject.elements[i].type!='select-multiple' && formobject.elements[i].type!='radio' && formobject.elements[i].type!='checkbox' && formobject.elements[i].type!='button'){
		content=formobject.elements[i].value
		content=replaceURLWithHTMLLinks(content);
		formobject.elements[i].value=content.replace(re, "");
	}else{
		continue;
	}
  }
return true;
}
</script>
<script Language="JavaScript">
function usercheck()
{
	var userId=document.FrontPage_Form1.user_id.value
	var len=userId.toString();
	if(len.length >0){	
		window.open('check_pan_user.jsp?user_id_passed='+userId+'','profile','width=300,height=150,top=80,scrollbars=+1+,scrollbars=1,left=120');
	}else{
		alert("please provide a user id first !");
		return;
	}
}

function pan_checker()
{
	var pan=document.FrontPage_Form1.pan_no.value;
	var len=pan.toString();
	if(len.length >0){	
		window.open('check_pan_user.jsp?pan_no_passed='+pan+'','profile','width=300,height=150,top=80,scrollbars=+1+,scrollbars=1,left=120');
	}else{
		alert("please provide a PAN No. first !");
		return;
	}
}

function nochar()
{
	code = event.keyCode;
	if(code < 48 || code > 57)
	{
		if(code != 40 && code != 41 && code != 43 && code != 44 && code != 45)
		{
			event.keyCode = 0;
			alert("Please enter 0-9, (, ), +");
		}
	}
}

function setfocus1(){
	document.FrontPage_Form1.company.focus();
}
function testqt(src){
	var regqt = /["?#\(\)%\{\}\[\]]+/;
	return regqt.test(src);
}

function testqtcomp(src){
	var regqt = /["?#%\{\}]+/;
	return regqt.test(src);
}

function testqt1(src){
	var regqt = /["'?#\(\)%\{\}\[\]]+/;
	return regqt.test(src);
}

function chkpin(f){
	var regpin = /[\D]+/;
	return regpin.test(f);
}

function chkspc(f){
	var regspc = /[\w]+/;
	return regspc.test(f);
}

function chkquote(f ){
	for (i = 0; i < f.elements.length; i++){
		if(f.elements[i].type == 'text'){
			if(f.elements[i].name=='company')
			{
				if(testqtcomp(f.elements[i].value)){
					f.elements[i].focus();
					return false
				}
				continue;
			}
			if(testqt(f.elements[i].value)){
				f.elements[i].focus();
				return false;
			}
		}
	}
	return true;
}

function test(src){
	var regex = /^([\w])[\w\.-_]*[@][\w]([\w\.-_])*[\w]([\.]\w{2,3})$/;
	return regex.test(src);
}

function echeck(str,elementid) {
	var at="@"
	var dot="."
	var lat=str.indexOf(at)
	var lstr=str.length
	var ldot=str.indexOf(dot)
	if (str.indexOf(at)==-1){
		alert("Invalid E-mail ID");
		document.getElementById(elementid).style.background="#FFFF00";
		document.getElementById(elementid).focus();
		return false;
	}

	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		alert("Invalid E-mail ID")
		return false
	}

	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		alert("Invalid E-mail ID")
		return false
	}

	if (str.indexOf(at,(lat+1))!=-1){
		alert("Invalid E-mail ID")
		return false
	}

	if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		alert("Invalid E-mail ID")
		return false
	}

	if (str.indexOf(dot,(lat+2))==-1){
		alert("Invalid E-mail ID")
		return false
	}

	if (str.indexOf(" ")!=-1){
		alert("Invalid E-mail ID")
		return false
	}
	return true					
}
function chkphone(chkstr, chkok){ 
	var allok = true;
	for (i = 0;  i < chkstr.length;  i++){
		ch = chkstr.charAt(i);
		for (j = 0;  j < chkok.length;  j++)
		if (ch == chkok.charAt(j))
			break;
		if (j == chkok.length){
			allok = false;
			break;
		}
	}
	return allok;
}

function testAlphaNumOnly(formFIeldValue)
{
	var checkOK = "0123456789";
	var checkStr = formFIeldValue;
	var allValid = false;
	for (i = 0;  i < checkStr.length;  i++)
	{
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++){
			if (ch == checkOK.charAt(j)){
				allValid = true;
				break;
			}
		}
	}
	return allValid;
}
function testAlphaSplCharOnly(formFIeldValue)
{
	var checkOK = "$@_!#";
	var checkStr = formFIeldValue;
	var allValid = false;
	for (i = 0;  i < checkStr.length;  i++)
	{
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++){
			if (ch == checkOK.charAt(j)){
				allValid = true;
				break;
			}
		}
	}
	return allValid;
}
function validate(theForm)
{	
	var newPass=theForm.password.value;
	if (theForm.user_id.value==newPass)
	{
		alert("Your Password Contains UserId");
		theForm.password.focus();
		return false;
	}
	if (!testAlphaNumOnly(newPass) )
	{
		error = "The password must Contain a numeric digit .\n";
		alert(error);
		theForm.password.select();
		theForm.password.focus();
		return false;
	}
	if (!testAlphaSplCharOnly(newPass) )
	{
		error = "The password must Contain..\n at least one of the following special characters $@_!#";
		alert(error);
		theForm.password.select();
		theForm.password.focus();
		return false;
	}
	if(!removeCrossSiteScript(theForm)){
		return false;
	}
	if(!trackstate()){
		return false;	
	}
	var chkok = "0123456789-,";
	if(!chkquote(theForm)){
		alert("Please enter a valid character in the field");
		return false;
	}
	if (theForm.company.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Company field.");
		theForm.company.focus();
		return (false);
	}

	if (theForm.company.value.length > 60)
	{
		alert("Please enter at most 60 characters in the Company field.");
		theForm.company.focus();
		return (false);
	}

	if (theForm.contact.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Contact Person field.");
		theForm.contact.focus();
		return (false);
	}

	if (theForm.contact.value.length > 40)
	{
		alert("Please enter at most 40 characters in the Contact Person field.");
		theForm.contact.focus();
		return (false);
	}

	if (theForm.street.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Street field.");
		theForm.street.focus();
		return (false);
	}

	if (theForm.street.value.length > 60)
	{
		alert("Please enter at most 60 characters in the Postal Address field.");
		theForm.street.focus();
		return (false);
	}

	if (theForm.city.value.length < 1)
	{
		alert("Please enter at least 1 characters in the City field.");
		theForm.city.focus();
		return (false);
	}

	if (theForm.city.value.length > 40)
	{
		alert("Please enter at most 40 characters in the City field.");
		theForm.city.focus();
		return (false);
	}

	if (theForm.pin.value.length != 6)
	{
		alert("Please enter 6 characters in the Pin field.");
		theForm.pin.focus();
		return (false);
	}

	if (theForm.country.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Country field.");
		theForm.country.focus();
		return (false);
	}

	if (theForm.country.value.length > 25)
	{
		alert("Please enter at most 25 characters in the Country field.");
		theForm.country.focus();
		return (false);
	}
 	var emailID=theForm.e_mail.value
	if ((emailID==null)||(emailID=="")){
		alert("Please Enter your Email ID")
		theForm.e_mail.focus();
		return (false);
	}
	
	if (!echeck(emailID)){
		emailID="";
		theForm.e_mail.focus();
		theForm.e_mail.select();
		return (false);
	}
	if(!chkphone(theForm.phone.value, chkok) )
	{
		alert("Please enter a valid Phone no");
		theForm.phone.focus();
		return (false);
	}

	if (theForm.phone.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Phone field.");
		theForm.phone.focus();
		return (false);
	}
	/*if(!chkphone(theForm.fax.value, chkok) )
	{
		alert("Please enter a valid Fax no");
		theForm.fax.focus();
		return (false);
	}*/
	if (theForm.phone.value.length > 50)
	{
		alert("Please enter at most 50 characters in the Phone field.");
		theForm.phone.focus();
		return (false);
	}
	if (theForm.user_id.value.length < 4)
	{
		alert("Please enter at least 4 characters in the Preferred user id field.");
		theForm.user_id.focus();
		return (false);
	}
	if (theForm.user_id.value.length > 25)
	{
		alert("Please enter at most 25 characters in the Preferred user id field.");
		theForm.user_id.focus();
		return (false);
	}
	if (theForm.password.value.length < 8)
	{
		alert("Please enter at least 8 characters in the Password field.");
		theForm.password.focus();
		return (false);
	}
	if (theForm.password.value.length > 15)
	{
		alert("Please enter at most 15 characters in the Password field.");
		theForm.password.focus();
		return (false);
	}
	if (theForm.pass_confirm.value.length < 8)
	{
		alert("Please enter at least 8 characters in the Confirm Password field.");
		theForm.pass_confirm.focus();
		return (false);
	}

	if (theForm.pass_confirm.value.length > 15)
	{
		alert("Please enter at most 15 characters in the Confirm Password field.");
		theForm.pass_confirm.focus();
		return (false);
	}

	if (theForm.password.value != theForm.pass_confirm.value)
	{
		alert("Confirm password must be same as that of the password field");
		theForm.pass_confirm.focus();
		return (false);
	}
	var reggst = /^([0-9]){2}([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}([a-zA-Z0-9]){1}([a-zA-Z0-9]){1}([a-zA-Z0-9]){1}?$/;
	var gstin=theForm.st_no.value;
	if(gstin=='' || gstin.length<15){
			alert('GST Identification Number is not valid. It should be 15 Character');
			theForm.st_no.focus();
			return (false);
	}
	if(!reggst.test(gstin)){
			alert('GST Identification Number is not valid. It should be in this "11AAAAA1111Z1A1" format');
			theForm.st_no.focus();
			return (false);
	}
	if (theForm.banker.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Banker's Name field.");
		theForm.banker.focus();
		return (false);
	}
	if (theForm.banker.value.length > 40)
	{
		alert("Please enter at most 40 characters in the Banker's Name field.");
		theForm.banker.focus();
		return (false);
	}

	if (theForm.account_no.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Account No. field.");
		theForm.account_no.focus();
		return (false);
	}

	if (theForm.account_no.value.length > 25)
	{
		alert("Please enter at most 25 characters in the Account No. field.");
		theForm.account_no.focus();
		return (false);
	}

	if (theForm.branch.value.length < 1)
	{
		alert("Please enter at least 1 characters in the Branch field.");
		theForm.branch.focus();
		return (false);
	}

	if (theForm.branch.value.length > 35)
	{
		alert("Please enter at most 35 characters in the Branch field.");
		theForm.branch.focus();
		return (false);
	}
	
	if (theForm.comment.value.length > 250)
	{
		alert("Please enter at most 250 characters in the Comment field.");
		theForm.comment.focus();
		return (false);
	}

	if(!checkUserId('user_id')){
		return false;
	}
	if( document.getElementById('gtc').checked==false){
	alert("Please Agree General Terms And Condition Before proceding.");
	return false;
	}
	if( document.getElementById('bstc').checked==false){
	alert("Please Agree Bidder Specific Terms And Condition Before proceding.");
	return false;
	}
	
	if(document.getElementById('capcha').value==''){
		alert("Pls fillup the verification code ");
		document.getElementById('capcha').focus();
		return false;
	}
	
	var indicator=youchoose();
	if(indicator==true){
		return true;
	}else if(indicator==false){
		return false;
	}

	return true;
}
function ILLEGALtest(formFIeldValue){
	var checkOK = "><:-|&'~`*,.?\()%\{}[]]+/;";
	var checkStr = formFIeldValue;
	var allValid = false;
	for (i = 0;  i < checkStr.length;  i++)
	{
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++){
			if (ch == checkOK.charAt(j)){
				allValid = true;
				break;
			}
		}
	}
	return allValid;
}

function checkPassword (strng,name) {
	strng=strng.toString();
	var error = "";
	if (strng == document.getElementById('user_id').value) {
		error = "Your Password Contains UserId\n";
		alert(error);
		document.getElementById('password').select();
		document.getElementById('password').focus();
		return;
	}
	if (strng == "") {
		error = "You didn't enter a password.\n";
		alert(error);
		document.getElementById('password').select();
		document.getElementById('password').focus();
		return;
	}
	var illegalChars = /["$!><:-_|&'~`*,.@?#\(\)%\{\}\[\]]+/;
	if ((strng.length < 8) || (strng.length > 15)) {
		error = "The password is of wrong length.\n should be betwwen 8 to 15 characters long";
		alert(error);
		document.getElementById('password').select();
		document.getElementById('password').focus();
		return;
	}else{
	if (ILLEGALtest(strng)) {
		error = "The Password contains illegal characters.\n";
		alert(error);
		document.getElementById('password').select();
		document.getElementById('password').focus();
		return;
	}
	if ( !(testAlphaNumOnly(strng)) ) {
		error = "The password must contain one or more numeral.\n";
		alert(error);
		document.getElementById('password').select();
		document.getElementById('password').focus();
		return;
	}
	}
}

function passconfirm(){
	var val1=document.getElementById('password').value;
	var val2=document.getElementById('pass_confirm').value;
	if ((val2.length >= 8) || (val2.length <= 15)) {
		error = "Confirm Password doesnot match with Password";
		if(val1!=val2){
			alert(error);
			document.getElementById('pass_confirm').focus();
			document.getElementById('pass_confirm').select();
			return;
		}
	}
}

function ltrim(str) { 
	for(var k = 0; k < str.length && isWhitespace(str.charAt(k)); k++);
	return str.substring(k, str.length);
}
function rtrim(str) {
	for(var j=str.length-1; j>=0 && isWhitespace(str.charAt(j)) ; j--) ;
	return str.substring(0,j+1);
}
function trim(str) {
	return ltrim(rtrim(str));
}
function isWhitespace(charToCheck) {
	var whitespaceChars = " \t\n\r\f";
	return (whitespaceChars.indexOf(charToCheck) != -1);
}

function call_pan(){
	flag=true;
	val=document.getElementById('pan_no').value;
	val=val.toString();
	val=trim(val);
	val=val.toUpperCase();
	var regqt = /["$!><:-_|&'~`*,.@?#\(\)%\{\}\[\]]+/;
	var allowedChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	var allowedNos = '0123456789';

	if(val.length<10 || val.length>11){
		alert("Pan No. Should be minimum 10 chars maximum 11 chars");
		document.getElementById('pan_no').focus();
		document.getElementById('pan_no').select();
		flag=false;
		return;
	}

	if(val=='nullnull'){
		alert("Enter a valid PAN number");
		document.getElementById('pan_no').focus();
		document.getElementById('pan_no').select();
		flag=false;
		return;
	}
	if(val=='nullnullnu'){
		alert("Enter a valid PAN number");
		document.getElementById('pan_no').focus();
		document.getElementById('pan_no').select();
		flag=false;
		return;
	}

	for(k=0;k<val.length;k++){
	val2=val.charAt(k);
		if(k<5 || k>8){
			if(allowedChars.indexOf(val2)==-1){
				alert("INVALID PAN NO.. ");
				document.getElementById('pan_no').focus();
				document.getElementById('pan_no').select(); 
				return;
			}
		}else{
			if(allowedNos.indexOf(val2)==-1){
				alert("INVALID PAN NO. ");
				document.getElementById('pan_no').focus();
				document.getElementById('pan_no').select(); 
				return;
			}
		}
	}
	if(val==' ' || val==''){
		alert("Pls submit your PAN number");
		document.getElementById('pan_no').focus();
		document.getElementById('pan_no').select();
		flag=false;
		return;
	}
	for(i=0;i<val.length;i++){
		if(val.charAt(i)==' '){
			alert("Pls donot use space for your PAN number");
			document.getElementById('pan_no').focus();
			document.getElementById('pan_no').select();
			flag=false;
			break;
			return;
		}
		var c = val.charAt(i);
		if(c=='!' || c=='@' || c=='#' || c=='%' || c=='^' || c=='&' || c=='*' || c=='(' || c==')' || c=='+' || c=='=' || c=='|' || c=='/' || c=='?' || c=='>' || c=='<' || c==',' || c=='\\')
		{
			alert("No special characters are allowed for PAN number");
			document.getElementById('pan_no').focus();
			document.getElementById('pan_no').select();
			flag=false;
			break;
			return;
		}
		}
		if(flag){
		}
	return flag
}
	

function FP_preloadImgs() {//v1.0
	 var d=document,a=arguments; if(!d.FP_imgs) d.FP_imgs=new Array();
	 for(var i=0; i<a.length; i++) { d.FP_imgs[i]=new Image; d.FP_imgs[i].src=a[i]; }
}

function FP_swapImg() {//v1.0
	 var doc=document,args=arguments,elm,n; doc.$imgSwaps=new Array(); for(n=2; n<args.length;
	 n+=2) { elm=FP_getObjectByID(args[n]); if(elm) { doc.$imgSwaps[doc.$imgSwaps.length]=elm;
	 elm.$src=elm.src; elm.src=args[n+1]; } }
}

function FP_getObjectByID(id,o) {//v1.0
	 var c,el,els,f,m,n; if(!o)o=document; if(o.getElementById) el=o.getElementById(id);
	 else if(o.layers) c=o.layers; else if(o.all) el=o.all[id]; if(el) return el;
	 if(o.id==id || o.name==id) return o; if(o.childNodes) c=o.childNodes; if(c)
	 for(n=0; n<c.length; n++) { el=FP_getObjectByID(id,c[n]); if(el) return el; }
	 f=o.forms; if(f) for(n=0; n<f.length; n++) { els=f[n].elements;
	 for(m=0; m<els.length; m++){ el=FP_getObjectByID(id,els[n]); if(el) return el; } }
	 return null;
}


function passvalid(frm)
{
	alert ("entered :"+theForm.password.value.length);
	if ((theForm.password.value.length==0) && (theForm.pass_confirm.value.length==0))
	{
		alert("Confirm password cannot be left blank");
		theForm.password.focus();
		return (false);
	}
}
</script>
</head>

<body onload=" setfocus1()" >
<form method="post" action="buyer_reg_ncm.jsp" name="FrontPage_Form1" enctype="multipart/form-data">

<input type="hidden" name="verifyflag" value="1">
<div class="main_wrapper" >
<div class="banner"><img src="../images/scrap_layout/banner.jpg" /></div>
<div class="menubg">
<div class="menubar">
  <div id="menu">
  <ul>
	<li><a href="../mlcl/index.jsp">Home</a>|</li>
	<li><a href="../Layouts/about_us.html">About Us</a>|</li>
	<li><a href="http://www.mstcindia.co.in/" >www.mstcindia.co.in</a>|</li>
	<li><a href="../Layouts/help.html">Help</a>|</li>
    <li><a href="http://www.mstcindia.co.in/MSTC_Static_Pages/frontpage/Contact_us_new.htm" target=_blank>Contact Us</a></li>
	</ul>
  </div>
  </div>
  </div>
  
  <div class="middlebox">
	<div class="blnkspc"></div>
	<div class="middleboxtnc_">
        <table width="80%" border="0" cellspacing="0" cellpadding="0" class="gridtable" align="center">
        	<tr>
            <td colspan="2"><div align="center" class="gtctxt"><strong>Bidder's Registration Form</strong></div>
            <div class="startxt">(All field's marked with * are mandatory)</div></td>
            </tr>
              <tr>
                <td>Bidder *: </td>
                <td>
                <select name='R1' id='R1' size="1">
					<option value='J' selected>Non Coal Mines</option>
                </select>
               </td>
              </tr>
              <tr>
                <td>Company *: </td>
                <td><input type="text" size="40" name="company" id="company" onkeyup="checkinput('company')"maxlength="60" value=""/>
				</td>
              </tr>
			  <script>
	function checkinput(elementid){
	
	}
	</script>
              <tr>
                <td>Contact Person*: </td>
                <td><input type="text" ize="40" name="contact" id="contact" onkeyup="checkinput('contact')" maxlength="40" value="" /></td>
              </tr>
          <tr>
            <td>Registered Address*: </td>
            <td><input type="text" size="40" name="street" id="street" onkeyup="checkinput('street')" maxlength="60" value="" /></td>
          </tr>
          <tr>
            <td>City*</td>
            <td><input type="text" size="40" name="city" id="city" onkeyup="checkinput('city')" maxlength="40" value="" /></td>
          </tr>
          <tr>
            <td>Pin*:</td>
            <td><input type="text" size="10" name="pin" id="pin" onkeyup="check_pin_input('pin')" maxlength="6" value=""/></td>
          </tr>
		  <script>
			function check_pin_input(elementid){
			var noalpha = /^[a-zA-Z]*$/;
				if (noalpha.test(document.getElementById(elementid).value)) {
					alert("Please enter digits in the \"Pin\" field.");
					document.getElementById(elementid).style.background="#FFFF00";
					document.getElementById(elementid).focus();
					return false;
				}
			}
		  </script>
          <tr>
            <td>State/Union Ter.*:</td>
            <td>
            <select size="1" name="stateindia" id='stateindia'>
             <option value='0' selected>======Select State===========</option>
				
				<option value='Andaman and Nicobar Islands'>Andaman and Nicobar Islands</option>
				
				<option value='Andhra Pradesh'>Andhra Pradesh</option>
				
				<option value='Arunachal Pradesh'>Arunachal Pradesh</option>
				
				<option value='Assam'>Assam</option>
				
				<option value='Bihar'>Bihar</option>
				
				<option value='Chandigarh'>Chandigarh</option>
				
				<option value='Chhattisgarh'>Chhattisgarh</option>
				
				<option value='Dadra and Nagar Haveli and Daman and Diu'>Dadra and Nagar Haveli and Daman and Diu</option>
				
				<option value='Delhi'>Delhi</option>
				
				<option value='Goa'>Goa</option>
				
				<option value='Gujarat'>Gujarat</option>
				
				<option value='Haryana'>Haryana</option>
				
				<option value='Himachal Pradesh'>Himachal Pradesh</option>
				
				<option value='Jammu and Kashmir'>Jammu and Kashmir</option>
				
				<option value='Jharkhand'>Jharkhand</option>
				
				<option value='Karnataka'>Karnataka</option>
				
				<option value='Kerala'>Kerala</option>
				
				<option value='Ladakh'>Ladakh</option>
				
				<option value='Lakshadeep'>Lakshadeep</option>
				
				<option value='Madhya Pradesh'>Madhya Pradesh</option>
				
				<option value='Maharashtra'>Maharashtra</option>
				
				<option value='Manipur'>Manipur</option>
				
				<option value='Meghalaya'>Meghalaya</option>
				
				<option value='Mizoram'>Mizoram</option>
				
				<option value='Nagaland'>Nagaland</option>
				
				<option value='Odisha'>Odisha</option>
				
				<option value='Orissa'>Orissa</option>
				
				<option value='Other Territory'>Other Territory</option>
				
				<option value='Pondicherry'>Pondicherry</option>
				
				<option value='Punjab'>Punjab</option>
				
				<option value='Rajasthan'>Rajasthan</option>
				
				<option value='Sikkim'>Sikkim</option>
				
				<option value='Tamil Nadu'>Tamil Nadu</option>
				
				<option value='Telangana'>Telangana</option>
				
				<option value='Tripura'>Tripura</option>
				
				<option value='Uttar Pradesh'>Uttar Pradesh</option>
				
				<option value='Uttarakhand'>Uttarakhand</option>
				
				<option value='West Bengal'>West Bengal</option>
				
            </select>
			<SCRIPT LANGUAGE="JavaScript">
				<!--
				
				//-->
			</SCRIPT>
            </td>
          </tr>
<SCRIPT LANGUAGE="JavaScript">
<!--
function checkother(){
	if(document.getElementById('Other').checked==true){
		document.getElementById('stateindia').disabled=true;
		document.getElementById('T1').disabled=false;
	}
	if(document.getElementById('Other').checked==false){
		document.getElementById('stateindia').disabled=false;
		document.getElementById('T1').value='';
		document.getElementById('T1').disabled=true;
	}
}
//-->
function Trim2(s) 
{
	while ((s.substring(0,1) == ' ') || (s.substring(0,1) == '\n') || (s.substring(0,1) == '\r'))
	{
		s = s.substring(1,s.length);
	}

	while ((s.substring(s.length-1,s.length) == ' ') || (s.substring(s.length-1,s.length) == '\n') || (s.substring(s.length-1,s.length) == '\r'))
	{
		s = s.substring(0,s.length-1);
	}
	return s;
}

function trackstate(){
	val=document.getElementById('stateindia').value
	if(val==0){
		alert("Please select a proper state !!!");
		document.getElementById('stateindia').focus();
		return false;
	}else{
		return true;
	}
}

function CheckKeys2()
{
	if((event.keyCode < 65 && event.keyCode != 32))
	{
		event.keyCode=0;
	}
	if((event.keyCode > 122))
	{
		event.keyCode=0;
	}
}

	</SCRIPT>
          <tr>
            <td>Country*:</td>
            <td><input type="text" size="20" name="country" id='country' onkeyup="checkinput('country')" maxlength="25" value="INDIA" /></td>
          </tr>
          <tr>
            <td>E Mail*:</td>
            <td><input type="text" size="40" name="e_mail" id="e_mail" onkeyup="checkinput('e_mail')" maxlength="50" value=""/></td>
          </tr>
          <tr>
            <td>Mobile*:</td>
            <td><input type="text" size="40" name="phone" id="phone" maxlength="50" onkeyup="echeck(document.getElementById('e_mail').value,'e_mail');" value="" onkeypress="javascript:nochar();" /></td>
          </tr>
          <tr>
            <td>Fax:</td>
            <td><input type="text" size="20" name="fax" id="fax" value="" onkeypress="javascript:nochar();" /></td>
          </tr>
          <tr>
            <td>PAN No.*: </td>
            <td><input type="text" size="20" name="pan_no"  id="pan_no" value="" maxlength="11" style="text-transform: uppercase"  />
			<input type="hidden" size="20" name="responseval"  id="responseval">
            </td>
          </tr>
          <tr>
            <td>Preferred User ID* :</td>
            <td><input type="text" name="user_id" id="user_id" maxlength="25" value= ""  onkeyUp="checkUserId1('user_id')" />
            <a href="javascript:usercheck();">Click To Check UserID</a>
            </td>
            
          </tr>
          
          <tr>
            <td>Password* :</td>
            <td><input type="password"  name="password" id="password" maxlength="15" /></td>
          </tr>
          <tr>
            <td>Confirm Password* :</td>
            <td><input type="password" size="20" name="pass_confirm" id="pass_confirm" maxlength="15" onfocus="checkPassword(document.getElementById('password').value,'user_id')" /></td>
          </tr>
          <tr>
            <td>GST No.* :</td>
            <td><input type="text" name="st_no" id="st_no" onkeyup="checkinput('st_no')" maxlength="50" value= "" /> </td>
          </tr>
          <tr>
            <td>Banker's Name* :</td>
            <td><input type="text" size="40" name="banker" id="banker" onkeyup="checkinput('banker')" maxlength="40" value="" onfocus="passconfirm()" /></td>
          </tr>
          <tr>
            <td>Account Number* :</td>
            <td><input type="text" name="account_no" id="account_no" onkeyup="checkinput('account_no')" maxlength="25" value="" /></td>
          </tr>
          <tr>
            <td>Branch*: </td>
            <td><input type="text" size="40" name="branch" id="branch" onkeyup="checkinput('branch')" maxlength="35" value="" /></td>
          </tr>
          <tr>
            <td>IFSC Code* :</td>
            <td><input type="text" size="20" name="branch_code" id="branch_code" onBlur="checkIFSCode('branch_code');" onkeyup="PreventTypingSpecialChars('branch_code');document.getElementById('info').style.display='none';" value="" />&nbsp;<span id='info' style="display:none"><span></td>
          </tr>
          <tr>
            <td>Comment :</td>
            <td>
            <textarea rows="2" name="comment" id="comment" onkeyup="checkinput('comment')" cols="33"></textarea>
            
            </td>
          </tr>
          
          <tr>
          
            <td>Security Code: </td>
            <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><input type="text" name='capcha' id="capcha" />
                </td>
                <td>
				<!--<img id='img' src="imageverification.jsp" width=75 height=27 align="left" >-->
				<canvas id='textCanvas'  width="100" height="12" style="display:none;"></canvas>
				<img id='img' src='' width="200" style="float: none" >
				</td>
              </tr>
			  <tr>
                <td>Enter Image Code Here</td>
                <!--<td><input type="button" value="Refresh Image" name="B1" onclick="reload();"></td>-->
				<td><input type="button" value="Refresh Code" name="B1" onclick="createCaptcha();" style="width: 96px"></td>
              </tr>
            </table>

            </td>
            
            
          </tr>
			
          <tr>
            <td>Upload Bidder's Photo (Optional):</td>
            <td><input  type="file" name="file1" id="file1" style="width: 298px" accept="image/gif,image/jpeg,image/png"></td>
          </tr>
          <tr>
            <td>Upload Bidder's Scanned Signature (Optional):</td>
            <td><input type="file" name="file2"  id="file2" style="width: 298px" accept="image/gif,image/jpeg,image/png"></td>
          </tr>
		  <tr>
           <td colspan="2"><input type="checkbox" name="gtc" id="gtc" value="gtc" >I accept the General Terms 'n' Conditions of e-Auction.  <A href="../Layouts/registerncm.html" target="_blank">Click here</A> to see Terms 'n' Conditions.</td>
          </tr>
		  
		  <tr>
           <td colspan="2"><input type="checkbox" name="bstc" id="bstc" value="bstc" >I accept the Buyer Specific Terms 'n' Conditions of e-Auction.  <A href="../Layouts/buyeracceptncm.html" target="_blank">Click here</A> to see Terms 'n' Conditions.</td>
          </tr>
		  
        </table>
 </div>

<div class="blnkspc"></div>     
  <table width="100%" border="0" cellspacing="0" cellpadding="10">
      <tr>
        <td width="50%" ><div align="right">
		<input type="button" value="Submit" onClick='if(CheckFileSize()){if(validate(this.form)){this.form.submit();}}' name="S1"  id="S1" ></div></td>
        <td width="50%" ><div align="left">
		 <input type="reset" value="Reset" name="S2"></div></td>
      </tr>
   </table>
<div class="blnkspc"></div>  
<div class="blnkspc"></div>        
</form>

  </div>
</div>
<script src="../js/mstccaptcha.js"></script>
<SCRIPT LANGUAGE="JavaScript">
function checkbuyer_type(){
	if(document.getElementById('R1').value==0){
		alert("Please Select Your Buyer Type Before Proceeding Furthur !!! ");
		document.getElementById('R1').focus();
	}
}

function showterms(){
	if(document.getElementById('R1').value==0){
		alert("Please Select Your Buyer Type Before Proceeding Furthur !!! ");
		document.getElementById('R1').focus();
	}
	if(document.getElementById('R1').value=='I'){
		document.getElementById('termstr').style.display='';
		document.getElementById('S1').disabled=true;
	}else{
		document.getElementById('termstr').style.display='none';
		document.getElementById('S1').disabled=false;
	}
}
 
function agree(){
	if(document.getElementById('impstc').checked==true){
		document.getElementById('S1').disabled=false;
	}
	if(document.getElementById('impstc').checked==false){
		document.getElementById('S1').disabled=true;
	}
}

function resetme(){
	document.getElementById('FrontPage_Form1').reset();
	showterms();
}

function youchoose(){
	var val=document.getElementById('R1').value
	if(val==0){
		alert("Please Select Your Buyer Type Before Proceeding Furthur !!! ");
		document.getElementById('R1').focus();
		return false;
	}
	if(val=='I'){
		if(confirm("You Are Registering Yourself As A Imported Scrap Buyer click Ok Continue OR CANCEL To Change Your Buyer type")){
			return true;
		}else{
			document.getElementById('R1').focus();
			return false;
		}
	}

	if(val=='D'){
		if(confirm("You Are Registering Yourself As A Diamond Buyer Click OK Continue Or CANCEL To Change Your Buyer type")){
			return true;
		}else{
			document.getElementById('R1').focus();
			return false;
		}
	}

	if(val=='C'){
		if(confirm("You Are Registering Yourself As A Coal Buyer Click OK Continue Or CANCEL To Change Your Buyer type")){
			return true;
		}else{
			document.getElementById('R1').focus();
			return false;
		}
	}

	if(val=='O'){
		if(confirm("You Are Registering Yourself As A Scrap Buyer Click OK Continue Or CANCEL To Change Your Buyer type")){
			return true;
		}else{
			document.getElementById('R1').focus();
			return false;
		}
	}

	if(val=='M'){
		if(confirm("You Are Registering Yourself As A Manganese Ore Buyer Click OK Continue Or CANCEL To Change Your Buyer type")){
			return true;
		}else{
			document.getElementById('R1').focus();
			return false;
		}
	}

	if(val=='N'){
		if(confirm("You Are Registering Yourself As A Iron Ore Buyer Click OK Continue Or CANCEL To Change Your Buyer type")){
			return true;
		}else{
			document.getElementById('R1').focus();
			return false;
		}
	}


	if(val=='L'){
		if(confirm("You Are Registering Yourself As A Lignite Buyer Click OK Continue Or CANCEL To Change Your Buyer type")){
			return true;
		}else{
			document.getElementById('R1').focus();
			return false;
		}
	}
}
function checkUserId(name){
	val=document.getElementById(name).value
	error=check_User_Id(val);
	if(error.length==0){
		return (true);
	}
	if(error.length >1){
		alert(error);
		document.getElementById(name).focus()
		document.getElementById(name).select()
		return (false);
	}
}

function checkUserId1(name){
	val=document.getElementById(name).value
	error=check_User_Id_1(val);
	if(error.length==0){
	}
	if(error.length >1){
		alert(error);
		document.getElementById(name).focus()
		document.getElementById(name).select()
		return;
	}
}

function check_User_Id_1 (strng) {
	var error = "";
	if (strng == "") {
		error = "You didn't enter a UserId.\n";
		return error;
	}
	var iChars = "/*|,\":<>[]{}`\';()@&$#%"+"\\!^+=?~.";
    var illegalChars = /[\W_]/; // allow only letters and numbers
	if(true){
		for (var i = 0; i < strng.length; i++) {
		if (iChars.indexOf(strng.charAt(i)) != -1){
			return error = "The UserId contains illegal characters.\n";
		}
	}
	}
	if (!((strng.search(/(a-z)+/))
	&& (strng.search(/(A-Z)+/))
	&& (strng.search(/(0-9)+/)))) {
		error = "The UserId must contain at least one  uppercase letter, one lowercase letter,and one numeral.\n";
		return error;
	}
		return error;
}

function check_User_Id (strng) {
	 var error = "";
	 if (strng == "") {
		error = "You didn't enter a UserId.\n";
		return error;

	 }
	 var iChars = "/*|,\":<>[]{}`\';()@&$#%"+"\\!^+=?~.";
     var illegalChars = /[\W_]/;
    
	 if(true){
		  for (var i = 0; i < strng.length; i++) {
		  if (iChars.indexOf(strng.charAt(i)) != -1){
			return error = "The UserId contains illegal characters.\n";
		  }
		}
	 } 
	if ((strng.length < 6) ) {
       error = "The UserId is the wrong length.\n it must be of atleast length 6 present length :"+strng.length;
	   return error;

	}

	if (!((strng.search(/(a-z)+/))
	&& (strng.search(/(A-Z)+/))
	&& (strng.search(/(0-9)+/)))) {
		error = "The UserId must contain at least one  uppercase letter, one lowercase letter,and one numeral.\n";
		return error;
	}
		return error;
}

function validatePassword(fld) {
    var error = "";
    var illegalChars = /[\W_]/; 
    if (fld.value == "") {
        fld.style.background = 'Yellow';
        error = "You didn't enter a password.\n";
    } else if ((fld.value.length < 7) || (fld.value.length > 15)) {
        error = "The password is the wrong length. \n";
        fld.style.background = 'Yellow';
    } else if (illegalChars.test(fld.value)) {
        error = "The password contains illegal characters.\n";
        fld.style.background = 'Yellow';
    } else if (!((fld.value.search(/(a-z)+/)) && (fld.value.search(/(0-9)+/)))) {
        error = "The password must contain at least one numeral.\n";
        fld.style.background = 'Yellow';
    } else {
        fld.style.background = 'White';
    }
   return error;
}   


function trim(s)
{
  return s.replace(/^\s+|\s+$/, '');
} 

function validateEmail(fld) {
    var error="";
    var tfld = trim(fld.value);  
    var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/ ;
    var illegalChars= /[\(\)\<\>\,\;\:\\\"\[\]]/ ;
    
    if (fld.value == "") {
        fld.style.background = 'Yellow';
        error = "You didn't enter an email address.\n";
    } else if (!emailFilter.test(tfld)) { 
        fld.style.background = 'Yellow';
        error = "Please enter a valid email address.\n";
    } else if (fld.value.match(illegalChars)) {
        fld.style.background = 'Yellow';
        error = "The email address contains illegal characters.\n";
    } else {
        fld.style.background = 'White';
    }
    return error;
}


function clearText(elementid) {
     document.getElementById(elementid).value=filterNum(document.getElementById(elementid).value,elementid)

 function filterNum(str,elementid) {
	  re = /$|,|@|#|~|`|\%|\*|\^|\&|\(|\)|\+|\=|\[|\-|\_|\]|\[|\}|\{|\;|\:|\'|\"|\<|\>|\?|\||\\|\!|$|\./g;
	 if(elementid=='e_mail'){
		return  str.replace(/[^a-zA-Z 0-9]+/g,'');
	  }else{
		return  str.replace(/[^a-zA-Z 0-9]+/g,'');
	  }
 }
}

var testresults
function checkemail(elementid){
	var str=document.getElementById(elementid).value
	var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
	if (filter.test(str))
		testresults=true
	else{
		alert("Please input a valid email address!")
		testresults=false
	}
	return (testresults)
}
 </SCRIPT>

<script>

function PreventTypingSpecialChars(elmntid) {
 //document.getElementById(elmntid).value = document.getElementById(elmntid).value.replace(/[^a-zA-Z 0-9\n\r]+/g, '');
}
function testAlphaNumOnly(formFIeldValue){
	var checkOK = "0123456789";
	var checkStr = formFIeldValue;
	var allValid = false;
	for (i = 0;  i < checkStr.length;  i++)
	{
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++){
			if (ch == checkOK.charAt(j)){
				allValid = true;
				break;
			}
		}
	}
	return allValid;
}


function checkIFSCode(elmntid){
var val=document.getElementById(elmntid).value
	if(eval(val.length)<11){
		document.getElementById(elmntid).focus();
		alert("IFS Code Cannot be Less Than 11 Characters");
		return;
	}
	if(eval(val.length) >11){
		document.getElementById(elmntid).focus();
		document.getElementById(elmntid).select();
		alert("IFS Code Cannot be Greater Than 11 Characters");
		return;
	}
	if(val.length==11){
		var first4Chars=val.substring(0,4);
		var fifthChar=val.substring(4,5);
		var last6Chars=val.substring(5);

		var alphaExp = /^[a-zA-Z]+$/;
		if(!first4Chars.match(alphaExp))
		{
			document.getElementById(elmntid).focus();
			document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE FIRST 4 CHARS SHOULD BE ALPHABATES ONLY</font></b>';
			document.getElementById('info').style.display='block'
			return;
		}

		if(!isNaN(fifthChar)){
			if(eval(fifthChar)!=0){
				document.getElementById(elmntid).focus();
				document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE FIFTH CHAR SHOULD BE ZERO ONLY</font></b>';
				document.getElementById('info').style.display='block'
				return;
			}
		}else{
			document.getElementById(elmntid).focus();
			document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE FIFTH CHAR SHOULD BE ZERO ONLY</font></b>';
			document.getElementById('info').style.display='block'
			return;
		}
	var letters = /^[0-9a-zA-Z]+$/;
	if(!last6Chars.match(letters))  
	{  
		document.getElementById(elmntid).focus();
		document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE LAST SIX CHAR SHOULD BE ALPHA NUMERIC ONLY</font></b>';
		document.getElementById('info').style.display='block'
		return;
	}
	}
}
function CheckFileSize(){
	if (window.File && window.FileReader && window.FileList && window.Blob)
	{   
	try{
		var fsize = $('#file1')[0].files[0].size;
		var ftype = $('#file1')[0].files[0].type;
		var fname = $('#file1')[0].files[0].name;
	   
		if(fsize>52100)
		{
			alert("Type :"+ ftype +" | "+ eval(fsize/1024) +" KB\n(File: "+fname+") Too big!");
			return false;
		}else{
			return true;
		}
		var fsize2 = $('#file2')[0].files[0].size;
		var ftype2 = $('#file2')[0].files[0].type;
		var fname2 = $('#file2')[0].files[0].name;
	   
		if(fsize2>52100)
		{
			alert("Type :"+ ftype2 +" | "+ eval(fsize2/1024) +" KB\n(File: "+fname2+") Too big!");
			return false;
		}else{
			return true;
		}
	}catch(err){}
	}
	return true;
}
</script>
</body>
</html>
