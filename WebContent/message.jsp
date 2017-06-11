<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<link href="css/one.css" rel="stylesheet" type="text/css">
<body>

<from>
    <table width="100%" align="center" vspace="0" >
  <tr>
    <th background="images/back1_1.gif" scope="col"><a href="compose.jsp" target="message">Compose New</a></th>
    <th width="33%" background="images/back1_1.gif" scope="col"><a href="inbox.jsp" target="message">Inbox</a></th>
    
  </tr>
  <tr>
    <th height="500" colspan="3" background="images/ch27.jpg" scope="col"><iframe name="message" scrolling="auto" width="100%" height="650" src="inbox.jsp"/></th>
  </tr>
</table>
</body>
</html>
