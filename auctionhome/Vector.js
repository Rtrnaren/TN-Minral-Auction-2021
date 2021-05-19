var dates=new Array();



function Vector(rootName)
{
  this.container    = new Array();
  this.type         = "Vector";
  this.rootName     = rootName;  // The root name of this vector (to faciliate XML generation)

}// END class Vector



new Vector();


Vector.prototype.addElement        = addElement;
Vector.prototype.addElements       = addElements;
Vector.prototype.removeElement   = removeElement;
Vector.prototype.removeElementAt   = removeElementAt;
Vector.prototype.removeAllElements = removeAllElements;
Vector.prototype.insertElementAt   = insertElementAt;
Vector.prototype.moveElement       = moveElement;
Vector.prototype.elementAt         = elementAt;
Vector.prototype.isEmpty           = isEmpty;
Vector.prototype.size              = size;
Vector.prototype.elements          = elements;
Vector.prototype.contains          = contains;
Vector.prototype.IndexOf          = IndexOf;
Vector.prototype.loginchk         = loginchk;

// XML-specific functions
Vector.prototype.setRootName   = setRootName;
Vector.prototype.getRootName   = getRootName;


function addElement(element, owner)
{
  var obj = element;
 
  if ( owner == null )   
      this.container[this.container.length] = obj;
  else{
      owner.container[owner.container.length] = obj;
  }
}// END addElement


function addElements(elements, owner)
{
  for(index in elements)
  {
    if ( owner == null )
        this.container[this.container.length] = elements[index];
    else
        owner.container[owner.container.length] = elements[index];
  }

}// END addElements


function insertElementAt(element, index, owner/*, attribute*/)
{
  if ( owner == null )
  {
      if( (index < 0) || (index > (this.container.length-1)) )
        return(false);
      else
      {
        var buffer = new Array();
        var shift  = 0;
    
        for(var i=0; i<this.container.length; i++)
        {
          if(i == index)
          {
            buffer[i] = element;
            shift = 1;
          }
          
          buffer[i+shift] = this.container[i];
        }
    
        this.container = buffer;
        return(true);
      }
  } // end of owner == null
 else
 { // owner is not null
     if( (index < 0) || (index > (owner.container.length-1)) )
        return(false);
     else
     {
        var buffer = new Array();
        var shift  = 0;
    
        for(var i=0; i<owner.container.length; i++)
        {
          if(i == index)
          {
            buffer[i] = element;
            shift = 1;
          }
          
          buffer[i+shift] = owner.container[i];
        }
    
        owner.container = buffer;
        return(true);      }
 }  // end of owner is not null

}// END insertElementAt


function elementAt(index, owner)
{
  if ( owner == null )
  {
    if( (index < 0) || (index > (this.container.length-1)) )
      return(null);
    
    return(this.container[index]);
  }
  else
  {
    if( (index < 0) || (index > (owner.container.length-1)) )
      return(null);
    
    return(owner.container[index]);
  }

}// END elementAt


function removeElementAt(index, owner)
{
  if ( owner == null )
  {
    if( (index < 0) || (index > (this.container.length-1)) )
      return(false);
    else
    {
      var buffer = new Array();
  
      for(var i=0; i<this.container.length; i++)
      {
        if(i == index)
          continue;
        
        buffer[buffer.length] = this.container[i];
      }
  
      this.container = buffer;
      return(true);
    
    }// END else
  } // end of owner= null
  else
  { //owner != null
     if( (index < 0) || (index > (owner.container.length-1)) )
      return(false);
    else
    {
      var buffer = new Array();
  
      for(var i=0; i<owner.container.length; i++)
      {
        if(i == index)
          continue;
        
        buffer[buffer.length] = owner.container[i];
      }  
      owner.container = buffer;
      return(true);    
    }// END else
  } // end of owner is not null
}// END removeElementAt


function removeElement(element, owner)
{
  if ( owner == null )
  {
      var buffer = new Array();
  
      for(var i=0; i<this.container.length; i++)
      {
        if(this.container[i] == element)
          continue;
        
        buffer[buffer.length] = this.container[i];
      }
  
      if (this.container.length == buffer.length) return(false);
      
      this.container = buffer;
      return(true);
    
  } // end of owner= null
  else
  { //owner != null
      var buffer = new Array();
  
      for(var i=0; i<owner.container.length; i++)
      {
        if(this.container[i] == element)
          continue;
        
        buffer[buffer.length] = owner.container[i];
      }  

      if (owner.container.length == buffer.length) return(false);

      owner.container = buffer;
      return(true);    

  } // end of owner is not null
}// END removeElementAt


function removeAllElements()
{ this.container = new Array(); }


function moveElement(from, to)
{
  // Make sure that the current location is not out of range...
  if( (from < 0) || (from > (this.container.length-1)) )
    return(false);
  
  // Make sure that the new location is not out of range...
  else if( (to < 0) || (to > (this.container.length-1)) )
  {
    alert("Vector error: Out of bounds error on destination");
    return(false);
  }
  
  else if(from == to)
    return(true);
    
  var obj = this.elementAt(from);
  
  if(obj != null)
  {
    this.removeElementAt(from);
    
    if(to == this.size())
      return(this.addElement(obj));
    else
      return(this.insertElementAt(obj, to));
  }
  else
    return(false);
  
}// END moveElement


function elements(owner)
{
  var buffer = new Array();

  if (owner == null) {
     for(var i=0; i<this.container.length; i++)
       buffer[buffer.length] = this.container[i];
  }
  else {
     for(var i=0; i < owner.container.length; i++)
       buffer[buffer.length] = owner.container[i];
  }

  return(buffer);
}
  

function contains(element)
{
  for(var i=0; i<this.container.length; i++)
  {
    if(this.container[i] == element)
      return(true);
  }

  return(false);
}
  
 
  function IndexOf(element)
{
  for(var i=0; i<this.container.length; i++)
  {
    if(this.container[i] == element)
      return i;
  }

  return -1;
}


function setRootName(name)
{
  var obj;
  
  this.rootName = name;
  
}// END setRootName

//2/13/2014
function detectBrowser(){
var N= navigator.appName;
var UA= navigator.userAgent;
var temp;
var browserVersion= UA.match(/(opera|chrome|safari|firefox|msie|Trident)\/?\s*(\.?\d+(\.\d+)*)/i);
if(browserVersion && (temp= UA.match(/version\/([\.\d]+)/i))!= null)
browserVersion[2]= temp[1];
browserVersion= browserVersion? [browserVersion[1], browserVersion[2]]: [N, navigator.appVersion,'-?'];
return browserVersion;
}  

	function loginchk( elemidip,elemiidhstnm) {
	//alert("You are Recomended to use IE6 and above..\n\nYour Browser Version is : "+navigator.appVersion+"\n\nYou must press \'YES\' in order to login..");

	try{
	var version=detectBrowser();
	var locator = new ActiveXObject ("WbemScripting.SWbemLocator");
	var service = locator.ConnectServer(".");
	var properties = service.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration");
	var e = new Enumerator (properties);
	var i=0; var bindedIPs='';
	document.getElementById(elemiidhstnm).value='';
	document.getElementById(elemidip).value='';
	for (;!e.atEnd();e.moveNext ())
	{
	var p = e.item ();
	if (p.DNSHostName!=null ){
	document.getElementById(elemiidhstnm).value=p.DNSHostName;
	}
	/*
	if (p.IPAddress(0)!=null ) {
	if(i>0){
	document.getElementById(elemidip).value=document.getElementById(elemidip).value+'#'+p.IPAddress(0);
	}else{
	document.getElementById(elemidip).value=p.IPAddress(0);
	}
	}
	*/
	if (p.IPAddress!=null) {
	try{
	for(k=0; k<10;k++){
	ip=p.IPAddress(k);
	if(ip.length <=25 && ip.length>0 ){
	bindedIPs=bindedIPs+ip+"#";
	}
	}
	}catch(error){}
	}
	i++;
	}
	document.getElementById(elemidip).value=bindedIPs;
	//alert(document.getElementById(elemidip).value);
	if(version[1]<7 && version[0]!='Trident'){
	alert("You're using a "+version[0]+" browser and Version is "+version[1]+".\nYou are Recomended to use IE7 and above..");
	}
	}catch(error){
		if(navigator.appName == "Microsoft Internet Explorer" || version[0] == 'Trident')
		{
		if(version[0]=='MSIE' && version[1]>=7)
		{
			alert("------------------------------------------------------------------------------------------------------\nYou're using a "+version[0]+" browser and Version is "+version[1]+".\n------------------------------------------------------------------------------------------------------\n\nYou should enable 'Active X' control on your browser.For doing the same  \n\n==================================================\n please open Internet Explorer... \n  \n Click on Tools  \n Click on Internet options   \n Click on Security   \n Click on Custom Level     \n\n\nIn the Security settings      \nenable all the points which deal with ‘Active X’      \n\tClick on O.K.        \n\n\nUse Pop-Up Blocker   \nClick on  Disable  \n\n\nGeneral     \nSettings       \n\t  Every visit to the Page  \n\nA message will appear stating that “you are changing security settings in this area” ?   \nAccept the same   \n\tClick on ‘O.K.’ \n\n\nLog out & close the browser for the changes to take effect \n\nClear Cookies & offline internet files regularly.\n******************************************************************************\nYou should allow the 'Active X' control installation by pressing \'YES\'");
		}
		else if(version[0] == 'Trident')
		{
			alert("------------------------------------------------------------------------------------------------------\nYou're using a MSIE browser and Version is above 10.\n------------------------------------------------------------------------------------------------------\n\nYou should enable 'Active X' control on your browser.For doing the same  \n\n==================================================\n please open Internet Explorer... \n  \n Click on Tools  \n Click on Internet options   \n Click on Security   \n Click on Custom Level     \n\n\nIn the Security settings      \nenable all the points which deal with ‘Active X’      \n\tClick on O.K.        \n\n\nUse Pop-Up Blocker   \nClick on  Disable  \n\n\nGeneral     \nSettings       \n\t  Every visit to the Page  \n\nA message will appear stating that “you are changing security settings in this area” ?   \nAccept the same   \n\tClick on ‘O.K.’ \n\n\nLog out & close the browser for the changes to take effect \n\nClear Cookies & offline internet files regularly.\n******************************************************************************\nYou should allow the 'Active X' control installation by pressing \'YES\'");
		}
		else
		{
			alert("------------------------------------------------------------------------------------------------------\nYou're using a "+version[0]+" browser and Version is "+version[1]+".\nYou are Recomended to use IE7 and above..\n------------------------------------------------------------------------------------------------------\n\nYou should enable 'Active X' control on your browser.For doing the same  \n\n==================================================\n please open Internet Explorer... \n  \n Click on Tools  \n Click on Internet options   \n Click on Security   \n Click on Custom Level     \n\n\nIn the Security settings      \nenable all the points which deal with ‘Active X’      \n\tClick on O.K.        \n\n\nUse Pop-Up Blocker   \nClick on  Disable  \n\n\nGeneral     \nSettings       \n\t  Every visit to the Page  \n\nA message will appear stating that “you are changing security settings in this area” ?   \nAccept the same   \n\tClick on ‘O.K.’ \n\n\nLog out & close the browser for the changes to take effect \n\nClear Cookies & offline internet files regularly.\n******************************************************************************\nYou should allow the 'Active X' control installation by pressing \'YES\'");
		}
		location.reload();
		}
		if(navigator.appName !="Microsoft Internet Explorer" && version[0]!='Trident' )
		{
		alert("You're using a "+version[0]+" browser and Version is "+version[1]+".\nYou are Recomended to use IE7 and above..");
		window.opener = top;
		window.close();
		}
		}
	}

function getRootName()
{ return(this.rootName); }


function size(owner)
{ 
  if ( owner == null )
    return(this.container.length); 
  else
    return(owner.container.length);
}


function isEmpty()
{ return( (this.container.length == 0) ); }



