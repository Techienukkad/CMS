<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="/struts-tags"  prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Untitled Document</title>
<link href="css/one.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
#Layer1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 508px;
	top: 47px;
}
.style4 {color: #003333; font-weight: bold; }


-->
</style>
</head>
    <body>
     <%-- <table width="100%">
     <tr class="h" background="images/back.jpg">
         <td width="100%" align="center" colspan="3">   <span class="style1">
         <s:url action="fetch" id="Add">
             <s:param name="Id"></s:param>
         </s:url>
              <s:a href="%{Add}" theme="simple" target="frame">Add Department</s:a>
              &nbsp;&nbsp;&nbsp;

         <s:url action="fetch" id="Update">
                  <s:param name="act"></s:param>
         </s:url>
                  <s:a href="%{Update}" theme="simple" target="frame">Update Department</s:a>
                      &nbsp;&nbsp;&nbsp;
                      <s:url action="fetch" id="Delete">
                          <s:param name="act"></s:param>
                   </s:url>
                          <s:a href="%{Delete}" theme="simple" target="frame">Delete Department</s:a>
         </span></td>
    </tr>
 
  
  <tr>
      <td colspan="3"><iframe width="100%" height="750" scrolling="auto" name="frame"></iframe></td>
  </tr>
</table>--%>
     <s:action name="fetch"  executeResult="true"/>
</body>
</html>
