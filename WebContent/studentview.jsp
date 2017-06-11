<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-dojo-tags" prefix="sx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <sx:head/>
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
<script>

    function show_state()
    {
        
        dojo.event.topic.publish("show_state");
    }

</script>
<script type="text/javascript">
            function openWindow(url)
            {
                //var url = document.getElementById("msg").value;
                alert(url);
                window.open(url, "test" ,width="200", height="200");
            }

        </script>
</head>

<body>
    
 <table width="100%">
     <tr class="h" background="images/back.jpg">
         <td width="100%" align="center" colspan="3">   <span class="style1"></span>
         <%--<s:url action="course" id="IT">
             <s:param name="act"> IT</s:param>
         </s:url>
              <s:a href="%{IT}" theme="simple">IT Department</s:a>
              &nbsp;&nbsp;&nbsp;

              <s:url action="course" id="MGMT">
                  <s:param name="act">MGMT</s:param>
           </s:url>
                  <s:a href="%{MGMT}" theme="simple">Management Department</s:a>
                      &nbsp;&nbsp;&nbsp;
                      <s:url action="course" id="Ed">
                          <s:param name="act">Ed</s:param>
                   </s:url>
                          <s:a href="%{Ed}" theme="simple">Education Department</s:a>
         </span>--%>
         <s:form action="course">  <s:select name="act" list="#application.tbdept" headerKey="-1" headerValue="-Select Department-" theme="simple" cssClass="a"/>
                    <s:submit value="Search" theme="simple"/>
                </s:form>
          </td>
    </tr>
          <s:if test="act!=null">
        <s:form id="stuRec" action="studentview">

        <tr>
            <td align="right" width="33%">
                      
                   <s:select name="course" list="#application.course1" headerKey="-1" headerValue="-Select Class-" theme="simple" cssClass="a"  onchange="javascript:show_state();return false;"></s:select>
           </td>
           <td align="left" valign="top" style="padding-bottom: 20px;"width="33%">
                  <%--<div style="padding-left:260px; position:absolute;">--%>
        
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%-- <s:url id="st_url" action="sess"/>
                    <sx:div href="%{st_url}" listenTopics="show_state" formId="stuRec" showLoadingText="true">
                        		
                    </sx:div>--%>
                    <s:textfield name="SSession" theme="simple"/>
                                
           </td>
                    
                        <td align="center">
               <s:submit value="Submit" theme="simple" cssClass="a">

                </s:submit>
                        </td>
        </tr></s:form>
          </s:if></table>


    


    <table width="100%">
      <tr bordercolor="#FFFFFF" bgcolor="#FFFFFF" background="images/Fractal_Lumpy.jpg">
        <td width="6%" ><div align="center" class="style4">Id
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Name
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">Father's Name 
          </div>
        </td>
        <td width="10%"><div align="center" class="style4">Date Of Birth 
          </div>
        </td>
        <td width="20%" ><div align="center" class="style4">E-Mail
          </div>
        </td>
        <td width="10%" ><div align="center" class="style4">Contact
          </div>
        </td>
        <td width="6%" ><div align="center" class="style4">Message
          </div>
        </td>
        <td width="8%"><div align="center" class="style4">Delete
          </div>
        </td>
      </tr>
        <tr>
            <td> </td>
        </tr>
              <s:set name="rec" value="#appliation.stu"/>
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
              <td align="center"><s:property value="SId"/></td>
              <td align="center"><s:property value="SFirstname"/>&nbsp;<s:property value="SLastname"/></td>
              <td align="center"><s:property value="SFather"/></td>
              <td align="center"><s:property value="SDob"/></td>
              <td align="center"><s:property value="SEmail"/></td>
              <td align="center"><s:property value="SContact"/></td>
              <td align="center"><s:url action="sendmsg" id="msg"><s:param name="receiver"><s:property value="SId"></s:property></s:param>
                        <s:param name="sender"><s:property value="#session.user"></s:property></s:param></s:url>

                    <s:a href="javascript:openWindow('%{msg}');">Click to Message </s:a></td>
              <td align="center"><s:url action="deleteStu" id="delete">
                        <s:param name="SId"><s:property value="SId"></s:property></s:param>
                    </s:url>
                    <s:a href="%{delete}">Delete</s:a></td>
          </tr>
      <% c++;
      %>
      </s:iterator>
    
    </table>
    


</body>
</html>
