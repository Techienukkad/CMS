<%-- 
    Document   : forgetPassword
    Created on : 26 May, 2011, 1:42:52 PM
    Author     : saurabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <sx:head></sx:head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

       <script>
            var xmlHttp;
            function getQues(str)
            {

                xmlHttp=GetXmlHttpObject();
                if (xmlHttp==null)
                {
                    alert("Your browser does not support AJAX!");
                    return;
                }
                var url="ques";
                url=url+"?user="+str;
                //alert(url);
                //url=url+"&sid="+Math.random();
                xmlHttp.onreadystatechange=RegionChanged;
                xmlHttp.open("POST",url,true);
                xmlHttp.send(null);
            }

            function RegionChanged()
            {
                if (xmlHttp.readyState==4)
                {
                    document.getElementById("que").innerHTML=xmlHttp.responseText;
                }
            }

            function GetXmlHttpObject()
            {
                var xmlHttp=null;
                try
                {
                    // Firefox, Opera 8.0+, Safari
                    xmlHttp=new XMLHttpRequest();
                }
                catch (e)
                {
                    // Internet Explorer
                    try
                    {
                        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                    }
                    catch (e)
                    {
                        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                }
                return xmlHttp;
            }
        </script>

        
    </head>
    <body>
        <s:form id="forget" action="checkAnswer">
    <table width="80%" align="center">
      <tr>
        <th width="43%" scope="col"><div align="right"></div></th>
        <th width="3%" scope="col">&nbsp;</th>
        <th width="54%" scope="col">&nbsp;</th>
      </tr>
      <tr>
          <s:actionerror />
        <td><div align="right">Enter your ID </div></td>
        <td>&nbsp;</td>
        <td><s:textfield name="user" theme="simple" cssClass="a" onblur="return getQues(this.value);" value="" />
        </td>
      </tr>
      <tr>
        <td><div align="right">Security Question </div></td>
        <td>&nbsp;</td>
        <td><div id="que" ><s:actionerror/></div></td>
      </tr>
      <tr>
        <td><div align="right">Answer</div></td>
        <td>&nbsp;</td>
        <td><s:textfield name="myanswer" theme="simple"/></td>
      </tr>
      <tr>
        <td><div align="right"></div></td>
        <td><s:actionerror/></td>
        <td><s:submit value="Submit" theme="simple"/></td>
      </tr>
    </table>
        </s:form>
    </body>
</html>
