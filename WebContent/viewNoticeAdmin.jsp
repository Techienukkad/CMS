
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice</title>
    </head>
    <body>
       		<table width="100%">
      <tr bordercolor="#FFFFFF" bgcolor="#FFFFFF" background="images/Fractal_Lumpy.jpg">
        <td width="6%" ><div align="center" class="style4">Id
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Subject
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Date
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">By
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
        <s:if test="#application.notice!=null">
        <s:set name="rec" value="#application.notice"/>
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
              <td align="center"><s:property value="nid"/></td>
              <td align="center"><s:property value="subject"/></td>
              <td align="center"><s:property value="issuedate"/></td>
              <td align="center"><s:property value="author"/></td>
              <td align="center">
              <s:url id="click" action="download">
                  <s:param name="fileName"><s:property value="notice"/></s:param>
        </s:url>
        <s:a href="%{click}">Download</s:a></td>
              <td align="center">
              <s:url id="delete" action="deleteNotice">
                  <s:param name="nid"><s:property value="nid"/></s:param>
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
