<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="/struts-dojo-tags" prefix="sx" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <sx:head></sx:head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/one.css" rel="stylesheet" type="text/css" />
<title>Untitled Document</title>
<script>

   

</script>
<style>.style4 {color: #003333; font-weight: bold; }</style>



</head>

<body>
<s:form id="updept" action="updept">
<table width="49%" align="center">
  <tr>
    <td colspan="3"><div align="center"></div></td>
  </tr>
  <tr>
    <td width="43%" class="h"><div align="center" >Department Id</div></td>
    <td width="4%">&nbsp;</td>
    <td width="53%">
        <s:textfield name="DId" theme="simple" cssClass="a">
            <s:param name="value"><s:property value="#request.dept.DId"></s:property></s:param>


        </s:textfield>
           


        </td>
                    
  </tr>
  <tr>
    <td class="h"><div align="center">Department Name</div></td>
    <td>&nbsp;</td>
    <td>
        <s:textfield name="DName" theme="simple" cssClass="a">
            <s:param name="value"><s:property value="#request.dept.DName"></s:property></s:param>


        </s:textfield></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Head Of Department</div></td>
    <td>&nbsp;</td>
    <td><s:textfield name="DHod" theme="simple" cssClass="a" value="">
             <s:param name="value"><s:property value="#request.dept.DHod"></s:property></s:param>

        </s:textfield></td>
  </tr>
  <tr>
    <td colspan="3" class="h"><div align="center"></div></td>
    </tr>
  <tr>
      <td colspan="3"><div align="center"><s:submit cssClass="a" value="Update" theme="simple"/><s:reset cssClass="a" value="Reset" theme="simple"/></div></td>
  </tr>
</table>

      
</s:form>
</body>

</html>
