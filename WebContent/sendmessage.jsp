<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags"  prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title></title>
    <style type="text/css">
<!--
body {
	background-image: url(images/ch27.jpg);
}
-->
</style></head>
    <body>
        <s:form action="MyMessage">
            <s:textarea name="msg"/>
            <s:text name="sender"></s:text>
            <s:text name="receiver"></s:text>
        <s:submit value="Send"/>
        </s:form>
    </body>
</html>
