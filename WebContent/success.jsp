<%-- 
    Document   : success.jsp
    Created on : 29 Apr, 2011, 3:25:09 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>

        <s:if test="#request.login.type=='admin'"><jsp:forward page="admin.jsp"/></s:if>
        <s:if test="#request.login.type=='student'"><jsp:forward page="student.jsp"/></s:if>
        <s:if test="#request.login.type=='department'"><jsp:forward page="departmentHome.jsp"/></s:if>
        <s:if test="#request.login.type=='faculty'"><jsp:forward page="facultyhome.jsp"/></s:if>
        
        
    </body>
</html>
