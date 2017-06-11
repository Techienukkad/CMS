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
<s:form action="updateFaculty">
<table width="49%" align="center">
  <tr>
    <td colspan="3"><div align="center"></div></td>
  </tr>
  <tr>
    <td width="43%" class="h"><div align="center" >Department Id</div></td>
    <td width="4%">&nbsp;</td>
    <td width="53%">
        <s:textfield name="FDid" theme="simple" cssClass="a">
            <s:param name="value"><s:property value="#request.f.FDid"></s:property></s:param>


        </s:textfield>

       VAlue is  <s:property value="#request.f.FDid"/>

        </td>

  </tr>
  <tr>
    <td class="h"><div align="center">First Name</div></td>
    <td>&nbsp;</td>
    <td>
        <s:textfield name="FFirstname" theme="simple" cssClass="a">
            <s:param name="value"><s:property value="#request.f.FFirstname"></s:property></s:param>


        </s:textfield></td>
  </tr>
       <s:hidden name="FId"><s:param name="value"><s:property value="#request.f.FId"/></s:param></s:hidden>
  <tr>
    <td class="h"><div align="center">Last Name</div></td>
    <td>&nbsp;</td>
    <td><s:textfield name="FLastname" theme="simple" cssClass="a" value="">
             <s:param name="value"><s:property value="#request.f.FLastname"></s:property></s:param>

        </s:textfield></td>
  </tr>
    <tr>
    <td class="h"><div align="center">Designation</div></td>
    <td>&nbsp;</td>
    <td><s:textfield name="FDesignation" theme="simple" cssClass="a" value="">
             <s:param name="value"><s:property value="#request.f.FDesignation"></s:property></s:param>

        </s:textfield></td>
  </tr>
    <tr>
    <td class="h"><div align="center">Join Date</div></td>
    <td>&nbsp;</td>
    <td><sx:datetimepicker name="FJoindate" >
             <s:param name="value"><s:property value="#request.f.FJoindate"></s:property></s:param>

        </sx:datetimepicker></td>
    </tr><s:text name="#request.f.FId"/>
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
