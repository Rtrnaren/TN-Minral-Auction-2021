

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Seller Registration</title>
<script src="js/jquery-1.11.0.min.js"></script>
<link href="../css/scrap_layout.css" rel="stylesheet" type="text/css" /> 
</head>
<SCRIPT LANGUAGE="JavaScript" src="ajaxhelper.js"></script>
<script src="js/jsencrypt.js"></script>
<script Language="JavaScript">
 
var buyerStateCode="";
var annTrnOver="";

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
var iChars2 = "!#$%^&*()+=-[]\\\';,./{}|\":<>?";
noOfElements=formobject.elements.length
for(i=0;i<noOfElements;i++){
if(formobject.elements[i].type!='select-one' && formobject.elements[i].type!='select-multiple' && formobject.elements[i].type!='radio' && formobject.elements[i].type!='checkbox' && formobject.elements[i].type!='button'){
	//alert("Name :"+formobject.elements[i].name);
if(formobject.elements[i].name.equalsIgnoreCase('payment_favor')){
iChars = "!@#$%^&*+=-[]\\\';,{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('admin_desg') || formobject.elements[i].name.equalsIgnoreCase('admin_dept') || formobject.elements[i].name.equalsIgnoreCase('billing_desg') || formobject.elements[i].name.equalsIgnoreCase('billing_dept')){
iChars = "!@#$%^&*+=-[]\\\';,/{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('e_mail')){
iChars = "!#$%^&*()+=[]\\\';,/{}|\":<>?"; //Allow Hypen and Dot as per mail dated Fri, April 17, 2015 11:48 am
}
if(formobject.elements[i].name.equalsIgnoreCase('company')){
iChars = "!@#$%^*+=[]\\\';{}|\":<>?";//Allow (), and Integers as per mail dated Fri, April 17, 2015 11:48 am
}
if(formobject.elements[i].name.equalsIgnoreCase('street') || formobject.elements[i].name.equalsIgnoreCase('admin_street') || formobject.elements[i].name.equalsIgnoreCase('billing_street')){
iChars = "!@#$%^*+=[]\\\';{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('user_id')){
iChars = "!@#$%^&*()+=-[]\\\';,.{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('password')){
iChars = "%^*()+=-[]\\\';,.{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('pass_confirm')){
iChars = "%^*()+=-[]\\\';,.{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('country') || formobject.elements[i].name.equalsIgnoreCase('admin_country') || formobject.elements[i].name.equalsIgnoreCase('billing_country')){
iChars = "!@#$%^*+=-[]\\\';/{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('city') || formobject.elements[i].name.equalsIgnoreCase('admin_city') || formobject.elements[i].name.equalsIgnoreCase('billing_city')){
iChars = "!@#$%^&*+=-[]\\\';{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('location') || formobject.elements[i].name.equalsIgnoreCase('admin_contact') || formobject.elements[i].name.equalsIgnoreCase('billing_contact')){
iChars = "!@#$%^&*+=[]\\\';{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('salesTRegNo')){
iChars = "!@#$%^&*+=[]\';,{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('tan_no')){
iChars = "!@#$%^&*()+=-[]\\\';,./{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('sales_tax_no')){
iChars = "!@#$%^&*+=[]\\\';,{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('phone') || formobject.elements[i].name.equalsIgnoreCase('fax') || formobject.elements[i].name.equalsIgnoreCase('admin_pin')){
iChars = "!@#$%^&*+=[]\\\';,./{}|\":<>?";
}
if(formobject.elements[i].name.equalsIgnoreCase('comments')){
iChars = "!@#$%^&*+=[]\\\';,/{}|\":<>?";
}

	if(true){//!formobject.elements[i].name.equalsIgnoreCase('email')
	for (var j = 0; j < formobject.elements[i].value.length; j++) {
	if (iChars.indexOf(formobject.elements[i].value.charAt(j))!= -1){ 
	alert ("Your input has special characters. \nThese are not allowed.\n Please remove them and try again.");
	formobject.elements[i].style.background="red";
	formobject.elements[i].focus();
	//formobject.elements[i].onclick=
	var elname=formobject.elements[i].id;
	//alert(elname);
	if(elname==""){
	formobject.elements[i].id=formobject.elements[i].name;
	elname=formobject.elements[i].id;
	}
	formobject.elements[i].attachEvent('onclick',function(){document.getElementById(elname).style.background="#FFFFFF"});
	return false;
	}

	}

	if(formobject.elements[i].name.equalsIgnoreCase('e_mail')){
	var temp=formobject.elements[i].value;
	var pos=temp.indexOf('@');
	var subtemp=temp.substring(eval(pos+1));
	iChars = "!@#$%^&*()+=_[]\\\';,/{}|\":<>?";
	//alert(subtemp);
	for (var jj = 0; jj < subtemp.length; jj++) {
	if (iChars.indexOf(subtemp.charAt(jj))!= -1){ 
	alert ("Please input a valid email address! and try again.");
	formobject.elements[i].style.background="red";
	formobject.elements[i].focus();
	//formobject.elements[i].onclick=
	var elname=formobject.elements[i].id;
	//alert(elname);
	if(elname==""){
	formobject.elements[i].id=formobject.elements[i].name;
	elname=formobject.elements[i].id;
	}
	formobject.elements[i].attachEvent('onclick',function(){document.getElementById(elname).style.background="#FFFFFF"});
	return false;
	}
	}

	}

	}
    
	}
 }
return true;
}








function checkemail(elid){
var testresults
var str=document.getElementById(elid).value
var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
if (filter.test(str))
testresults=true
else{
alert("Please input a valid email address!")
document.getElementById(elid).style.background="red";
document.getElementById(elid).focus();
document.getElementById(elid).attachEvent('onclick',function(){document.getElementById(elid).style.background="#FFFFFF"});
testresults=false
}
return (testresults);
}


function removeCrossSiteScript(formobject){

/*if(!checkForSpecialChars(formobject)){
return false;
}*/
if(!checkemail('e_mail')){
return false;
}
var re = /(<([^>]+)>)/gi;
noOfElements=formobject.elements.length
for(i=0;i<noOfElements;i++){
//alert(formobject.elements[i].type)
//(except for radio button ,check box,drop down list )
if(formobject.elements[i].type!='select-one' && formobject.elements[i].type!='select-multiple' && formobject.elements[i].type!='radio' && formobject.elements[i].type!='checkbox' && formobject.elements[i].type!='button'){
content=formobject.elements[i].value
content=replaceURLWithHTMLLinks(content);
formobject.elements[i].value=content.replace(re, "");
}else{
//alert(formobject.elements[i].type);
continue;
}
}
return true;
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

function usercheck()
{
	//alert("entered")
	var userId=document.sreg.user_id.value
	var len=userId.toString();

		if(len.length >4 && len.length <25){	
			window.open('check_sell_user.jsp?user_id_passed='+userId+'','profile','width=300,height=150,top=80,scrollbars=+1+,scrollbars=1,left=120');
		}else{
			alert("Please provide a user id valid \nPlease enter atleast 4 characters in the user id field\nPlease enter at most 25 characters in the Preferred user id field.!");
			return;
		}

}
 

function PassPolicyCheck()
{
	//alert("entered")
//var userId=document.sreg.user_id.value
//	var len=userId.toString();

//if(len.length >0){
window.open('PasswordPolicy.jsp','profile','width=300,height=150,top=80,scrollbars=+1+,scrollbars=1,left=120');
//}else{
//alert("please provide a user id first !");
//return;
//}

}


function check_fill(frm)
{
if(frm.check.checked==true)
	{
	frm.billing_contact.value=frm.admin_contact.value;
	frm.billing_desg.value= frm.admin_desg.value;
	frm.billing_dept.value= frm.admin_dept.value;
	frm.billing_street.value= frm.admin_street.value;
	frm.billing_city.value= frm.admin_city.value;
	frm.billing_pin.value= frm.admin_pin.value;
	frm.billing_country.value=frm.admin_country.value;
	 }
else
	{
	frm.billing_contact.value="";
	frm.billing_desg.value= "";
	frm.billing_dept.value= "";
	frm.billing_street.value= "";
	frm.billing_city.value= "";
	frm.billing_pin.value= "";
	frm.billing_country.value="";
	}
}
function chk()
   {   
		if(document.sreg.isSalesTReg[1].checked)
		{
			document.sreg.salesTRegNo.blur();
		}
   }


function chkpin(f){
	var regpin = /[\D]+/;
	return regpin.test(f);
}// end chkpin

function chkspc(f){
	var regspc = /[\w]+/;
	return regspc.test(f);
}// end chkspc

function setfocus(){
	if(typeof(document.sreg) != 'undefined') document.sreg.company.focus();	 
}

function setcolor(elmt, bgrd){ 
	if (elmt.style){
		elmt.style.backgroundColor = bgrd;
	}
}

function testqt(src){
	// building the regular expression for pattern matching
	var regqt = /[\"?#%\{\}\[\]]+/;
	// testing the pattern with input value
	return regqt.test(src);

}// end testqt

function testqt1(src){
	// building the regular expression for pattern matching
	var regqt = /[\"\'?%\{\}\[\]]+/;
	// testing the pattern with input value
	return regqt.test(src);

}// end testqt


function chkquote(f, bgcol ){
	/*
		*@param f It points to a specefic form
		*@param bgcol It gives the background color. Not to be passed if setcolor is not implemented.
	*/
	// parses through the length of the form for all the elements
	for (i = 0; i < f.elements.length; i++){
		
		// checks for the input type text
		if(f.elements[i].type == 'text'){
			
			// executes the chkqt function to check for the invalid characters 
			if(testqt(f.elements[i].value)){
				// set the focus 
				f.elements[i].focus();
				// set the color. if setcolor is not implement comment this line and do not pass the parameter 'bgcol'
				setcolor(f.elements[i], bgcol)
				return false;
			}// end if
		}// end outer if
		
	}// end for
	return true;
	
}// end chkquote

function test(src){
	//var emailReg = "^[\\w-_\.]*[\\w-_\.]\@[\\w]+\.+[\\w]+[\\w]$";
	//var regex = new RegExp(emailReg);
	var regex = /^([\w])[\w\.-_]*[@][\w]([\w\.\-_])*[\w]([\.]\w{2,3})$/;
	return regex.test(src);
}

var chkok = "0123456789-,()";
var chkokemail = "0123456789-_@.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

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
		}// end if
	}//end outer for
	return allok;
}// end chkphone
function chkEmail(chkstr, chkokemail){ 
	var allok = true;
	for (i = 0;  i < chkstr.length;  i++){
		ch = chkstr.charAt(i);
		for (j = 0;  j < chkokemail.length;  j++)
		if (ch == chkokemail.charAt(j))
			break;
			
		if (j == chkokemail.length){
			allok = false;
			break;
		}// end if
	}//end outer for
	return allok;
}// end chkphone


// to give a preview to the seller before inserting into the database

function testEmail(src){
	//var emailReg = "^[\\w-_\.]*[\\w-_\.]\@[\\w]+\.+[\\w]+[\\w]$";
	//var regex = new RegExp(emailReg);
	var regex = /^([\w])[\w\._]*[@][\w]([\w\.\_])*[\w]([\.]\w{2,3})$/;
	return regex.test(src);
}

function preview(){	
	
	if(trackstate()!=false){
	document.sreg.action="preview_seller.jsp";
	document.sreg.submit();
	}
}
function testAlphaNumOnly(formFIeldValue)
{
		var checkOK = "0123456789";
		var checkStr = formFIeldValue;
		//alert("checkStr :"+checkStr);
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

function testAlphaAtleast(formFIeldValue){
	var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
	var checkOK = checkOK + "abcdefghijklmnopqrstuvwxyz"; 
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

function testTANNoOnly(formFIeldValue,objid)
{

		if(formFIeldValue.length==0) 
		{
			alert("TAN No is mandatory ...");	
			document.getElementById(objid).select();
			return false;
		}
		var checkOK = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		var checkStr = formFIeldValue;
		//alert("checkStr :"+checkStr);
		var allValid = true;
		for (i = 0;  i < checkStr.length;  i++)
		{
		ch = checkStr.charAt(i);
		var txt = new String(ch);
		if(checkOK.indexOf(txt)==-1){
		allValid = false;
		alert("Invalid character found -->"+checkStr);
		document.getElementById(objid).select();
		break;
		}
		
		}

		return allValid;
}

function testAlphaSplCharOnly(formFIeldValue)
{
		var checkOK = "$@_!#";
		var checkStr = formFIeldValue;
		//alert("checkStr :"+checkStr);
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

function callFn(frm) { 
	//annTrnOver = frm.trnovr.value;
	frm.submit();
}


function ValidatePAN(pan) {
    
	if(pan.value == ""){
		alert("Enter pan no");
		pan.focus();
 		return false;
 	}
    if (pan.value != "") {
    	panVal = pan.value;
        var panPat = /^([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})$/;
        if (panVal.search(panPat) == -1) {
            alert("Invalid Pancard No");
            pan.focus();
            return false;
        }
    }
    return true;
} 

function validate(theForm){
	
    var annTrnOver=theForm.trnovr.value;

	var bgcol = "#C0C0C0";
	var bgdef = "white";
	if(trackstate()==false){
	return false;
	}
	setcolor(document.sreg.company, bgdef);
	setcolor(document.sreg.street, bgdef);
	setcolor(document.sreg.city, bgdef);
	setcolor(document.sreg.pin, bgdef);
	setcolor(document.sreg.country, bgdef);
	setcolor(document.sreg.location, bgdef);
	setcolor(document.sreg.e_mail, bgdef);
	setcolor(document.sreg.phone, bgdef);
	setcolor(document.sreg.fax, bgdef);
	setcolor(document.sreg.user_id, bgdef);
	setcolor(document.sreg.password, bgdef);
	setcolor(document.sreg.pass_confirm, bgdef);
	setcolor(document.sreg.trnovr, bgdef);
	setcolor(document.sreg.salesTRegNo, bgdef);
	setcolor(document.sreg.payment_favor, bgdef);
	
	setcolor(document.sreg.admin_contact, bgdef);
	setcolor(document.sreg.admin_desg, bgdef);
	setcolor(document.sreg.admin_dept, bgdef);
	setcolor(document.sreg.admin_street, bgdef);
	setcolor(document.sreg.admin_city, bgdef);
	setcolor(document.sreg.admin_pin, bgdef);
	setcolor(document.sreg.admin_country, bgdef);
	
	setcolor(document.sreg.billing_contact, bgdef);
	setcolor(document.sreg.billing_desg, bgdef);
	setcolor(document.sreg.billing_dept, bgdef);
	setcolor(document.sreg.billing_street, bgdef);
	setcolor(document.sreg.billing_city, bgdef);
	setcolor(document.sreg.billing_pin, bgdef);
	setcolor(document.sreg.billing_country, bgdef);
	var reggst = /^([0-9]){2}([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}([a-zA-Z0-9]){3}?$/;
	var gstin=theForm.salesTRegNo.value;
	
	if(document.getElementById('capcha').value=='')
	{
		alert("Pls fillup the verification code ");
		document.getElementById('capcha').focus();
		document.getElementById('capcha').style.background="red";
		return false;
	}
	var newPass=theForm.password.value;
	if (theForm.password.value=="")
	{
		alert("Password cannot be blank");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (theForm.pass_confirm.value!=newPass)
	{
		alert("Your Confirm Password does not match with the Password");
		theForm.pass_confirm.focus();
		theForm.pass_confirm.style.background="red";
		return false;
	}
	if (theForm.user_id.value==newPass)
	{
		alert("Your Password Contains UserId");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (!testAlphaNumOnly(newPass) )
	{
		error = "The password must Contain a numeric digit .\n";
		alert(error);
		theForm.password.select();
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (!testAlphaAtleast(newPass) )
	{
		error = "The password must Contain a alphabet digit .\n";
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
		theForm.password.style.background="red";
		return false;
	}
	if (newPass.length < 8)
	{
		alert("Please enter at least 8 characters in the Password field.");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (newPass.length > 15)
	{
		alert("Please enter at most 15 characters in the Password field.");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if(!(x= chkquote(document.sreg, bgcol))){
	alert("Please enter a valid character in the field.");
	return false;
	
	}else if ((document.sreg.company.value).length < 1 || (document.sreg.company.value).length > 90){
	setcolor(document.sreg.company, bgcol);
    alert("Company length should between 1 and  90.");	
	document.sreg.company.focus();
	document.sreg.company.style.background="red";
    return false;
  		
	}else if ((document.sreg.street.value).length < 1 || (document.sreg.street.value).length > 60){
	setcolor(document.sreg.street, bgcol);
    alert("Street length should between 1 and  60.");	
	document.sreg.street.focus();
	document.sreg.street.style.background="red";
    return false;

	}else if ((document.sreg.city.value).length < 1 || (document.sreg.city.value).length > 60){
	setcolor(document.sreg.city, bgcol);
    alert("City length should between 1 and  60.");	
	document.sreg.city.focus();
	document.sreg.city.style.background="red";
    return false;
	
	}else if ((document.sreg.pin.value).length != 6){
	setcolor(document.sreg.pin, bgcol);
    alert("Please enter a valid PIN Code.");	
	document.sreg.pin.focus();
	document.sreg.pin.style.background="red";
    return false;
	
	}else if (chkpin(document.sreg.pin.value)){
	setcolor(document.sreg.pin, bgcol);
	alert("Please enter a valid PIN Code.");
	document.sreg.pin.focus();
	document.sreg.pin.style.background="red";
	return false;
		
	}else if ((document.sreg.country.value).length < 1 || (document.sreg.country.value).length > 60){
	setcolor(document.sreg.country, bgcol);
    alert("Country length should between 1 and  60.");
    document.sreg.country.focus();
	document.sreg.country.style.background="red";
    return false;
		
	}else if ((document.sreg.location.value).length < 1 || (document.sreg.country.value).length > 60){
	setcolor(document.sreg.country, bgcol);
    alert("Location length should between 1 and  60.");
    document.sreg.location.focus();
	document.sreg.location.style.background="red";
    return false;		
	}else if(!chkEmail(document.sreg.e_mail.value,chkokemail)){
	setcolor(document.sreg.e_mail, bgcol);
	alert("Please enter a valid E-Mail Id") ;
	document.sreg.e_mail.focus();
	document.sreg.e_mail.style.background="red";
	return false;
	
	}else if ((document.sreg.phone.value).length < 1 || (document.sreg.phone.value).length > 50){
	setcolor(document.sreg.phone, bgcol);
    alert("Please enter your Phone No.");	
	document.sreg.phone.focus();
	document.sreg.phone.style.background="red";
    return false;

	}else if(!(x = chkphone(document.sreg.phone.value,  "0123456789-,()"))){
		
	setcolor(document.sreg.phone, bgcol);
    alert("Please enter only digits, - , and , in the Phone No.");	
	document.sreg.phone.focus();
	document.sreg.phone.style.background="red";
    return false;
	
	}/*else if(!(x = chkphone(document.sreg.fax.value,  "0123456789-,()"))){
	setcolor(document.sreg.fax, bgcol);
    alert("Please enter only digits, - , and , in the Fax No.");	
	document.sreg.fax.focus();
	document.sreg.fax.style.background="red";
    return false;
	
	}*/
	
	/*else if ((document.sreg.fax.value).length < 1 || (document.sreg.fax.value).length > 40){
	setcolor(document.sreg.fax, bgcol);
    alert("Please enter your Fax No.");	
	document.sreg.fax.focus();
    return false;

	}*/else if ((document.sreg.user_id.value).length < 1 || (document.sreg.user_id.value).length > 25){
	setcolor(document.sreg.user_id, bgcol);
    alert("User Name length should between 1 and  25.");
    document.sreg.user_id.focus();
	document.sreg.user_id.style.background="red";
    return false;
	
	}
	if((testqt1(document.sreg.user_id.value))){
	alert("Please enter a valid character in the userid field");
	document.sreg.user_id.focus();
	document.sreg.user_id.style.background="red";
	return false;
	
	
	}else if (!(x = chkspc(document.sreg.user_id.value))){
	setcolor(document.sreg.user_id, bgcol);
    alert("Please enter a single word for your User Name. Spaces are not allowed");
    document.sreg.user_id.focus();
	document.sreg.user_id.style.background="red";
    return false;
	}
	if((testqt1(document.sreg.password.value))){
	alert("Please enter a valid character in the Password field");
	document.sreg.password.focus();
	document.sreg.password.style.background="red";
	return false;
	
	}else if ((document.sreg.password.value).length < 4 || (document.sreg.password.value).length > 15){
	setcolor(document.sreg.password, bgcol);
    alert("Please enter between 4 to 15 characters in the Password field.");
    document.sreg.password.focus();
	document.sreg.password.style.background="red";
    return false;
	
	}else if (!(x = chkspc(document.sreg.password.value))){
	setcolor(document.sreg.password, bgcol);
    alert("Please enter a single word for your Password. Spaces are not allowed");
    document.sreg.password.focus();
	document.sreg.password.style.background="red";
    return false;
	}
	if((testqt1(document.sreg.pass_confirm.value))){
	alert("Please enter a valid character in the Password Confirm field");
	document.sreg.pass_confirm.focus();
	document.sreg.pass_confirm.style.background="red";
	return false;	
	
	}else if ((document.sreg.pass_confirm.value).length < 4 || (document.sreg.pass_confirm.value).length > 15){
	setcolor(document.sreg.pass_confirm, bgcol);
    alert("Please enter between 4 to 15 characters in the Confirm Password field.");
    document.sreg.pass_confirm.focus();
	document.sreg.pass_confirm.style.background="red";
    return false;
  
	}else if (document.sreg.password.value != document.sreg.pass_confirm.value){
	setcolor(document.sreg.pass_confirm, bgcol);
    alert("The Confirm Password does not match with the Password");
    document.sreg.pass_confirm.focus();
	document.sreg.pass_confirm.style.background="red";
    return false;
	
	} else if(document.sreg.trnovr.selectedIndex == 0){
	setcolor(document.sreg.trnovr, bgcol);
	alert("Please select Annual Turnover");
	document.sreg.trnovr.focus();
	document.sreg.trnovr.style.background="red";
	return false;
	
	} else if (annTrnOver.equals("above20lacs")) {
	if(document.sreg.salesTRegNo.value=="" && document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
	setcolor(document.sreg.salesTRegNo, bgcol);
	alert("Please enter GST No.");
	document.sreg.salesTRegNo.focus();
	document.sreg.salesTRegNo.style.background="red";
	return false;
	
	}else if(gstin.length<15  && document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
			alert('GST Identification Number is not valid. It should be 15 Character');
				document.sreg.salesTRegNo.focus();
				document.sreg.salesTRegNo.style.background="red";
				return false;
	}
	else if(!reggst.test(gstin)  && document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
			alert('GST Identification Number is not valid. It should be in this " 22(State code) AAAAA0000A(Pan) 1(Entity no of the same pan holder in the state) Z(reserved) 5 (digit or alphabet)" format'); 
			document.sreg.salesTRegNo.focus();
			document.sreg.salesTRegNo.style.background="red";
			return false;
	}else if(document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
		var gstStateCode = gstin.substr(0, 2);
		var buyer_state=theForm.stateindia.value; 
		checkSellerGST(buyer_state); 
		if(eval(buyerStateCode) !=eval(gstStateCode)  && buyerStateCode!=""){
			alert('State code mismatch..!! Seller with state code :' + buyerStateCode + ' providing GST No with state code :' + gstStateCode); 
			return false;
		}
	}
	}
	if ((document.sreg.payment_favor.value).length < 1 || (document.sreg.payment_favor.value).length > 60){
	setcolor(document.sreg.payment_favor, bgcol);
    alert("Please enter in whose favour the Payment is being made.");
    document.sreg.payment_favor.focus();
	document.sreg.payment_favor.style.background="red";
    return false;

	}else if ((document.sreg.admin_contact.value).length < 1 || (document.sreg.admin_contact.value).length > 60){
	setcolor(document.sreg.admin_contact, bgcol);
    alert("Administrative Contact length should between 1 and  60.");
    document.sreg.admin_contact.focus();
	document.sreg.admin_contact.style.background="red";
    return false;

	}else if ((document.sreg.admin_desg.value).length < 1 || (document.sreg.admin_desg.value).length > 60){
	setcolor(document.sreg.admin_desg, bgcol);
    alert("Designation length should between 1 and  60.");
    document.sreg.admin_desg.focus();
	document.sreg.admin_desg.style.background="red";
    return false;

	}else if ((document.sreg.admin_dept.value).length < 1 || (document.sreg.admin_dept.value).length > 60){
	setcolor(document.sreg.admin_dept, bgcol);
    alert("Department length should between 1 and  60");
    document.sreg.admin_dept.focus();
	document.sreg.admin_dept.style.background="red";
    return false;

	}else if ((document.sreg.admin_street.value).length < 1 || (document.sreg.admin_street.value).length > 60){
	setcolor(document.sreg.admin_street, bgcol);
    alert("Street length should between 1 and  60.");
    document.sreg.admin_street.focus();
	document.sreg.admin_street.style.background="red";
    return false;

	}else if ((document.sreg.admin_city.value).length < 1 || (document.sreg.admin_city.value).length > 40){
	setcolor(document.sreg.admin_city, bgcol);
    alert("City length should between 1 and  40");
    document.sreg.admin_city.focus();
	document.sreg.admin_city.style.background="red";
    return false;

	}else if ((document.sreg.admin_pin.value).length != 6){
	setcolor(document.sreg.admin_pin, bgcol);
    alert("Please enter a Valid PIN Code.");
    document.sreg.admin_pin.focus();
	document.sreg.admin_pin.style.background="red";
    return false;
	
	}else if (chkpin(document.sreg.admin_pin.value)){
	setcolor(document.sreg.admin_pin.value, bgcol);
	alert("Please enter a valid PIN Code.");
	document.sreg.admin_pin.focus();
	document.sreg.admin_pin.style.background="red";
	return false; 
		
	
	}else if ((document.sreg.admin_country.value).length < 1 || (document.sreg.admin_country.value).length > 40){
	setcolor(document.sreg.admin_country, bgcol);
    alert("Please enter a country.");
    document.sreg.admin_country.focus();
	document.sreg.admin_country.style.background="red";
    return false;

	}else if ((document.sreg.billing_contact.value).length < 1 || (document.sreg.billing_contact.value).length > 60){
	setcolor(document.sreg.billing_contact, bgcol);
    alert("Billing Contact length should between 1 and  60");
    document.sreg.billing_contact.focus();
	document.sreg.billing_contact.style.background="red";
    return false;

	}else if ((document.sreg.billing_desg.value).length < 1 || (document.sreg.billing_desg.value).length > 60){
	setcolor(document.sreg.billing_desg, bgcol);
    alert("Designation length should between 1 and  60.");
    document.sreg.billing_desg.focus();
	document.sreg.billing_desg.style.background="red";
    return false;

	}else if ((document.sreg.billing_dept.value).length < 1 || (document.sreg.billing_dept.value).length > 60){
	setcolor(document.sreg.billing_dept, bgcol);
    alert("Department length should between 1 and  60.");
    document.sreg.billing_dept.focus();
	document.sreg.billing_dept.style.background="red";
    return false;

	}else if ((document.sreg.billing_street.value).length < 1 || (document.sreg.billing_street.value).length > 60){
	setcolor(document.sreg.billing_street, bgcol);
    alert("Street length should between 1 and  60.");
    document.sreg.billing_street.focus();
	document.sreg.billing_street.style.background="red";
    return false;

	}else if ((document.sreg.billing_city.value).length < 1 || (document.sreg.billing_city.value).length > 40){
	setcolor(document.sreg.billing_city, bgcol);
    alert("City length should between 1 and  40");
    document.sreg.billing_city.focus();
	document.sreg.billing_city.style.background="red";
    return false;

	}else if ((document.sreg.billing_pin.value).length != 6){
	setcolor(document.sreg.billing_pin, bgcol);
    alert("Please enter a Valid PIN Code.");
    document.sreg.billing_pin.focus();
	document.sreg.billing_pin.style.background="red";
    return false;
	
	}/* else if (document.sreg.pan_no.value == ""){
	setcolor(document.sreg.pan_no, bgcol);
    alert("Please enter a Valid PAN No.");
    document.sreg.pan_no.focus();
	document.sreg.pan_no.style.background="red";
    return false;
	
	} */
	else if (document.sreg.pan_no.value != "" && ValidatePAN(document.sreg.pan_no)  == false){
		setcolor(document.sreg.pan_no, bgcol);
		alert("Please enter a Valid PAN No.");
		document.sreg.pan_no.focus();
		document.sreg.pan_no.style.background="red";
		return false;
	
	}else if (chkpin(document.sreg.pin.value)){
	setcolor(document.sreg.billing_pin.value, bgcol);
	alert("Please enter a valid PIN Code.");
	document.sreg.billing_pin.focus();
	document.sreg.billing_pin.style.background="red";
	return false;
		
	}else if ((document.sreg.billing_country.value).length < 1 || (document.sreg.billing_country.value).length > 40){
	setcolor(document.sreg.billing_country, bgcol);
    alert("Country length should between 1 and  40.");
    document.sreg.billing_country.focus();
	document.sreg.billing_country.style.background="red";
    return false;

	}
		//9/28/2015 for making Bank details Mandatory
	else if ((document.sreg.bankname.value).length < 1  || (document.sreg.bankname.value).length > 40){
	setcolor(document.sreg.bankname, bgcol);
    alert("Please check your Bank Name details");
    document.sreg.bankname.focus();
	document.sreg.bankname.style.background="red";
    return false;

	}
	else if ((document.sreg.bankaccno.value).length < 1 || (document.sreg.bankaccno.value).length > 25){
    alert("Please check your Bank account no. details");
    document.sreg.bankaccno.focus();
	document.sreg.bankaccno.style.background="red";
    return false;

	}
	else if ((document.sreg.branch.value).length < 1 || (document.sreg.branch.value).length > 35){
    alert("Please check your Branch details");
    document.sreg.branch.focus();
	document.sreg.branch.style.background="red";
    return false;

	}
	else if ((document.sreg.branchcode.value).length < 1 || (document.sreg.branchcode.value).length > 15){
	setcolor(document.sreg.branchcode, bgcol);
    alert("Please check your Branch code details");
    document.sreg.branchcode.focus();
	document.sreg.branchcode.style.background="red";
    return false;

	}
	else if (document.sreg.comments.value.length > 250)
  {
    alert("Please enter at most 250 characters in the Comments field.");
    document.sreg.comments.focus();
	document.sreg.comments.style.background="red";
    return (false);
  }else if( document.getElementById('gtc').checked==false){
	alert("Please Agree General Terms And Condition Before proceding.");
	return false;
	}
	else if( document.getElementById('sstc').checked==false){
	alert("Please Agree Seller Specific Terms And Condition Before proceding.");
	return false;
	}else if(!camf_p()){
		return false;
	}else if(!camf_p1()){
		return false;
	}
	else{
		isGST();	
		
		document.getElementById('sreg').action="process.jsp";
		document.getElementById('sreg').submit();
		return true;
	}
}

function isGST(){ 
	if (sreg.trnovr.selectedIndex == 1) { 
		document.sreg.salesTRegNo.value="TURNOVER BELOW 20L";
	}
}

function checkSellerGST(state){  
		var url="gstAjax.jsp?state="+state;
		var returnval="";
		var ajaxObject=false;
		ajaxObject = CreateAjaxObject();
		//alert(ajaxObject);
		ajaxObject.open("POST",url,true);
		ajaxObject.send(null);
		ajaxObject.onreadystatechange=function(){
			if(ajaxObject.readyState==4)
			{
				responseText=ajaxObject.responseText;
				//alert(responseText);
				if(responseText.indexOf("true")==-1){
						trimedResponse = trim(responseText);;
						 buyerStateCode= trimedResponse;
				}else{ 
				}
			}
		} 
}

function validatePreview(theForm){
	var annTrnOver=theForm.trnovr.value;
	
    

	var bgcol = "#C0C0C0";
	var bgdef = "white";
	if(trackstate()==false){
	return false;
	}
	setcolor(document.sreg.company, bgdef);
	setcolor(document.sreg.street, bgdef);
	setcolor(document.sreg.city, bgdef);
	setcolor(document.sreg.pin, bgdef);
	setcolor(document.sreg.country, bgdef);
	setcolor(document.sreg.location, bgdef);
	setcolor(document.sreg.e_mail, bgdef);
	setcolor(document.sreg.phone, bgdef);
	//setcolor(document.sreg.fax, bgdef);
	setcolor(document.sreg.user_id, bgdef);
	setcolor(document.sreg.password, bgdef);
	setcolor(document.sreg.pass_confirm, bgdef);
	setcolor(document.sreg.trnovr, bgdef);
	setcolor(document.sreg.salesTRegNo, bgdef);
	setcolor(document.sreg.payment_favor, bgdef);
	
	setcolor(document.sreg.admin_contact, bgdef);
	setcolor(document.sreg.admin_desg, bgdef);
	setcolor(document.sreg.admin_dept, bgdef);
	setcolor(document.sreg.admin_street, bgdef);
	setcolor(document.sreg.admin_city, bgdef);
	setcolor(document.sreg.admin_pin, bgdef);
	setcolor(document.sreg.admin_country, bgdef);
	
	setcolor(document.sreg.billing_contact, bgdef);
	setcolor(document.sreg.billing_desg, bgdef);
	setcolor(document.sreg.billing_dept, bgdef);
	setcolor(document.sreg.billing_street, bgdef);
	setcolor(document.sreg.billing_city, bgdef);
	setcolor(document.sreg.billing_pin, bgdef);
	setcolor(document.sreg.billing_country, bgdef);
	var reggstp = /^([0-9]){2}([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}([a-zA-Z0-9]){3}?$/;
	var gstinp=theForm.salesTRegNo.value;
	if(document.getElementById('capcha').value=='')
	{
		alert("Pls fillup the verification code ");
		document.getElementById('capcha').focus();
		document.getElementById('capcha').style.background="red";
		return false;
	}
	var newPass=theForm.password.value;
	if (theForm.password.value=="")
	{
		alert("Password cannot be blank");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (theForm.pass_confirm.value!=newPass)
	{
		alert("Your Confirm Password does not match with the Password");
		theForm.pass_confirm.focus();
		theForm.pass_confirm.style.background="red";
		return false;
	}
	if (theForm.user_id.value==newPass)
	{
		alert("Your Password Contains UserId");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (!testAlphaNumOnly(newPass) )
	{
		error = "The password must Contain a numeric digit .\n";
		alert(error);
		theForm.password.select();
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (!testAlphaSplCharOnly(newPass) )
	{
		error = "The password must Contain..\n at least one of the following special characters $@_!#";
		alert(error);
		theForm.password.select();
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (newPass.length < 8)
	{
		alert("Please enter at least 8 characters in the Password field.");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if (newPass.length > 15)
	{
		alert("Please enter at most 15 characters in the Password field.");
		theForm.password.focus();
		theForm.password.style.background="red";
		return false;
	}
	if(!(x= chkquote(document.sreg, bgcol))){
	alert("Please enter a valid character in the field.");
	return false;
	
	}else if ((document.sreg.company.value).length < 1 || (document.sreg.company.value).length > 90){
	setcolor(document.sreg.company, bgcol);
    alert("Company length should between 1 and  90.");	
	document.sreg.company.focus();
	document.sreg.company.style.background="red";
    return false;
  		
	}else if ((document.sreg.street.value).length < 1 || (document.sreg.street.value).length > 60){
	setcolor(document.sreg.street, bgcol);
    alert("Street length should between 1 and  60.");	
	document.sreg.street.focus();
	document.sreg.street.style.background="red";
    return false;

	}else if ((document.sreg.city.value).length < 1 || (document.sreg.city.value).length > 60){
	setcolor(document.sreg.city, bgcol);
    alert("City length should between 1 and  60.");	
	document.sreg.city.focus();
	document.sreg.city.style.background="red";
    return false;
	
	}else if ((document.sreg.pin.value).length != 6){
	setcolor(document.sreg.pin, bgcol);
    alert("Please enter a valid PIN Code.");	
	document.sreg.pin.focus();
	document.sreg.pin.style.background="red";
    return false;
	
	}else if (chkpin(document.sreg.pin.value)){
	setcolor(document.sreg.pin, bgcol);
	alert("Please enter a valid PIN Code.");
	document.sreg.pin.focus();
	document.sreg.pin.style.background="red";
	return false;
		
	}else if ((document.sreg.country.value).length < 1 || (document.sreg.country.value).length > 60){
	setcolor(document.sreg.country, bgcol);
    alert("Country length should between 1 and  60.");
    document.sreg.country.focus();
	document.sreg.country.style.background="red";
    return false;
		
	}else if ((document.sreg.location.value).length < 1 || (document.sreg.country.value).length > 60){
	setcolor(document.sreg.country, bgcol);
    alert("Location length should between 1 and  60.");
    document.sreg.location.focus();
	document.sreg.location.style.background="red";
    return false;		
	}else if(!chkEmail(document.sreg.e_mail.value,chkokemail)){
	setcolor(document.sreg.e_mail, bgcol);
	alert("Please enter a valid E-Mail Id") ;
	document.sreg.e_mail.focus();
	document.sreg.e_mail.style.background="red";
	return false;
	
	}else if ((document.sreg.phone.value).length < 1 || (document.sreg.phone.value).length > 50){
	setcolor(document.sreg.phone, bgcol);
    alert("Please enter your Phone No.");	
	document.sreg.phone.focus();
	document.sreg.phone.style.background="red";
    return false;

	}else if(!(x = chkphone(document.sreg.phone.value,  "0123456789-,()"))){
		
	setcolor(document.sreg.phone, bgcol);
    alert("Please enter only digits, - , and , in the Phone No.");	
	document.sreg.phone.focus();
	document.sreg.phone.style.background="red";
    return false;
	
	}/*else if(!(x = chkphone(document.sreg.fax.value,  "0123456789-,()"))){
	setcolor(document.sreg.fax, bgcol);
    alert("Please enter only digits, - , and , in the Fax No.");	
	document.sreg.fax.focus();
	document.sreg.fax.style.background="red";
    return false;
	
	}*/
	
	/*else if ((document.sreg.fax.value).length < 1 || (document.sreg.fax.value).length > 40){
	setcolor(document.sreg.fax, bgcol);
    alert("Please enter your Fax No.");	
	document.sreg.fax.focus();
    return false;

	}*/else if ((document.sreg.user_id.value).length < 1 || (document.sreg.user_id.value).length > 25){
	setcolor(document.sreg.user_id, bgcol);
    alert("User Name length should between 1 and  25.");
    document.sreg.user_id.focus();
	document.sreg.user_id.style.background="red";
    return false;
	
	}
	if((testqt1(document.sreg.user_id.value))){
	alert("Please enter a valid character in the userid field");
	document.sreg.user_id.focus();
	document.sreg.user_id.style.background="red";
	return false;
	
	
	}else if (!(x = chkspc(document.sreg.user_id.value))){
	setcolor(document.sreg.user_id, bgcol);
    alert("Please enter a single word for your User Name. Spaces are not allowed");
    document.sreg.user_id.focus();
	document.sreg.user_id.style.background="red";
    return false;
	}
	if((testqt1(document.sreg.password.value))){
	alert("Please enter a valid character in the Password field");
	document.sreg.password.focus();
	document.sreg.password.style.background="red";
	return false;
	
	}else if ((document.sreg.password.value).length < 4 || (document.sreg.password.value).length > 15){
	setcolor(document.sreg.password, bgcol);
    alert("Please enter between 4 to 15 characters in the Password field.");
    document.sreg.password.focus();
	document.sreg.password.style.background="red";
    return false;
	
	}else if (!(x = chkspc(document.sreg.password.value))){
	setcolor(document.sreg.password, bgcol);
    alert("Please enter a single word for your Password. Spaces are not allowed");
    document.sreg.password.focus();
	document.sreg.password.style.background="red";
    return false;
	}
	if((testqt1(document.sreg.pass_confirm.value))){
	alert("Please enter a valid character in the Password Confirm field");
	document.sreg.pass_confirm.focus();
	document.sreg.pass_confirm.style.background="red";
	return false;	
	
	}else if ((document.sreg.pass_confirm.value).length < 4 || (document.sreg.pass_confirm.value).length > 15){
	setcolor(document.sreg.pass_confirm, bgcol);
    alert("Please enter between 4 to 15 characters in the Confirm Password field.");
    document.sreg.pass_confirm.focus();
	document.sreg.pass_confirm.style.background="red";
    return false;
  
	}else if (document.sreg.password.value != document.sreg.pass_confirm.value){
	setcolor(document.sreg.pass_confirm, bgcol);
    alert("The Confirm Password does not match with the Password");
    document.sreg.pass_confirm.focus();
	document.sreg.pass_confirm.style.background="red";
    return false;
	
	}else if(document.sreg.trnovr.selectedIndex == 0){
	setcolor(document.sreg.trnovr, bgcol);
	alert("Please select Annual Turnover");
	document.sreg.trnovr.focus();
	document.sreg.trnovr.style.background="red";
	return false;
	
	}
	else if (document.sreg.pan_no.value != "" && ValidatePAN(document.sreg.pan_no)  == false){
		setcolor(document.sreg.pan_no, bgcol);
		alert("Please enter a Valid PAN No.");
		document.sreg.pan_no.focus();
		document.sreg.pan_no.style.background="red";
		return false;
	
	}else if (annTrnOver.equals("above20lacs")) {
		//alert("salesTRegNo"+document.sreg.salesTRegNo.value);
		if(document.sreg.salesTRegNo.value=="" && document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
		setcolor(document.sreg.salesTRegNo, bgcol);
		alert("Please enter GST No.");
		document.sreg.salesTRegNo.focus();
		document.sreg.salesTRegNo.style.background="red";
		return false;
		
		}else if(gstinp.length<15 && document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
				alert('GST Identification Number is not valid. It should be 15 Character');
					document.sreg.salesTRegNo.focus();
					document.sreg.salesTRegNo.style.background="red";
					return false;
		}
		else if(!reggstp.test(gstinp) && document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
				alert('GST Identification Number is not valid. It should be in this "11AAAAA1111Z1A1" format');
				document.sreg.salesTRegNo.focus();
				document.sreg.salesTRegNo.style.background="red";
				return false;
		}else if(document.sreg.typeOfSeller.value!="Central/State Government/UT/Local Authority"){
			var gstStateCode = gstinp.substr(0, 2); 
			var buyer_state=theForm.stateindia.value;
			checkSellerGST(buyer_state);
			if(eval(buyerStateCode) !=eval(gstStateCode) && buyerStateCode!=""){
				alert('State code mismatch..!! Seller with state code :' + buyerStateCode + ' providing GST No with state code :' + gstStateCode); 
				return false;
			}
		}
	}
	
	
	if ((document.sreg.payment_favor.value).length < 1 || (document.sreg.payment_favor.value).length > 60){
	setcolor(document.sreg.payment_favor, bgcol);
    alert("Please enter in whose favour the Payment is being made.");
    document.sreg.payment_favor.focus();
	document.sreg.payment_favor.style.background="red";
    return false;

	}else if ((document.sreg.admin_contact.value).length < 1 || (document.sreg.admin_contact.value).length > 60){
	setcolor(document.sreg.admin_contact, bgcol);
    alert("Administrative Contact length should between 1 and  60.");
    document.sreg.admin_contact.focus();
	document.sreg.admin_contact.style.background="red";
    return false;

	}else if ((document.sreg.admin_desg.value).length < 1 || (document.sreg.admin_desg.value).length > 60){
	setcolor(document.sreg.admin_desg, bgcol);
    alert("Designation length should between 1 and  60.");
    document.sreg.admin_desg.focus();
	document.sreg.admin_desg.style.background="red";
    return false;

	}else if ((document.sreg.admin_dept.value).length < 1 || (document.sreg.admin_dept.value).length > 60){
	setcolor(document.sreg.admin_dept, bgcol);
    alert("Department length should between 1 and  60");
    document.sreg.admin_dept.focus();
	document.sreg.admin_dept.style.background="red";
    return false;

	}else if ((document.sreg.admin_street.value).length < 1 || (document.sreg.admin_street.value).length > 60){
	setcolor(document.sreg.admin_street, bgcol);
    alert("Street length should between 1 and  60.");
    document.sreg.admin_street.focus();
	document.sreg.admin_street.style.background="red";
    return false;

	}else if ((document.sreg.admin_city.value).length < 1 || (document.sreg.admin_city.value).length > 40){
	setcolor(document.sreg.admin_city, bgcol);
    alert("City length should between 1 and  40");
    document.sreg.admin_city.focus();
	document.sreg.admin_city.style.background="red";
    return false;

	}else if ((document.sreg.admin_pin.value).length != 6){
	setcolor(document.sreg.admin_pin, bgcol);
    alert("Please enter a Valid PIN Code.");
    document.sreg.admin_pin.focus();
	document.sreg.admin_pin.style.background="red";
    return false;
	
	}else if (chkpin(document.sreg.admin_pin.value)){
	setcolor(document.sreg.admin_pin.value, bgcol);
	alert("Please enter a valid PIN Code.");
	document.sreg.admin_pin.focus();
	document.sreg.admin_pin.style.background="red";
	return false; 
		
	
	}else if ((document.sreg.admin_country.value).length < 1 || (document.sreg.admin_country.value).length > 40){
	setcolor(document.sreg.admin_country, bgcol);
    alert("Please enter a country.");
    document.sreg.admin_country.focus();
	document.sreg.admin_country.style.background="red";
    return false;

	}else if ((document.sreg.billing_contact.value).length < 1 || (document.sreg.billing_contact.value).length > 60){
	setcolor(document.sreg.billing_contact, bgcol);
    alert("Billing Contact length should between 1 and  60");
    document.sreg.billing_contact.focus();
	document.sreg.billing_contact.style.background="red";
    return false;

	}else if ((document.sreg.billing_desg.value).length < 1 || (document.sreg.billing_desg.value).length > 60){
	setcolor(document.sreg.billing_desg, bgcol);
    alert("Designation length should between 1 and  60.");
    document.sreg.billing_desg.focus();
	document.sreg.billing_desg.style.background="red";
    return false;

	}else if ((document.sreg.billing_dept.value).length < 1 || (document.sreg.billing_dept.value).length > 60){
	setcolor(document.sreg.billing_dept, bgcol);
    alert("Department length should between 1 and  60.");
    document.sreg.billing_dept.focus();
	document.sreg.billing_dept.style.background="red";
    return false;

	}else if ((document.sreg.billing_street.value).length < 1 || (document.sreg.billing_street.value).length > 60){
	setcolor(document.sreg.billing_street, bgcol);
    alert("Street length should between 1 and  60.");
    document.sreg.billing_street.focus();
	document.sreg.billing_street.style.background="red";
    return false;

	}else if ((document.sreg.billing_city.value).length < 1 || (document.sreg.billing_city.value).length > 40){
	setcolor(document.sreg.billing_city, bgcol);
    alert("City length should between 1 and  40");
    document.sreg.billing_city.focus();
	document.sreg.billing_city.style.background="red";
    return false;

	}else if ((document.sreg.billing_pin.value).length != 6){
	setcolor(document.sreg.billing_pin, bgcol);
    alert("Please enter a Valid PIN Code.");
    document.sreg.billing_pin.focus();
	document.sreg.billing_pin.style.background="red";
    return false;
	
	}else if (chkpin(document.sreg.pin.value)){
	setcolor(document.sreg.billing_pin.value, bgcol);
	alert("Please enter a valid PIN Code.");
	document.sreg.billing_pin.focus();
	document.sreg.billing_pin.style.background="red";
	return false;
		
	}else if ((document.sreg.billing_country.value).length < 1 || (document.sreg.billing_country.value).length > 40){
	setcolor(document.sreg.billing_country, bgcol);
    alert("Country length should between 1 and  40.");
    document.sreg.billing_country.focus();
	document.sreg.billing_country.style.background="red";
    return false;

	}
	//9/28/2015
	else if ((document.sreg.bankname.value).length < 1  || (document.sreg.bankname.value).length > 40){
	setcolor(document.sreg.bankname, bgcol);
    alert("Please check your Bank Name details");
    document.sreg.bankname.focus();
	document.sreg.bankname.style.background="red";
    return false;

	}
	else if ((document.sreg.bankaccno.value).length < 1 || (document.sreg.bankaccno.value).length > 25){
    alert("Please check your Bank account no. details");
    document.sreg.bankaccno.focus();
	document.sreg.bankaccno.style.background="red";
    return false;

	}
	else if ((document.sreg.branch.value).length < 1 || (document.sreg.branch.value).length > 35){
    alert("Please check your Branch details");
    document.sreg.branch.focus();
	document.sreg.branch.style.background="red";
    return false;

	}
	else if ((document.sreg.branchcode.value).length < 1 || (document.sreg.branchcode.value).length > 15){
	setcolor(document.sreg.branchcode, bgcol);
    alert("Please check your Branch code details");
    document.sreg.branchcode.focus();
	document.sreg.branchcode.style.background="red";
    return false;

	}
	// 9/28/2015
	else if (document.sreg.comments.value.length > 250)
  {
    alert("Please enter at most 250 characters in the Comments field.");
    document.sreg.comments.focus();
	document.sreg.comments.style.background="red";
    return (false);
  }else if( document.getElementById('gtc').checked==false){
	alert("Please Agree General Terms And Condition Before proceding.");
	return false;
	}
	else if( document.getElementById('sstc').checked==false){
	alert("Please Agree Seller Specific Terms And Condition Before proceding.");
	return false;
	}
	else{
	preview();	
	return true;
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

function camf_p(){
		try{
			var pwd=document.sreg.password.value.toString();
			var cnfrmpwd=document.sreg.pass_confirm.value.toString();
			
			var encrypt = new JSEncrypt();
			
			
			var publicKey = document.getElementById("pubkey").value;
			encrypt.setPublicKey(publicKey);
			
			var encrypted = encrypt.encrypt(pwd);
			var encrypted1 = encrypt.encrypt(cnfrmpwd);
			
			document.sreg.password.value=encrypted;
			document.sreg.pass_confirm.value=encrypted1;
			
			return true;
		}catch(Err){
			alert("Error occured "+Err);
			return false;
		}
	}
	
	
function camf_p1(){
		try{
			var tan=document.sreg.tan_no.value.toString();
			//var gst=document.sreg.salesTRegNo.value.toString();
			var banker=document.sreg.bankname.value.toString();
			var acc=document.sreg.bankaccno.value.toString();
			var branch=document.sreg.branch.value.toString();
			var branch_code=document.sreg.branchcode.value.toString();
			
			var encrypt = new JSEncrypt();
			
			var publicKeyslr = document.getElementById("pubkey").value;
			encrypt.setPublicKey(publicKeyslr);
			
			var encryptedtan = encrypt.encrypt(tan);
			//var encryptedgst = encrypt.encrypt(gst);
			var encryptedbank = encrypt.encrypt(banker);
			var encryptedacc = encrypt.encrypt(acc);
			var encryptedbranch = encrypt.encrypt(branch);
			var encryptedbrnchcd = encrypt.encrypt(branch_code);
			
			document.sreg.tan_no.value=encryptedtan;
			//document.sreg.salesTRegNo.value=encryptedgst;
			document.sreg.bankname.value=encryptedbank;
			document.sreg.bankaccno.value=encryptedacc;
			document.sreg.branch.value=encryptedbranch;
			document.sreg.branchcode.value=encryptedbrnchcd;
			
			return true;
		}catch(Err){
			alert("Error occured "+Err);
			return false;
		}
	}




window.onload = setfocus



</script>









<body>
<div class="main_wrapper" >
<div class="banner"><img src="Mine 1.jpg" /></div>
<div class="menubg">
<div class="menubar">
  <div id="menu">
  <ul>
 	<li><a href="../index_new.jsp">Home</a>|</li>
	<li><a href="../Layouts/about_us.html">About Us</a>|</li>
	<li><a href="http://www.mstcindia.co.in/" >www.mstcindia.co.in</a>|</li>
	<li><a href="../Layouts/help.html">Help</a>|</li>
    <li><a href="http://www.mstcindia.co.in/MSTC_Static_Pages/frontpage/Contact_us_new.htm" target=_blank>Contact Us</a></li>
	</ul>
  </div>
  </div>
  </div>
  <form method="post" name='sreg' id='sreg'>
  <div class="middlebox">
	<div class="blnkspc"></div>
	<div class="middleboxtnc_">
		<CENTER><i><strong>
<font color='#FF0033' size='3'></font><strong></i></CENTER>
		<div id="LoadingImage" style="display:none;width:69px;height:89px;position:absolute;top:50%;left:50%;padding:2px;">
			<img src="images/ajax-loader.gif" />
		</div>
        <table width="90%" border="0" cellspacing="0" cellpadding="0" class="gridtable" align="center">
        	<tr>
            <td colspan="2"><div align="center" class="gtctxt"><strong>Seller's Registration Form</strong></div>
            <div class="startxt">(All field's marked with * are mandatory)</div></td>
            </tr>
             
            </tr>
        	<tr>
                <td>Company *: </td>
                <td><input type="text" size="41" name="company" id='company' maxlength="90" value="
" onkeyup="if(!checksize()){return;}" /></td>
              </tr>
			  
			  <tr>
                <td>Type of seller *: </td>
                <td>
					<select name="typeOfSeller" id="typeOfSeller" onchange="callFn(this.form)">
					
						<option value=""selected>Select Type</option>
						<option value="Central/State Government/UT/Local Authority" >Central/State Government/UT/Local Authority</option>
						<option value="Central PSU" >Central PSU</option>
						<option value="State PSU" >State PSU</option>
						<option value="Educational/Research Institutes" >Educational/Research Institutes</option>
						<option value="Others" >Others</option>
					</select>
				</td>
              </tr>
			 <tr>
            <td>Annual Turnover* :</td>
			<td>
			<select name="trnovr" id="trnovr" onchange="callFn(this.form)" style="width:163px;">
			
			  <option value="0" selected>Select</option>
			  <option value="below20lacs" >Below 20L</option>
			  <option value="above20lacs">Above 20L</option>
			</select>
			</td>
          </tr>
			 <tr >
			 
            <td>GST No.* :
					</td>
            <td><input type="text" size="20" onfocus="javascript:chk()" class="disblgsttxt" id="salesTRegNo1" maxlength="15" value='
' /> 
			<span><input type='button' id="verifybtn" class="disblbtn" onclick="verifyGST()" value='Verify GST'></span><br/>
			<span onMouseOver="document.getElementById('gstinimg').width='671';document.getElementById('gstinimg').height='240'" onMouseout="document.getElementById('gstinimg').width='199';document.getElementById('gstinimg').height='30'">specimen format:</span><img alt="GSTIN" src="images/gstin-structure.jpg" width="199" height="30" id="gstinimg" onMouseOver="this.width='671';this.height='240'" onMouseout="this.width='199';this.height='30'"/></td>
			
          </tr> 
		  
            <tr class="gstdisp pandisp">
            <td>PAN</td>
            <td class="gstdisp pandisp"><input type="text"   class="gstdsbl" size="20" name="pan_no" id="pan_no"  maxlength="11" value='
' />
			
			</td>
          </tr>
              <td class="gstdisp" colspan="2"><div align="center" class="gtctxt"><strong>Address</strong></div></td>
             <tr class="gstdisp">
                <td>Street* : </td>
                <td><input type="text"  class="gstdsbl" size="40" name="street" id="street" maxlength="60"  value='
' /></td>
              </tr>
            <tr class="gstdisp">
            <td>City*</td>
            <td><input type="text"  class="gstdsbl" size="20" name="city" id="city"  maxlength="40" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Pin*:</td>
            <td><input type="text"  class="gstdsbl" size="20" name="pin" id="pin"  maxlength="6" onkeypress="javascript:nochar();" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>State/Union Ter.*:</td>
            <td>
            <select size="1"  class="gstdsbl" name="stateindia" id='stateindia' onchange="Checkotherstate()">
              <option value='0' selected>======select state===========</option>
				
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
				
				
           
			
           <option value='10' >Other State</option></select>
			<input type="text"  class="gstdsbl" name="otherstate" id="T1" size="20" style="display : none" value='null' onkeypress="CheckKeys2()">
			
			
            </td>
          </tr>
		  <SCRIPT LANGUAGE="JavaScript">
	<!--

	function Checkotherstate()
	{
		//alert("here");
		if(document.getElementById('stateindia').value==10)
		{
			var myTextelem = document.getElementById('T1');
			myTextelem.style.display = 'inline';
			document.getElementById('T1').value="Other";
			//alert("If"+document.getElementById('T1').value);
			
		}
		else
		{
			var myTextelem = document.getElementById('T1');
			myTextelem.style.display = 'none';
			document.getElementById('T1').value=document.getElementById('stateindia').value;
			//alert("alse"+document.getElementById('T1').value);
		}
	}
	
	
	/*function checkother(){
	if(document.getElementById('Other').checked==true){
	document.getElementById('stateindia').disabled=true;
	document.getElementById('T1').disabled=false;
	document.getElementById('stateindia').value=document.getElementById('T1').value;

	}
	if(document.getElementById('Other').checked==false){
	document.getElementById('stateindia').disabled=false;
	document.getElementById('T1').value=document.getElementById('stateindia').value;
	document.getElementById('T1').disabled=true;
	}

		}*/
	//-->
	function Trim2(s) 
{
  // Remove leading spaces and carriage returns
  
  while ((s.substring(0,1) == ' ') || (s.substring(0,1) == '\n') || (s.substring(0,1) == '\r'))
  {
    s = s.substring(1,s.length);
  }

  // Remove trailing spaces and carriage returns

  while ((s.substring(s.length-1,s.length) == ' ') || (s.substring(s.length-1,s.length) == '\n') || (s.substring(s.length-1,s.length) == '\r'))
  {
    s = s.substring(0,s.length-1);
  }
  return s;
}

	function trackstate(){
//	if(document.getElementById('stateindia').disabled=false){
	val=document.getElementById('T1').value;
	if(val==0){
	alert("Please select a proper state !!!");
	document.getElementById('stateindia').focus();
	return false
	}
//	}
	/*
	if(document.getElementById('Other').checked==true){
	val=document.getElementById('T1').value
	val=Trim2(val);
	if(val.length==0){
	alert("Please Enter a proper state name !!!");
	document.getElementById('T1').focus();
	}

	}*/
		
	}

	function CheckKeys2()
{
 //alert(event.keyCode)
  if((event.keyCode < 65 && event.keyCode != 32))
  {
    event.keyCode=0;
  }
if((event.keyCode > 122))
  {
    event.keyCode=0;
  }
 
  
}

//Number only 
function CheckKeys()
{
  if((event.keyCode<46))
  {
    event.keyCode=0;
  }
  else
  {
       if((event.keyCode>57))
       {
              event.keyCode=0;
       }
       else
      {
         if((event.keyCode==47))
          {
              event.keyCode=0;
           }
      }
   }
}
	</SCRIPT>
		  
          <tr class="gstdisp">
            <td>Country*:</td>
            <td><input type="text"  class="gstdsbl" size="20" name="country" id="country"  maxlength="25" value='INDIA
' /></td>
          </tr>
          
          <tr class="gstdisp">
            <td>Location* :</td>
            <td><input type="text"  class="gstdsbl" size="30" name="location" id='location' maxlength="60" value='
' onfocus="trackstate()" onkeyup="if(!checksize()){return;}"  /></td>
          </tr>
          <tr class="gstdisp">
            <td>E Mail*:</td>
            <td><input type="text"  class="gstdsbl" size="20" name="e_mail" id="e_mail" maxlength="40" value='
'/></td>
          </tr>
          <tr class="gstdisp">
            <td>Phone*:</td>
            <td><input type="text" size="30" onkeypress="javascript:nochar();" name="phone" id="phone" maxlength="50" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Fax:</td>
            <td><input type="text"  class="gstdsbl" size="20" onkeypress="javascript:nochar();" name="fax"  id="fax" maxlength="35" value='
'/></td>
          </tr>
          
          <tr class="gstdisp">
            <td>Preferred User ID* :</td>
            <td><input type="text"  class="gstdsbl" size="20" name="user_id" id="user_id" onblur="if(!checksizeUserid()){return;}" maxlength="25" value='
'  />
            <a href="javascript:usercheck();">Click to check UserID</a>
            </td>
            
          </tr>
          
          <tr class="gstdisp">
            <td>Password* :</td>
            <td><input type="password"  class="gstdsbl" size="20" name="password" id="password" maxlength="15" onfocus="if(!checksizeUserid()){return;}" /><a href="javascript:PassPolicyCheck();">Click to check Password Policy</a></td>
          </tr>
          <tr class="gstdisp">
            <td>Confirm Password* :</td>
            <td><input type="password"  class="gstdsbl" size="20" name="pass_confirm" id="pass_confirm" maxlength="15" /></td>
          </tr>
          <tr class="gstdisp">
            <td>TAN *:</td>
            <td><input type="text"   class="gstdsbl" size="20" name="tan_no" id="tan_no" maxlength="10" onkeyup="testTANNoOnly(this.value,'tan_no');" onchange="testTANNoOnly(this.value,'tan_no');" onblur="if((this.value).length<10){alert('TAN Length must be 10 aplphanumeric characters.. existing-->'+(this.value).length);this.select();}" value='
'/></td>
          </tr>
		   
			
          <tr style="display:none">
              <td>Sales Tax Registered :</td>
                <td>
				
                <label>
                    <input type="radio" value="Y" name="isSalesTReg" checked />
                    Yes</label>
                  <label>
                    <input type="radio" name="isSalesTReg" value="N" />
                    No</label>
                </td>
          </tr>
          
          <tr class="gstdisp">
            <td>Payment in favour of* :</td>
            <td><input type="text"  class="gstdsbl" size="40" name="payment_favor" id="payment_favor" maxlength="60" value='
' /></td>
          </tr>
                   
         <td colspan="2"  class="gstdisp"><div align="center" class="gtctxt"><strong>Administrative Contact Address:</strong></div></td>
          <tr class="gstdisp">
            <td>Contact Person* :</td>
            <td><input type="text"  class="gstdsbl" name="admin_contact" id="admin_contact" size="40" maxlength="60" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Designation* :</td>
            <td><input type="text"  class="gstdsbl" name="admin_desg" id="admin_desg" size="20" maxlength="35" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Department* :</td>
            <td><input type="text"  class="gstdsbl" name="admin_dept" id="admin_dept" size="20" maxlength="35" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Street* :</td>
            <td><input type="text"  class="gstdsbl" name="admin_street" id="admin_street" size="20" maxlength="40" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>City* :</td>
            <td><input type="text"  class="gstdsbl" name="admin_city" id="admin_city"  size="20" maxlength="40" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Pin* :</td>
            <td><input type="text"  class="gstdsbl" onkeypress="javascript:nochar();" name="admin_pin" id="admin_pin" size="20" maxlength="6" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Country* :</td>
            <td><input type="text"  class="gstdsbl" name="admin_country" id="admin_country" size="20" maxlength="25" value='INDIA
' /></td>
          </tr>
          
          <td colspan="2"  class="gstdisp"><div align="center" class="gtctxt"><strong>Billing Contact Address</strong></div></td>
          
          <tr class="gstdisp">
            <td colspan="2"><input type="checkbox"  class="gstdsbl" name="check" value="ON" onClick="check_fill(document.sreg)">If Billing Contact same as Administrative Contact Check Here<br></td>
            
          </tr>
          <tr class="gstdisp">
            <td>Billing Contact* :</td>
            <td><input type="text"  class="gstdsbl" name="billing_contact" id="billing_contact" size="20" maxlength="35" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Designation* :</td>
            <td><input type="text"  class="gstdsbl" name="billing_desg" id="billing_desg" size="20" maxlength="40" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Department* :</td>
            <td><input type="text"  class="gstdsbl" name="billing_dept" id="billing_dept" size="20" maxlength="40" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Street* :</td>
            <td><input type="text"  class="gstdsbl" name="billing_street" id="billing_street" size="20" maxlength="40" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>City* :</td>
            <td><input type="text"  class="gstdsbl" name="billing_city" id="billing_city" size="20" maxlength="40" value='
' /></td>
          </tr>
          <tr class="gstdisp">
            <td>Pin* :</td>
            <td><input type="text"  class="gstdsbl" onkeypress="javascript:nochar();" name="billing_pin"  id="billing_pin"  size="20" maxlength="6" value='
'  /></td>
          </tr>
          <tr class="gstdisp">
            <td>Country* :</td>
            <td><input type="text"  class="gstdsbl" name="billing_country" id="billing_country" size="20" maxlength="40" value='INDIA
' /></td>
          </tr>
          <tr class="gstdisp">
		    <td colspan="2"><div align="center" class="gtctxt"><strong>Bank details</strong></div></td>
           
			</tr>
			<tr class="gstdisp">
            <td>BanK Name* :</td>
            <td><input type="text"  class="gstdsbl" name="bankname" id="bankname" size="20" maxlength="40" value='
' /></td>
          </tr>
		  <tr class="gstdisp">
            <td>Bank Account No* :</td>
            <td><input type="text"  class="gstdsbl" name="bankaccno" id="bankaccno" size="20" maxlength="25" value='
' /></td>
          </tr>
		  <tr class="gstdisp">
            <td>Branch* :</td>
            <td><input type="text"  class="gstdsbl" name="branch" id="branch" size="20" maxlength="35" value='
' /></td>
          </tr>
		  <tr class="gstdisp">
            <td>IFSC Code* :</td>
            <td><input type="text"  class="gstdsbl" name="branchcode" id="branchcode" size="20" maxlength="15" value='
' onkeydown="this.style.background='white'" onBlur="checkIFSCode('branchcode')" onkeyup="document.getElementById('info').style.display='none';"  /><span id='info' style="display:none"><span></td>
          </tr>

			 <td class="gstdisp">Comment :</td>
            <td class="gstdisp">
            <textarea rows="4"  class="gstdsbl" name="comments" id="comments" cols="36" >
</textarea>
            
            </td>
          </tr>
          <input type="hidden" name="RegAs" value="I">
		  <input type="hidden" name="salesTRegNo" id="salesTRegNo" value="">
		  <input type="hidden" name="timestmp" value="">
		  
 
		  <!-- <tr>
              <td>Register As* :</td>
                <td>
                
				<label>
                    <input type="radio" name="RegAs" value="I" checked
 />
                    Independent</label>
                  <label>
                    <input type="radio" ame="RegAs" value="C" disabled=true 
 />
                    Multi User</label>
                </td>
          </tr> -->
          
          <tr class="gstdisp">
          
            <td>Security Code: </td>
            <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><input type="text"  class="gstdsbl" name="capcha" id="capcha" />
                </br>Enter Image code here
                </td>
                <td>
					

					<canvas id='textCanvas'  width="100" height="12" style="display:none;"></canvas>
					<img id='img' src='' width="200" style="float: none" >	
					
					
				</td>
                <td><input type="button"  class="gstdsbl" value="Refresh Image" name="B1" id="B1" onclick="createCaptcha();" ></td>
              </tr>
            </table>
            </td>
          </tr>
		  
		   <tr class="gstdisp">
           <td colspan="2"><input type="checkbox"  class="gstdsbl" name="gtc" id="gtc" value="gtc" >I accept the General Terms 'n' Conditions of e-Auction.  <A href="../Layouts/registerncm.html" target="_blank">Click here</A> to see Terms 'n' Conditions.</td>
          </tr>
		  
		  <tr class="gstdisp">
           <td colspan="2"><input type="checkbox"  class="gstdsbl" name="sstc" id="sstc" value="sstc" >I accept the Seller Specific Terms 'n' Conditions of e-Auction.  <A href="../Layouts/selleracceptncm.html" target="_blank">Click here</A> to see Terms 'n' Conditions.</td>
          </tr>
          
       </table>
 </div>
  <table width="100%" border="0" cellspacing="0" cellpadding="10">
      <tr <tr class="gstdisp">
        <td width="100%" colspan="3" align="center"><input type="button"  class="gstdsbl" value="Preview" name="B3" onClick='if(removeCrossSiteScript(this.form)){if(checksize()&& checksizeUserid()){return validatePreview(this.form);}}'>
		<input type="button" value="Submit" name="S1" onClick='testTANNoOnly(this.form.tan_no.value,"tan_no");if(removeCrossSiteScript(this.form)){if(checksize()&& checksizeUserid()){return validate(this.form);}}'>
		<input type="Reset" value="Reset" name="S2">
		</td>
      </tr>
   </table>
   
  <input type="hidden" name="pubkey" id="pubkey" value="MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKu4y6e5RqugksmQBF7mgq5aKjqE1Kxv0N7iefNWA+hA
HEnVr2S1HFSESQ7yWJvrQy2YZoylmKs391ToHBPUN/ECAwEAAQ==
" />
   <script>
   $('.gstdisp').css('display','none');
   $('.gstdsbl').prop("disabled", true);
   
    
	$("#pan_no").on("input", function(){
	  var pantxt=$("#pan_no").val();
	  pantxt=pantxt.trim();
	  $('.pandisp').css('display','row'); 
	  if(pantxt!='' && eval(pantxt.length) > 0){
		$('.gstdisp').css('display','none');
		$('#verifypan').prop("disabled", false);	
	  }else{
		 $('.gstdisp').css('display','row');
		 $('#verifypan').prop("disabled", true);
	  }
	});
 function callFn(frm) {
	$('#salesTRegNo1').val("");	
	$('#salesTRegNo').val("");
	$('#timestmp').val("");
	frm.submit();
}

  
function reload(){
	var f=document.getElementById('img');
	//f.src = null;
	f.src = "imageverification.jsp?"+Math.random();
	//document.getElementById("img").contentWindow.reload();
	}
	function refreshimage(){
			var url="imageverification.jsp?"+Math.random();
			var returnval="";
			var ajaxObject=false;
			ajaxObject = CreateAjaxObject();
			//alert(ajaxObject);
			ajaxObject.open("POST",url,true);
			ajaxObject.send(null);
			ajaxObject.onreadystatechange=function(){
			if(ajaxObject.readyState==4)
			{
			returnval=ajaxObject.responseText;
			}
			}

			}

function checkIFSCode(elmntid){
var val=document.getElementById(elmntid).value
	if(eval(val.length)<11){
		
		alert("IFS Code Cannot be Less Than 11 Characters");
		document.getElementById(elmntid).style.background = 'Yellow';
		document.getElementById(elmntid).focus();
		return false;
	}
	if(eval(val.length) >11){
		
		//document.getElementById(elmntid).select();
		alert("IFS Code Cannot be Greater Than 11 Characters");
		//document.getElementById(elmntid).style.background = 'Yellow';
		document.getElementById(elmntid).focus();
		return false;
	}
	if(val.length==11){
		var first4Chars=val.substring(0,4);
		var fifthChar=val.substring(4,5);
		var last6Chars=val.substring(5);

		var alphaExp = /^[a-zA-Z]+$/;
		if(!first4Chars.match(alphaExp))
		{
			
			document.getElementById(elmntid).style.background = 'Yellow';
			document.getElementById(elmntid).focus();
			document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE FIRST 4 CHARS SHOULD BE ALPHABATES ONLY</font></b>';
			document.getElementById('info').style.display='block'
			return false;
		}


		if(!isNaN(fifthChar)){
			if(eval(fifthChar)!=0){
				
				document.getElementById(elmntid).style.background = 'Yellow';
				document.getElementById(elmntid).focus();
				document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE FIFTH CHAR SHOULD BE ZERO ONLY</font></b>';
				document.getElementById('info').style.display='block'
				return false;
			}
		}else{
			
			document.getElementById(elmntid).style.background = 'Yellow';
			document.getElementById(elmntid).focus();
			document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE FIFTH CHAR SHOULD BE ZERO ONLY</font></b>';
			document.getElementById('info').style.display='block'
			return false;
		}
	var letters = /^[0-9a-zA-Z]+$/;
	if(!last6Chars.match(letters))  
	{  
		
		document.getElementById(elmntid).style.background = 'Yellow';
		document.getElementById(elmntid).focus();
		document.getElementById('info').innerHTML='<b><font size=2 color=#FF0033>THE LAST SIX CHAR SHOULD BE ALPHA NUMERIC ONLY</font></b>';
		document.getElementById('info').style.display='block'
		return false;
	}
	}
return true;
}

function checksize(){
val1=(document.getElementById('company').value).toString()
val2=(document.getElementById('location').value).toString();
val3=eval(eval(val2.length)+eval(val1.length));
if(val3>150)
{
alert("Company Name and Location put together should not exceed 150 characters including , and space");
if(eval(val2.length)>eval(val1.length)){
alert("Presently Company Name is :"+val1.length+" characters and Location :"+val2.length+" characters. You may adjust your Location");
document.getElementById('location').focus();
document.getElementById('location').style.background="red";
return false;
}
if(eval(val1.length)>eval(val2.length)){
alert("Presently Company Name is :"+val1.length+" characters and Location :"+val2.length+" characters. You may adjust your Company Name");
document.getElementById('company').focus();
document.getElementById('company').style.background="red";

return false;
}
}
return true;
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
function checkWhiteSpaceInuserId(userid){
for(var k = 0; k < userid.length; k++){
var t=userid.charAt(k);
if(isWhitespace(t)){
return true;
}
}
}

function checksizeUserid(){ 
val_userid=(document.getElementById('user_id').value).toString();
val_userid=trim(val_userid);
val3=eval(val_userid.length);
if(val3<6 || checkWhiteSpaceInuserId(val_userid))
{
alert("Your Userid cannot have any space and must be atleast six characters long ");
document.getElementById('user_id').focus();
document.getElementById('user_id').style.background="red";
return false;
}
return true;
}

if(document.sreg.salesTRegNo.value=="TURNOVER BELOW 20L"){
	document.sreg.salesTRegNo.value="";
}

function verifyGST(){
	if($('#company').val()==''){
		alert('Please enter Company name.');
		$('#company').focus();
		return false;
	}
	if($('#typeOfSeller').val()==''){
		alert('Please select Type of Seller.');
		$('#typeOfSeller').focus();
		return false;
	}
	if($('#trnovr').val()=='0'){
		alert('Please select Annual Turnover.');
		$('#trnovr').focus();
		return false;
	}
	if($('#salesTRegNo1').val()==''){
		alert('Please enter GST No.');
		$('#salesTRegNo1').focus();
		return false;
	}
	
	$("#LoadingImage").show();
	var gstin="",compname="",resval=null,inputgstval=null,inputcompname=null,msg="",pan_no="";
	var verified=false;
	var ver_stat="",remarks="";
	inputgstval=$('#salesTRegNo1').val().trim();
	inputcompname=$('#company').val();
	$.ajax({
		type: "GET",
		url: "https://appyflow.in/api/verifyGST",
		contentType: "application/json; charset:utf8",
		data: { gstNo: $('#salesTRegNo1').val(), key_secret: 'n7TW6KtyPdVn6meyqXSdNJjGqsu1' },
		async: false,
		dataType: 'json',
		beforeSend: function(){
		// Show image container
			$("#LoadingImage").show();
	   },
		success: function (data) {
			//alert(JSON.stringify(data));
			var jsonres=JSON.stringify(data);
			resval=jsonres;
			if(resval.length>2500)
				resval=resval.substr(0,2450);
			var obj=JSON.parse(jsonres);
			var errorval=obj.error;
			if(errorval){
				msg="Invalid GST";
				$('#salesTRegNo1').focus();
				ver_stat="n";
				remarks="Invalid GST.";
				verified=true;
			}
			else{
				var taxinfo=obj.taxpayerInfo;
		//alert(taxinfo.gstin);
				gstin=taxinfo.gstin;
				
				compname=taxinfo.lgnm;
				pan_no=taxinfo.panNo;
				if($('#company').val().replace(/ /g,'').toLowerCase()==compname.replace(/ /g,'').toLowerCase()){	
					msg="GST Verified Successfully. This GST number belongs to "+compname;
					verified=true;
					ver_stat="y";
					remarks="GST verified successfully.";
				}
				else{
					verified=true;
					ver_stat="n";
					remarks="Company Name does not match with GST registered Legal Name.";
					msg="Company Name does not match with GST registered Legal Name.";
					$('#company').focus();
				}
			}
		},
		error: function (xmlHttpRequest, textStatus, errorThrown) {
			alert(xmlHttpRequest.responseText);
		}
		
	});
	if(verified){
		$.ajax({
			type: "POST",
			url: "ajaxGSTVerify.jsp",			
			data: {gstin:inputgstval, compname: inputcompname,jsonres:resval,ver_stat:ver_stat,remarks:remarks,pan_no:pan_no },
			
			success: function (responseText) {
				responseText=responseText.replace(/[\t\n]+/g,'');
				responseText=responseText.trim();
				if(responseText.indexOf("GSTVALIDATED")!=-1){
					
					$("#LoadingImage").css("display", "none");
					var strstrt=responseText.indexOf('GSTVALIDATED')+12;
					var timestmp = responseText.substr(strstrt, 26);
					timestmp=timestmp.trim();
					if(timestmp.length==25) timestmp=timestmp+"0";
					else if(timestmp.length==24) timestmp=timestmp+"00";
					else if(timestmp.length==23) timestmp=timestmp+"000";
					//alert(msg+"  "+timestmp);
					alert(msg);
					$('.gstdisp').css('display','');
					$('.gstdsbl').prop("disabled", false);
					$('#salesTRegNo1').prop("disabled", true);
					$('#company').prop("readonly", true);
					$('#verifybtn').prop("disabled", true);
					$('#verifybtn').css('display','none');
					$('[name="salesTRegNo"]').val(inputgstval);
					$('[name="timestmp"]').val(timestmp);
					$('[name="pan_no"]').val(pan_no);
					$('[name="pan_no"]').prop("readonly", true);
					
				}else if(responseText.indexOf("GSTNOTVALIDATED")!=-1){
					alert(msg);
					$('.gstdisp').css('display','none');
					$('.gstdsbl').prop("disabled", true);
				}
				else{
					$("#LoadingImage").css("display", "none");
					$('.gstdisp').css('display','none');
					$('.gstdsbl').prop("disabled", true);
					alert("GST Verification failed: "+responseText);
				}	
				
			},
			error: function (xmlHttpRequest, textStatus, errorThrown) {
				$("#LoadingImage").css("display", "none");
				$('.gstdisp').css('display','none');
				$('.gstdsbl').prop("disabled", true);
				alert(xmlHttpRequest.responseText);
			},
			complete: function () {
				$("#LoadingImage").hide();
			}
			
		});
	}
}
function verifyPAN(){
	var inputcompname=$('#company').val();
	if(inputcompname==''){
		alert('Please enter Company name.');
		$('#company').focus();
		return false;
	}
	if($('#typeOfSeller').val()==''){
		alert('Please select Type of Seller.');
		$('#typeOfSeller').focus();
		return false;
	}
	if($('#trnovr').val()=='0'){
		alert('Please select Annual Turnover.');
		$('#trnovr').focus();
		return false;
	}
	if(ValidatePAN(document.sreg.pan_no)== false){
		alert('Please enter valid PAN No.');
		$('#pan_no').focus();
		return false;
	}
	$.ajax({
		type: "GET",
		url: "ajaxPANVerify.jsp",
		contentType: "application/json; charset:utf8",
		data: { pan_no: $('#pan_no').val(), compname: inputcompname},
		async: false,
		success: function (responseText) {
			responseText=responseText.replace(/[\t\n]+/g,'');
			responseText=responseText.trim();
			var resArr=responseText.split("~");
			var resstat=resArr[0];
			var resmsg=resArr[1];
			$('.gstdisp').css('display','none');//Hide All
			if(resstat=='0'){
				//Valid PAN
				if(resmsg.indexOf("PANVALIDATED")!=-1){
					//Name Match
					var resmsgarr=resmsg.split("-Time:");
					var panStatus=resmsgarr[0].split('-')[1];
					var panvalidationTime=resmsgarr[1];

					var timelength=panvalidationTime.length;
					for(var i=1;i<=(26-timelength);i++){
						ppanvalidationTime=panvalidationTime+"0";
					}
					
					if(panStatus="E"){
						alert("PAN verified, Remarks:EXISTING AND VALID PAN");
					}else if(panStatus="EA"){
						alert("PAN verified, Remarks:Existing and Valid but event marked as 'Amalgamation' in ITD database");
					}else if(panStatus="EC"){
						alert("PAN verified, Remarks:Existing and Valid but event marked as 'Acquisition' in ITD database");
					}else if(panStatus="EM"){
						alert("PAN verified, Remarks:Existing and Valid but event marked as 'Merger' in ITD database");
					}else if(panStatus="EP"){
						alert("PAN verified, Remarks:Existing and Valid but event marked as 'Partition' in ITD database");
					}else if(panStatus="ES"){
						alert("PAN verified, Remarks:Existing and Valid but event marked as 'Split' in ITD database");
					}else if(panStatus="EU"){
						alert("PAN verified, Remarks:Existing and Valid but event marked as 'Under Liquidation' in ITD database");
					}
					//alert("PAN Successfully Verified.");
					$('[name="pan_no"]').prop("readonly", true);

					$('[name="pantimestmp"]').val(panvalidationTime);
					$('[name="company"]').prop("readonly", true);
					$("#pan_span").html('');
					$('.gstdisp').css('display','');//Show on success
					
				}else{
					//Name Mismatch
					alert("Input Company/seller name does not match with the registered name");
					$('.pandisp').css('display','');
				}
			}else{
				$('.pandisp').css('display','');
				if(resstat=='1' || resstat=='2' || resstat=='3'){
					alert("Invalid Data Error-"+resmsg);
				}
				else if(resstat=='6'){
					alert("PAN Verify Servce Error-"+resmsg);
				}
				else if(resstat=='7'){
					alert("PAN Verify Page Error-"+resmsg);
				}
				else if(resstat=='4'){
					if(resmsgresmsg="F"){
						alert("PAN not verified, Reason:PAN Marked as Fake");
					}else if(resmsgresmsg="X"){
						alert("PAN not verified, Reason:PAN Marked as Deactivated");
					}else if(resmsgresmsg="D"){
						alert("PAN not verified, Reason:PAN Deleted");
					} else if(resmsgresmsg="N"){
						alert("PAN not verified, Reason:Record (PAN) Not Found in ITD Database/Invalid PAN");
					}else if(resmsgresmsg="ED"){
						alert("PAN not verified, Reason:Existing and Valid but event marked as 'Death' in ITD database");
					} else if(resmsgresmsg="EI"){
						alert("PAN not verified, Reason:Existing and Valid but event marked as 'Dissolution' in ITD database");
					} else if(resmsgresmsg="EL"){
						alert("PAN not verified, Reason:Existing and Valid but event marked as 'Liquidated' in ITD database");
					} 
				}
				else{
					alert(resmsg);
				}
			}
		},
		error: function (xmlHttpRequest, textStatus, errorThrown) {
			alert(xmlHttpRequest.responseText);
		}
		
	});
}
</script>
<script src="../js/mstccaptcha.js"></script>
 </form>
 <div class="foot_below">
  	<div class="foot_txt">Copyright&copy;MSTC Limited</div>
  </div>
  </div>
</div>
</body>
</html>
