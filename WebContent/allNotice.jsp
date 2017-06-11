<%--
    Document   : main
    Created on : 10 Apr, 2011, 11:14:32 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.lang.*,java.util.Timer"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
        <link href="css/one.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
body {
	background-image: url(../../../../Desktop/copy.jpg);
	background-repeat: repeat;
	background-color: #FFFFFF;
}
#Layer1 {
	position:absolute;
	width:1037px;
	height:772px;
	z-index:1;
	left: 142px;
	top: 114px;
	overflow: hidden;
}
a {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 16px;
	color: #CC0000;
}
a:visited {
	color: #310000;
}
a:hover {
	color: #006666;
}
#head
{
background:url(images/back.gif):repeat;

}
#Layer2 {
table-layout:fixed;
	position:absolute;
	width:312px;
	height:47px;
	z-index:1;
	left: 861px;
	overflow: hidden;
}
#Layer3 {
	position:absolute;
	width:305px;
	height:62px;
	z-index:1;
	left: 880px;
	top: 17px;
	visibility: inherit;
	clip: rect(17,auto,auto,880);
}
#Layer4 {
	position:absolute;
	width:416px;
	height:302;
	z-index:0;
	left: 480px;
	top: 299px;
	clip: rect(300,869,auto,467);
	visibility: inherit;
}
#Layer5 {
	position:absolute;
	width:305px;
	height:291px;
	z-index:7;
	left: 149px;
	top: 163px;
	clip: rect(163,auto,auto,149);
}
#Layer7 {
	position:absolute;
	width:305px;
	height:291px;
	z-index:7;
	left: 151px;
	top: 487px;
	clip: rect(487,auto,auto,151);
}
.style1 {font-size: 16px}
#Layer6 {
	position:absolute;
	width:305px;
	height:291px;
	z-index:0;
	left: 152px;
	top: 498px;
	clip: rect(498,305,auto,152);
	background-image: url(images/Fractal_Lumpy.gif);
}
#Layer8 {
	position:absolute;
	width:305px;
	height:291px;
	z-index:8;
	left: 151px;
	top: 476px;
	clip: rect(169,auto,auto,149);
}
#Layer9 {
	position:absolute;
	width:162px;
	height:129px;
	z-index:9;
	left: 152px;
	top: 829px;
}
#Layer10 {
	position:absolute;
	width:257px;
	height:205px;
	z-index:10;
	left: 923px;
	top: 166px;
	clip: rect(165,auto,auto,919);
}
#Layer11 {
	position:absolute;
	width:260px;
	height:214px;
	z-index:11;
	left: 927px;
	top: 475px;
	background-image: url(images/Fractal_Lumpy.gif);
}
#Layer12 {
	position:absolute;
	width:13px;
	height:614px;
	z-index:12;
	left: 462px;
	top: 165px;
	background-image: url(images/line.gif);
	clip: rect(166,475,auto,462);
}
#Layer13 {
	position:absolute;
	width:13px;
	height:614px;
	z-index:12;
	left: 901px;
	top: 166;
	background-image: url(images/line.gif);
	clip: rect(166,914,auto,901);
}
#Layer14 {
	position:absolute;
	width:13px;
	height:614px;
	z-index:13;
	background-image: url(images/line.gif);
	left: 902px;
	top: 165px;
	clip: rect(165,915,auto,902);
}
#Layer15 {
	position:absolute;
	width:487px;
	height:59px;
	z-index:14;
	left: 446px;
	top: 833px;
}
#Layer16 {
	position:absolute;
	width:416px;
	height:115px;
	z-index:15;
	left: 481px;
	top: 172px;
	background-image: url(images/Fractal_Lumpy.gif);
}
#Layer17 {
	position:absolute;
	width:13px;
	height:614px;
	z-index:16;
	background-image: url(images/line.gif);
	left: 461px;
	top: 166px;
	clip: rect(166,474,614,461);
}
#Layer18 {
	position:absolute;
	height:3px;
	z-index:17;
	left: 150px;
	top: 870px;
	background-image: url(images/my.gif);
	clip: rect(869,1170,auto,150);
	width: 1034px;
}
#Layer19 {
	position:absolute;
	width:1020px;
	height:28px;
	z-index:18;
	left: 151px;
	top: 881px;
}
-->
    </style>
    <script type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

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

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
    </head>
    <body onLoad="MM_preloadImages('images/logo.jpg','images/logo.gif','images/ugc-logo.gif')">

	<div align="center">
	  <table width="79%" height="880" align="center">
      <tr background="images/back.gif">
        <td height="93" background="images/Fractal_Lumpy.gif" align="center"><img src="images/BVM_College.png" width="40%" height="93" hspace="0" vspace="0" align="middle">
        <div id="Layer3" align="right">
          <script language="JavaScript" type="text/javascript" src="images/xaramenu.js"></script>
        <script language="JavaScript" type="text/javascript" src="images/login.js"></script></div></td>
        </tr>
      <tr background="images/back.jpg">
        <td height="48" align="center" bordercolor="#003300"><script language="JavaScript" type="text/javascript" src="images/xaramenu.js"></script>

<script language="JavaScript" type="text/javascript" src="images/links.js"></script></td>
      </tr>
      <tr>
        <td height="750" background="images/ch27.jpg"><p>&nbsp;</p>
				<table width="100%">
      <tr bordercolor="#FFFFFF" bgcolor="#FFFFFF" background="images/Fractal_Lumpy.jpg">
        <td width="6%" ><div align="center" class="style4">Id
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Subject
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Date
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">By
          </div>
        </td>
        <td width="10%"><div align="center" class="style4">Download
          </div>
        </td>
        
        <tr>
            <td> </td>
        </tr>
        <s:if test="#application.notice!=null">
        <s:set name="rec" value="#application.notice"/>
      <% int c=0;
      String bg="";

%>
      <s:iterator value="rec">

            <%
            if(c % 2 == 0)
             bg=new String("#99cc66");
          else
             bg=new String("#99ffff");%>

          <tr  bgcolor="<%=bg%>">
              <td align="center"><s:property value="nid"/></td>
              <td align="center"><s:property value="subject"/></td>
              <td align="center"><s:property value="issuedate"/></td>
              <td align="center"><s:property value="author"/></td>
              <td align="center">
              <s:url id="click" action="download">
                  <s:param name="fileName"><s:property value="notice"/></s:param>
        </s:url>
        <s:a href="%{click}">Download</s:a></td>
          </tr>
      <% c++;
      %>
      </s:iterator>

    </table>
    </s:if>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <center>
            <div id="Layer19">
              <table width="60%">
                <tr>
                  <td width="24%"><div align="center"><a href="http://www.rgpv.ac.in" target="_parent">RGPV</a></div></td>
                  <td width="2%">&nbsp;</td>
                  <td width="24%"><div align="center"><a href="http://www.jiwaji.edu" target="_parent">Jiwaji University</a></div></td>
                  <td width="2%">&nbsp;</td>
                  <td width="24%"><div align="center"><a href="http://www.bvmgroup.org" target="_parent">BVM Groups</a></div></td>
                  <td width="2%">&nbsp;</td>
                  <td width="24%"><div align="center"><a href="http://www.ugc.co.in" target="_parent">UGC</a></div></td>
                </tr>
              </table>
            </div>
            <div id="Layer18"></div>
          </center>



        </td>
        </tr>
      </table>
    </div>
</body>
</html>
