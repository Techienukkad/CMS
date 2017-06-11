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

    function show_state()
    {
        //alert("hello");
        dojo.event.topic.publish("show_state1");
    }

</script>
<style>.style4 {color: #003333; font-weight: bold; }</style>



</head>

<body>
<s:form  action="addCourse">
<table width="49%" align="center">
  <tr>
    <td colspan="3"><div align="center"></div></td>
  </tr>
  <tr>
    <td width="43%" class="h"><div align="center">Department Id</div></td>
    <td width="4%">&nbsp;</td>
    <td width="53%"><s:textfield name="CDid" theme="simple" cssClass="a"  value="">
            <s:param name="value"> <s:property value="#session.user"/></s:param>


        </s:textfield>
    </td>
  </tr>
  <tr>
    <td class="h"><div align="center">Course Id </div></td>
    <td>&nbsp;</td>
    <td><s:textfield name="CId" theme="simple" cssClass="a" value="">
            <s:param name="value" ><s:property value="CId"/></s:param>

        </s:textfield></td>
  </tr>
    <tr>
    <td class="h"><div align="center">Course</div></td>
    <td>&nbsp;</td>
    <td><s:textfield name="CAbb" theme="simple" cssClass="a" value=""/></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Course Name </div></td>
    <td>&nbsp;</td>
    <td><s:textfield name="CName" theme="simple" cssClass="a" value=""/></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Start Date </div></td>
    <td>&nbsp;</td>
    <td><sx:datetimepicker name="CStartdate" >

                    </sx:datetimepicker></td>
  </tr>
  <tr>
    <td colspan="3" class="h"><div align="center"></div></td>
    </tr>
  <tr>
      <td colspan="3"><div align="center"><s:submit cssClass="a" value="Submit" theme="simple"/><s:reset cssClass="a" value="Reset" theme="simple"/></div></td>
  </tr>
</table>

      <s:set name="rec" value="#application.course"/>
<table width="100%" align="center">
    <tr><td><s:url action="uploadtt" id="Upload">
                          <s:param name="DId"><s:property value="#session.user"/></s:param>
                   </s:url>
                          <s:a href="%{Upload}" theme="simple" >Upload Time Table</s:a></td></tr>
  <tr class="h" background="images/Fractal_Lumpy.jpg">
    <th width="30%" background="images/Fractal_Lumpy.jpg" scope="col">Course Id </th>
    <th width="30%" background="images/Fractal_Lumpy.jpg" scope="col">Course</th>

    <th width="30%" background="images/Fractal_Lumpy.jpg" scope="col">Course Name</th>
    <th width="30%" background="images/Fractal_Lumpy.jpg" scope="col">Start Date</th>
<th width="30%" background="images/Fractal_Lumpy.jpg" scope="col">Update</th>
<th width="30%" background="images/Fractal_Lumpy.jpg" scope="col">Delete</th>

    </tr>
     <% int c=0;
      String bg="";

%>
  <s:iterator value="rec">
       <%
            if(c % 2 == 0)
             bg=new String("#99cc66");
          else
             bg=new String("#99ffff");%>
             <tr bgcolor="<%=bg%>" class="style4">
      <td><div align="center">
        <s:property value="CId"/>
      </div></td>
      <td><div align="center">
      <s:property value="CAbb"/>
    </div></td>
    <td><div align="center">
      <s:property value="CName"/>
    </div></td>
    <td><div align="center">
      <s:property value="CStartdate"/>
    </div></td>
        <td>
                      <s:url action="upCourse" id="Update">
                          <s:param name="act"><s:property value="CId"/></s:param>
                   </s:url>
                          <s:a href="%{Update}" theme="simple">Update</s:a></td>

      <td><s:url action="deleteCourse" id="Delete">
                          <s:param name="act"><s:property value="CId"/></s:param>
                   </s:url>
                          <s:a href="%{Delete}" theme="simple" >Delete</s:a></td>
      </tr>
  <%c++;%>
  </s:iterator>
  <tr bgcolor=<%=bg%>></tr>
</table>
<p>&nbsp;</p>
</s:form>
</body>

</html>
