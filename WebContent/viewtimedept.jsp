
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timetable</title>
    </head>
    <body>
       		<table width="100%">
      <tr bordercolor="#FFFFFF" bgcolor="#FFFFFF" background="images/Fractal_Lumpy.jpg">
        <td width="6%" ><div align="center" class="style4">Id
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Department
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Timetable
          </div>
        </td>
        
         
        
        <td width="10%"><div align="center" class="style4">Download
          </div>
        </td>
        <td width="10%"><div align="center" class="style4">Delete
          </div>
        </td>

        <tr>
            <td> </td>
        </tr>
        <s:if test="#application.tbdept!=null">
        <s:set name="rec" value="#application.tbdept"/>
      <% int c=0;
      String bg="";

%>
      <s:iterator value="rec">

            <%
            if(c % 2 == 0)
             bg=new String("#99cc66");
          else
             bg=new String("#99ffff");%>

          <tr  bgcolor="<%=bg%>">
              <td align="center"><s:property value="DId"/></td>
              <td align="center"><s:property value="DName"/></td>
              <td align="center"><s:property value="DTimetable"/></td>

              <td align="center">
              <s:url id="click" action="download">
                  <s:param name="fileName"><s:property value="DTimetable"/></s:param>
        </s:url>
        <s:a href="%{click}">Download</s:a></td>
              <td align="center">
              <s:url id="delete" action="deleteTimetable">
                  <s:param name="DId"><s:property value="DId"/></s:param>
        </s:url>
        <s:a href="%{delete}">Delete</s:a></td>
          </tr>
      <% c++;
      %>
      </s:iterator>

    </table>
    </s:if>


    </body>
</html>
