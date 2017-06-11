<%-- 
    Document   : main
    Created on : 10 Apr, 2011, 11:14:32 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.lang.*,java.util.Timer"%>
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
	height:66px;
	z-index:15;
	left: 453px;
	top: 169px;
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
	width:1018px;
	height:564px;
	z-index:16;
	left: 152px;
	top: 238px;
	clip: rect(238,1170,564,152);
}
#Layer19 {
	position:absolute;
	width:1020px;
	height:28px;
	z-index:18;
	left: 151px;
	top: 873px;
	clip: rect(873,1172,auto,151);
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
    
	<div align="center">
	  <table width="79%" height="880" align="center">
      <tr bordercolor="#003300">
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
        <td height="750" background="images/ch27.jpg"><div id="Layer16" align="center"><img src="images/dept.gif" width="340" height="63" align="middle"></div>
            <div id="Layer18">
              <table width="100%" height="564">
                <tr>
                  <td width="20%" height="327"><p>
                      <a href="it.jsp" target="frame"><img src="images/it.gif"></a><br><br><a href="manage.jsp" target="frame"><img src="images/management.gif"></a><br><br><a href="bed.jsp" target="frame"><img src="images/bed.gif"></a></p></td>
                  <td width="80%"><iframe src="dept.html" name="frame" width="100%" height="540" scrolling="auto"></iframe> </td>
                </tr>
              </table>
          </div>
		  <div id="Layer19">
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
        </div></td>
        </tr>
      </table>
    </div>
</body>
</html>
