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
<s:form id="stu" action="editFaculty" method="post" enctype="multipart/form-data">
<table width="80%" align="center" class="a">
    <s:hidden name="FId"><s:param name="value"><s:property value="#session.user"/></s:param></s:hidden>
    <tr>
       
    <td width="50%" class="h"><div align="left">First Name</div></td>
    <td colspan="2" class="a"><s:textfield name="FFirstname" width="200%" theme="simple" cssClass="a">
            <s:param  name="value">
                <s:property value="#application.fact.FFirstname"/>
            </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Last Name</div></td>
    <td colspan="2" class="a"><s:textfield name="FLastname" width="200%" theme="simple" cssClass="a">
        <s:param  name="value">
                <s:property value="#application.fact.FLastname"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Date Of Birth </div></td>
    <td colspan="2" class="a"><sx:datetimepicker name="FDob" cssClass="a" /></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Father's Name </div></td>
    <td colspan="2" class="a"><s:textfield name="FFather" width="200%" theme="simple"  cssClass="a">
        <s:param  name="value">
                <s:property value="#application.fact.FFather"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Email Address </div></td>
    <td colspan="2" class="a"><s:textfield name="FEmail" width="200%" theme="simple" cssClass="a">
        <s:param  name="value">
                <s:property value="#application.fact.FEmail"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Contact</div></td>
    <td colspan="2" class="a"><s:textfield name="FContact" width="200%" cssClass="a" theme="simple">
        <s:param  name="value">
                <s:property value="#application.fact.FContact"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Gender</div></td>
    <td colspan="2" class="a">
      <s:radio name="FGender" list="{'Male','Female'}" cssClass="a" theme="simple">
      <s:param  name="value">
                <s:property value="#application.fact.FGender"/>
          </s:param>
      </s:radio></td>
  </tr>

   <tr>
      <td width="50%" class="h"><div align="left">Qualification</div></td>
    <td colspan="2" class="a"><s:textfield name="FQualification"  cssClass="a" theme="simple">
    <s:param  name="value">
                <s:property value="#application.fact.FQualification"/>
          </s:param>
        </s:textfield>  </td>
  </tr>

  <tr>
    <td width="50%" class="h"><div align="left">Address</div></td>
    <td colspan="2" class="a">
      <s:textarea name="FAddress" theme="simple" cssClass="a" >
      <s:param  name="value">
                <s:property value="#application.fact.FAddress"/>
          </s:param>
      </s:textarea></td>
  </tr>
  <tr class="h">
    <td width="50%"><div align="left">City</div></td>
    <td colspan="2"><s:textfield name="FCity" theme="simple">
        <s:param  name="value">
                <s:property value="#application.fact.FCity"/>
          </s:param>
        </s:textfield></td>
  </tr>
  <tr class="h">
    <td width="50%">State</td>
    <td colspan="2"><s:textfield name="FState" theme="simple">
        <s:param  name="value">
                <s:property value="#application.fact.FState"/>
          </s:param>
        </s:textfield>;</td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Nationality</div></td>
    <td colspan="2" class="a"> <s:textfield name="FNationity"  cssClass="a" theme="simple">
    <s:param  name="value">
                <s:property value="#application.stu.FNationality"/>
          </s:param>
        </s:textfield>    </td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Upload image </div></td>
    <td colspan="2" class="a">
      <s:file name="Image" value="Upload Image" theme="simple" cssClass="a" >
      <s:param  name="value">
                <s:property value="#application.stu.FImage"/>
          </s:param>
      </s:file></td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Designation</div></td>
    <td colspan="2" class="a"><s:textfield name="FDesignation"  cssClass="a" theme="simple">
    <s:param  name="value">
                <s:property value="#application.fact.FDesignation"/>
          </s:param>
        </s:textfield>  </td>
  </tr>
  <tr>
    <td width="50%" class="h"><div align="left">Experience</div></td>
    <td colspan="2" class="a"><s:textfield name="FExperience"  cssClass="a" theme="simple">
    <s:param  name="value">
                <s:property value="#application.fact.FExperience"/>
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
    <td width="50%" class="h"><div align="left"></div></td>
    <td colspan="2" class="a">&nbsp;</td>
  </tr>
</table>
</s:form>
</body>

</html>
