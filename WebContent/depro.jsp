<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Untitled Document</title>

<link href="css/one.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style2 {font-size: 16px}
.style4 {font-size: 16px; font-family: "monotype Corsiva"; }
.style6 {font-size: 18px; font-family: "monotype Corsiva"; }
-->
</style>
</head>

<body>
    <s:set name="aec" value="#application.tb"></s:set>

    <%--<s:action name="admin" executeResult="true"/>--%>
    <table width="75%" height="238">
  <tr>
    <td width="40%" class="h"><div align="center">Department Id </div></td>
    <td width="6%" class="c style2"></td>
    <td width="54%" class="style6"><s:property value="#application.tb.DId"></s:property>
    <div align="left"></div>    </td>
  </tr>
  <tr>
    <td class="h"><div align="center">Department Name </div></td>
    <td class="c"><span class="style2">

    </span></td>
    <td class="style6"><span class="style6">
      <s:property value="#application.tb.DName"></s:property>
    </span></td>
  </tr>
  <tr>
    <td height="30" class="h"><div align="center">Head Of Department </div></td>
    <td><span class="style2">

    </span></td>
    <td class="style6"><span class="style6">
      <s:property value="#application.tb.DHod"></s:property>
    </span></td>
  </tr>
</table>

<table width="75%" height="281">
  <tr>
    <td height="40" class="a"><h1 align="center">Messages</h1></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" height="187">
      <tr>
        <td width="100%">&nbsp;</td>
        </tr>
      <tr>
        <td width="100%">&nbsp;</td>
        </tr>
      <tr>
        <td width="100%">&nbsp;</td>
        </tr>
    </table>
      <div align="right"><a href="message.jsp" target="_self" class="a style1">more</a></div></td>
  </tr>
    <tr><td colspan="2" align="center"></td>
</table>
<p class="a">&nbsp;</p>


</body>

</html>
