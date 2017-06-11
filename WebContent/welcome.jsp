<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>CMS Welcome Page</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:385px;
	height:25px;
	z-index:1;
	left: 928px;
	top: 10px;
	clip: rect(10,1200,auto,928);
}
body {
	background-color: #006600;
}
-->
</style>
</head>

<body>

    <s:form action="Enter">
<div align="right">
  <div id="Layer1"></div>
  <s:submit value="Enter"/>
</s:form>
  <jsp:include page="Untitled-2.html" flush="true"/>
</div>
</body>
</html>
