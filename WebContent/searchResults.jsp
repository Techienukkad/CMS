<%-- 
    Document   : searchResults
    Created on : 7 May, 2011, 5:32:47 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function openWindow(url)
            {
                //var url = document.getElementById("msg").value;
                alert(url);
                window.open(url, "test" ,width="200", height="200");
            }

        </script>
        <link href="css/one.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
body {
	background-image: url(images/ch27.jpg);
}
.style4 {color: #003333; font-weight: bold; }
-->
</style></head>
    <body>
<% int c=0;
      String bg="";

%>
        <table width="100%" align="center" class="c">
            <tr class="h" background="images/Fractal_Lumpy_1.gif" style="color: #003333; font-weight: bold; ">
            <td width="25%"><div align="center">Name</div></td>
            <td width="15%"><div align="center">Department</div></td>
            <td width="15%"><div align="center">Qualification</div></td>
            <td width="15%"><div align="center">Email</div></td>
            
            <td width="15%"><div align="center"> Message </div></td>
          </tr>

          <s:set name="rec" value="#application.facrec"></s:set>
          <s:iterator value="rec">
               <%
            if(c % 2 == 0)
             bg=new String("#99cc66");
          else
             bg=new String("#99ffff");%>
              
              <tr bgcolor="<%=bg%>"><td width="25%" ><div align="center">
                          <s:property value="FFirstname"></s:property>&nbsp;<s:property value="FLastname"></s:property></div></td>
            <td width="15%"><div align="center"><s:property value="FDid"></s:property></div></td>
            <td width="15%"><div align="center"><s:property value="FQualification"></s:property></div></td>
            <td width="15%"><div align="center"><s:property value="FEmail"></s:property></div></td>
            
            <td width="15%"><div align="center">
                    <s:url action="sendmsg" id="msg"><s:param name="receiver"><s:property value="FId"></s:property></s:param>
                        <s:param name="sender"><s:property value="#session.user"></s:property></s:param></s:url>
                    
                    <s:a href="javascript:openWindow('%{msg}');">Click to Message </s:a></div></td>

              </tr>
<%c++;%>
          </s:iterator>
    </table>
        <h1>&nbsp;</h1>
    </body>
</html>
