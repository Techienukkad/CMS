<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <sx:head/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/one.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <s:form action="uploadTime" enctype="multipart/form-data">
<table width="80%" align="center">
  <tr background="images/back.gif" >
      <th colspan="2" background="images/back.gif" scope="col"></th>
  </tr>
  <s:hidden name="DId"></s:hidden>
  <s:text name="DId"/>
  <tr>
    <td width="50%"><div align="center">Time Table</div></td>
    <td width="50%"><s:file name="ttfile" theme="simple"/></td>
  </tr>
  <tr>
      <td width="50%"><div align="center"></div></td>
    <td width="50%">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <s:submit value="Submit" theme="simple"/>
    </div></td>
  </tr>
    <tr>
    <td colspan="2"><div align="center">
            <a href="viewtimedept.jsp">View TimeTable</a>
    </div></td>
  </tr>
  <tr>
      <td colspan="2" background="images/back.gif"><div align="center"><img src="images/back.gif" width="100%" height="46" /></div></td>
  </tr>
</table>
</s:form>
</body>
</html>
