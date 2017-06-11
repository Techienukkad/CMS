<%-- 
    Document   : setquestion
    Created on : 9 Jun, 2011, 10:25:59 PM
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
    </head><s:form action="upques">
    <body>
        <table align="center">
            
            <tr><td align="center">Enter Security Question </td><td align="center"><s:textfield name="ques" theme="simple" value=""/></td>
            <tr><td align="center">Answer </td><td align="center"><s:textfield name="answer" theme="simple" value=""/></td>
                    <s:hidden name="Id"></s:hidden>
                <tr><td align="center" colspan="2"><s:submit value="Submit" theme="simple"/><s:reset value="Reset" theme="simple"/></td>
        </table>
    </s:form>
    </body>
</html>
