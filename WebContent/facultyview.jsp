<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/one.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-image: url(images/ch27.jpg);
}
a:link {
	color: #006666;
}
a:visited {
	color: #CC0000;
}
a:hover {
	color: #FF0000;
}
.style4 {color: #003333; font-weight: bold; }
-->
</style></head>

<body>
    
    <table width="100%" align="center">
        <tr bordercolor="#003333" class="h" background="images/back_1.jpg">
            <td width="100%" align="center">
                <%--
                     <s:url action="search" id="IT">
                        <s:param name="act">IT</s:param>
              </s:url>
                <s:a href="%{IT}" target="searchf">IT Department</s:a>&nbsp;&nbsp;&nbsp;

                <s:url action="search" id="MGMT">
                        <s:param name="act">MGMT</s:param>
              </s:url>
                        <s:a href="%{MGMT}" target="searchf">Management Department</s:a>&nbsp;&nbsp;&nbsp;
                <s:url action="search" id="Ed">
                        <s:param name="act">Ed</s:param>
              </s:url>
                <s:a href="%{Ed}" target="searchf">Education Department</s:a>--%>
                <s:form action="search">  <s:select name="act" list="#application.tbdept" headerKey="-1" headerValue="-Select Department-" theme="simple" cssClass="a"/>
                    <s:submit value="Search" theme="simple"/>
                </s:form>
          </td>
      </tr>
      <tr bordercolor="#003300">
        <td><iframe name="searchf" src="" width="100%" scrolling="auto" height="600"></iframe></td>
      </tr>
</table>
</body>
</html>
