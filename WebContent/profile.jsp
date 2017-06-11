<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" --><!-- TemplateEndEditable -->
<link href="css/one.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #009966}
#Layer1 {
	position:absolute;
	width:200px;
	height:160px;
	z-index:1;
	left: 863px;
	top: 18px;
	clip: rect(16,1186,176,986);
}
#Layer2 {
	position:absolute;
	width:200px;
	height:159px;
	z-index:1;
	left: 601px;
	top: 16px;
}
-->
</style>
</head>

<body>
  
<form name="profile" action="" method="post">
  <table width="75%" height="313" align="left" cellpadding="15" cellspacing="10" class="a">
    <tr>
      <td width="250" height="20" class="h"><div align="center">Name</div></td>
      <td class="l" colspan="2"><s:property value="#application.stu.SFirstname"/>&nbsp;<s:property value="#application.stu.SLastname"/></td>
          
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Father's Name </div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SFather"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Mother's Name </div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SMother"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Email Address </div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SEmail"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Date Of Birth </div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SDob"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Contact</div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SContact"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Gender</div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SGender"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Session</div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SSession"/></td>
    </tr>
    
    <tr>
      <td width="250" height="20" class="h"><div align="center">Address</div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SAddress"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">City</div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SCity"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Nationality</div></td>
      <td colspan="2" class="l"><s:property value="#application.stu.SNationality"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Tenth</div></td>
      <td colspan="2" class="l"><td colspan="2" class="l"><s:property value="#application.stu.STenth"/></td></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Intermediate</div></td>
      <td colspan="2" class="l"><td colspan="2" class="l"><s:property value="#application.stu.STwelth"/></td></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Graduate</div></td>
      <td colspan="2" class="l"><td colspan="2" class="l"><s:property value="#application.stu.SGraduation"/></td></td>
    </tr>
    <tr class="h">
      <td width="50" height="20" colspan="3"><div align="center"></div></td>
    </tr>
  </table>
  <div id="Layer2">
    <table width="100%" height="160" border="1">
      <tr>
        
      </tr>
    </table>
  </div>
  <p class="a">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

</form>
</body>

</html>
