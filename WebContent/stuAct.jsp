<%-- 
    Document   : stuAct.jsp
    Created on : 17 May, 2011, 3:28:35 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <sx:head/>
        <script>

    function show_state()
    {
        dojo.event.topic.publish("show_stat1");
    }

</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/one.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <s:form id="stu" action="addStudent">
    <table width="80%" align="center">
      <tr background="images/Fractal_Lumpy.jpg">
        <th colspan="3" class="h" scope="col"><div align="center"></div></th>
      </tr>
      <tr>
        <td width="47%" class="h"><div align="center">Student ID </div></td>
        <td width="5%">&nbsp;</td>
        <td width="48%"><s:textfield name="SId" theme="simple" cssClass="a"/></td>
      </tr>
      <tr>
        <td class="h"><div align="center">Course</div></td>
        <td>&nbsp;</td>
        <td><s:select name="SClass" list="#application.co" headerKey="-1" headerValue="-Select Class-" theme="simple" cssClass="a"  onchange="javascript:show_state();return false;"></s:select></td>
      </tr>
      <tr>
        <td class="h"><div align="center">Session</div></td>
        <td>&nbsp;</td>
        <td><s:url id="st_url" action="my"/>
                    <sx:div href="%{st_url}" listenTopics="show_stat1" formId="stu" showLoadingText="true">
                        <s:select name="SSession" list="{''}" headerKey="-1" headerValue="-Select Session-" theme="simple" cssClass="a"></s:select>
                    </sx:div></td>
      </tr>
      <tr>
        <td class="h"><div align="center">First Name </div></td>
        <td>&nbsp;</td>
        <td><s:textfield name="SFirstname" theme="simple" cssClass="a" value=""/></td>
      </tr>
      <tr>
        <td class="h"><div align="center">Last Name </div></td>
        <td>&nbsp;</td>
        <td><s:textfield name="SLastname" theme="simple" cssClass="a" value=""/></td>
      </tr>
      <tr>
        <td class="h"><div align="center">Father's Name </div></td>
        <td>&nbsp;</td>
        <td><s:textfield name="SFather" theme="simple" cssClass="a" value=""/></td>
      </tr>
      <tr class="h">
          <td colspan="3" align="center"><div align="center">
            <s:submit value="Submit" theme="simple" cssClass="a"/>
            <s:reset value="Reset" theme="simple" cssClass="a"/>
          </div></td>
      </tr>
      <tr class="h">
        <td colspan="3" align="center"><div align="center"></div></td>
      </tr>
      <tr>
        <td colspan="3" background="images/Fractal_Lumpy.jpg" class="h"><div align="center"></div></td>
      </tr>
    </table>
        </s:form>
    </body>
</html>
