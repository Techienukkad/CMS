<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="/struts-dojo-tags" prefix="sx" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<link href="css/one.css" rel="stylesheet" type="text/css" />

<sx:head/>
</head>

<body>
<s:form id="stu" action="editStudent" method="post" enctype="multipart/form-data">
<table width="75%" class="a">
    <s:hidden name="SId"><s:param name="value"><s:property value="#session.user"/></s:param></s:hidden>
    <tr>
        <s:property value="#session.user"/>
    <td width="50%" class="h"><div align="center">First Name</div></td>
    <td colspan="2" class="a"><s:textfield name="SFirstname" width="200%" theme="simple" cssClass="a">
            <s:param  name="value">
                <s:property value="#application.stu.SFirstname"/>
            </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="center">Last Name</div></td>
    <td colspan="2" class="a"><s:textfield name="SLastname" width="200%" theme="simple" cssClass="a">
        <s:param  name="value">
                <s:property value="#application.stu.SLastname"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Date Of Birth </div></td>
    <td colspan="2" class="a"><sx:datetimepicker name="SDob" cssClass="a" /></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Father's Name </div></td>
    <td colspan="2" class="a"><s:textfield name="SFather" width="200%" theme="simple"  cssClass="a">
        <s:param  name="value">
                <s:property value="#application.stu.SFather"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Mother's Name </div></td>
    <td colspan="2" class="a"><s:textfield name="SMother" width="200%" cssClass="a" theme="simple">
        <s:param  name="value">
                <s:property value="#application.stu.SMother"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Email Address </div></td>
    <td colspan="2" class="a"><s:textfield name="SEmail" width="200%" theme="simple" cssClass="a">
        <s:param  name="value">
                <s:property value="#application.stu.SEmail"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Contact</div></td>
    <td colspan="2" class="a"><s:textfield name="SContact" width="200%" cssClass="a" theme="simple">
        <s:param  name="value">
                <s:property value="#application.stu.SContact"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Gender</div></td>
    <td colspan="2" class="a">
      <s:radio name="SGender" list="{'Male','Female'}" cssClass="a" theme="simple">
      <s:param  name="value">
                <s:property value="#application.stu.SGender"/>
          </s:param>
      </s:radio></td>
  </tr>

    
  <tr>
    <td class="h"><div align="center">Session</div></td>
    <td colspan="2" class="a"><s:property value="#application.stu.SSession"/></td>
  </tr>
  
  <tr>
    <td class="h"><div align="center">Address</div></td>
    <td colspan="2" class="a">
      <s:textarea name="SAddress" theme="simple" cssClass="a" >
      <s:param  name="value">
                <s:property value="#application.stu.SAdress"/>
          </s:param>
      </s:textarea></td>
  </tr>
  <tr class="h">
    <td><div align="center">City</div></td>
    <td colspan="2"><s:textfield name="SCity" theme="simple">
        <s:param  name="value">
                <s:property value="#application.stu.SCity"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td class="h"><div align="center">Nationality</div></td>
    <td colspan="2" class="a"> <s:textfield name="SNationity"  cssClass="a" theme="simple">
    <s:param  name="value">
                <s:property value="#application.stu.SNationality"/>
          </s:param>
        </s:textfield>    </td>
  </tr>
  <tr>
    <td class="h"><div align="center">Upload image </div></td>
    <td colspan="2" class="a">
      <s:file name="Image" value="Upload Image" theme="simple" cssClass="a" >
      <s:param  name="value">
                <s:property value="#application.stu.SImage"/>
          </s:param>
      </s:file></td>
  </tr>
  <tr>
    <td class="h"><div align="center">HighSchool</div></td>
    <td colspan="2" class="a"><s:textfield name="SHighschool"  cssClass="a" theme="simple">
    <s:param  name="value">
                <s:property value="#application.stu.SHighschool"/>
          </s:param>
        </s:textfield>  </td>
  </tr>
  <tr>
    <td class="h"><div align="center">Intermediate</div></td>
    <td colspan="2" class="a"><s:textfield name="STwelth"  cssClass="a" theme="simple">
    <s:param  name="value">
                <s:property value="#application.stu.STwelth"/>
          </s:param>
        </s:textfield>  </td>
  </tr>
  <tr>
    <td class="h"><div align="center">Graduation</div></td>
    <td colspan="2" class="a"><s:textfield name="SGraduation"  cssClass="a" theme="simple" >
    <s:param  name="value">
                <s:property value="#application.stu.SGraduation"/>
          </s:param>
        </s:textfield>  </td>
  </tr>
  <tr class="h">
    <td colspan="3">
      
        <div align="center">
  <s:submit value="Submit" cssStyle="size:25;font-family:Arial, Helvetica, sans-serif;background-color:#009933;" theme="simple"/>
  &nbsp;&nbsp;&nbsp;
  <s:reset value="Reset" cssStyle="size:25;font-family:Arial, Helvetica, sans-serif;background-color:#009933;" theme="simple"/>
        </div></td>
  </tr>
  <tr>
    <td class="h"><div align="center"></div></td>
    <td colspan="2" class="a">&nbsp;</td>
  </tr>
</table>
    </s:form>
</body>

</html>
