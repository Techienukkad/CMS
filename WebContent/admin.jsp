<%-- 
    Document   : main
    Created on : 10 Apr, 2011, 11:14:32 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.lang.*,java.util.Timer"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
	background-image: url();
	background-repeat: repeat;
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
	height:160px;
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
	left: 923px;
	top: 351px;
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
	left: 463px;
	top: 171px;
	background-image: url(images/Fractal_Lumpy.gif);
	clip: rect(171,879,auto,463);
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
#Layer19 {
	position:absolute;
	width:1020px;
	height:28px;
	z-index:18;
	left: 151px;
	top: 856px;
	clip: rect(873,1172,auto,151);
}
#Layer20 {
	position:absolute;
	width:8px;
	height:698px;
	z-index:19;
	left: 332px;
	top: 162px;
	background-image: url(images/line.gif);
	clip: rect(165,332,auto,324);
}

#Layer22 {
	position:absolute;
	width:180px;
	height:276px;
	z-index:21;
	top: 343px;
	left: 130;
	clip: rect(343,327,auto,130);
}
#Layer21 {
	position:absolute;
	width:180px;
	height:140px;
	z-index:21;
	top: 163px;
	left: 130;
	background-image: url(images/Fractal_Lumpy.gif);
	clip: rect(343,327,auto,130);
}
#Layer23 {
	position:absolute;
	width:180px;
	height:512px;
	z-index:22;
	left: 158px;
	top: 165px;
	clip: rect(165,325,auto,158);
}
#Layer24 {
	position:absolute;
	width:830px;
	height:695px;
	z-index:23;
	left: 350px;
	top: 162px;
	clip: rect(169,1145,auto,350);
	background-color: #FFFFFF;
}
-->
    </style>
    <script type="text/JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
</head>
<body>
<div id="Layer23">
      <div align="center"><script language="JavaScript" type="text/javascript" src="images/admin.js"></script>
    <script language="JavaScript" type="text/javascript" src="images/xaramenu.js"></script></div>
</div>
    
    <div align="center">
	  <table width="79%" height="880" align="center">
      <tr background="images/back.gif">
        <td height="93" background="images/Fractal_Lumpy.gif" align="center"><img src="images/BVM_College.png" width="40%" height="93" hspace="0" vspace="0" align="middle"></td>      
        </tr>
      <tr background="images/back.jpg">
          <td height="48" align="center" bordercolor="#003300"><div align="right">Welcome&nbsp;<s:property value="#session.user"></s:property>!!<s:if test="#session.user!=null"><s:url id="logout" action="logout"/><s:a href="%{logout}">Logout</s:a></s:if></div ></td>
      </tr>
      <tr>
        <td height="750" background="images/ch27.jpg"><div id="Layer19">
              <table width="56%" align="center">
                <tr>
                  <td width="24%"><div align="center"><a href="http://www.rgpv.ac.in" target="_parent">RGPV</a></div></td>
                  <td width="2%" bgcolor="#003333"><div align="center"></div></td>
                  <td width="24%"><div align="center"><a href="http://www.jiwaji.edu" target="_parent">Jiwaji University</a></div></td>
                  <td width="2%" bgcolor="#003333"><div align="center"></div></td>
                  <td width="24%"><div align="center"><a href="http://www.bvmgroup.org" target="_parent">BVM Groups</a></div></td>
                  <td width="2%" bgcolor="#003333"><div align="center"></div></td>
                  <td width="24%"><div align="center"><a href="http://www.ugc.co.in" target="_parent"> UGC</a></div></td>
                </tr>
              </table>
        </div>
          <p>
            <script language="JavaScript" type="text/javascript" src="images/xaramenu.js"></script>
          </p>
          <div id="Layer24"><iframe name="my" width="100%" height="695" src="adpro.jsp" scrolling="auto" style="background:url(images/ch27.jpg)"></iframe></div>
          <p>&nbsp;</p>
          <p><br>
            <br>
          </p></td>
      </tr>
      </table>
</div>
</body>
</html>
