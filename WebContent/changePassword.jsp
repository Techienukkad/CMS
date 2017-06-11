<%-- 
    Document   : checkAnswer
    Created on : 27 May, 2011, 2:12:01 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="upNewPass">
    <table width="60%" align="center">
        <s:hidden name="user"><s:param name="value"><s:property value="user"/></s:param></s:hidden>
        <s:property value="user"/>
      <tr>
        <td width="43%" scope="col"><div align="right">New Password </div></td>
        <td width="4%" scope="col">&nbsp;</td>
        <td width="53%" scope="col"><s:textfield name="newPassword" theme="simple"/></td>
      </tr>
      <tr>
        <td><div align="right">Confirm Password </div></td>
        <td>&nbsp;</td>
        <td><s:textfield name="confirmPassword" theme="simple"/></td>
      </tr>
      <tr>
        <td><div align="right"></div></td>
        <td>&nbsp;</td>
        <td><s:actionerror /></td>
      </tr>
      <tr>
        <td><div align="right"></div></td>
        <td>&nbsp;</td>
        <td><s:submit value="Submit" theme="simple"/><s:reset value="Reset" theme="simple"/></td>
      </tr>
    </table>
    </s:form>
    </body>
</html>
