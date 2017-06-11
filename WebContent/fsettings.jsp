<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<link href="css/one.css" rel="stylesheet" type="text/css" />
</head>

<body>
<s:form action="updatefPass">
<table width="75%" cellpadding="5" class="a" style="vertical-align:middle;border:0px;">
   <tr>
    <td width="50%" class="h"><div align="center">Old Password</div></td>
    <td width="50%">
        <s:password name="oldPassword" theme="simple"></s:password>>    </td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="center">New Password</div></td>
    <td width="50%">
        <s:password name="newPassword" theme="simple"></s:password>>   </td>
  </tr>

  <tr>
    <td width="50%" class="h"><div align="center">Confirm Password </div></td>
    <td width="50%"><s:password name="conPass" theme="simple"/></td>
  </tr>



  <tr class="h">
    <td colspan="3"><div align="center">

            <s:submit value="Submit" cssStyle="size:25;font-family:Arial, Helvetica, sans-serif;background-color:#009933;" theme="simple"/>

            <s:reset value="Reset" cssStyle="size:25;font-family:Arial, Helvetica, sans-serif;background-color:#009933;"  theme="simple"/>
        </div></td>
  </tr>
  <tr>
    <td class="h">&nbsp;</td>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</s:form>
</body>

</html>
