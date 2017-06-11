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
    <table width="70%" height="313" align="center" cellpadding="15" cellspacing="10" class="a">
    <tr>
      <td width="250" height="20" class="h"><div align="center">Name</div></td>
      <td class="l" colspan="2"><s:property value="#application.fact.FFirstname"/>&nbsp;<s:property value="#application.fact.FLastname"/>
          </td>
    </tr>
    
    <tr>
      <td width="250" height="20" class="h"><div align="center">Gender</div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FGender"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Date Of Birth </div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FDob"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Department </div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FDid"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Designation</div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FDesignation"/></td>
    </tr>
    
    
    <tr>
      <td width="250" height="20" class="h"><div align="center">Address</div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FAddress"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">City</div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FCity"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">State</div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FState"/></td>
    </tr>
   
    <tr>
      <td width="250" height="20" class="h"><div align="center">Email Address </div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FEmail"/></td>
    </tr>
    
    <tr>
      <td width="250" height="20" class="h"><div align="center">Join Date </div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FJoindate"/></td>
    </tr>
    
    
    
    
    <tr>
      <td width="250" height="20" class="h"><div align="center">Qualification</div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FQualification"/></td>
    </tr>
    <tr>
      <td width="250" height="20" class="h"><div align="center">Experience(years)</div></td>
      <td colspan="2" class="l"><s:property value="#application.fact.FExperience"/></td>
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