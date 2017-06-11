<%@page import="com.cms.hib.TbDepartment"%>
<%@page import="com.cms.hib.TbFaculty"%>
<%@page import="com.cms.hib.TbStudent"%>
<%@page import="com.cms.hib.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% 
   List ta = (List)session.getAttribute("a4");
   List ts = (List)session.getAttribute("a2");
   List tf = (List)session.getAttribute("a3");
   List td = (List)session.getAttribute("a1");
    List test=new ArrayList();
    StringBuffer buff =new StringBuffer();
  Iterator i=ta.iterator();
      while(i.hasNext())
      {
          if(buff.length() > 0)
        {
            buff.append(',');
        }
          TbAdmin t=(TbAdmin)i.next();
          buff.append('"').append(t.myString()).append('"');
          
      }

 i=ts.iterator();
      while(i.hasNext())
      {
          if(buff.length() > 0)
        {
            buff.append(',');
        }
          TbStudent t=(TbStudent)i.next();
          buff.append('"').append(t.myString()).append('"');
          
      }
 i=tf.iterator();
 while(i.hasNext())
      {
          if(buff.length() > 0)
        {
            buff.append(',');
        }
          TbFaculty t=(TbFaculty)i.next();
          buff.append('"').append(t.myString()).append('"');
          
      }
 

 i=td.iterator();
 while(i.hasNext())
      {
          if(buff.length() > 0)
        {
            buff.append(',');
        }
          TbDepartment t=(TbDepartment)i.next();
          buff.append('"').append(t.toString()).append('"');
      }

    
%>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head>
    <sx:head/>
    <link href="wick.css" rel="stylesheet" type="text/css"></link>
    
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
    <s:form action="mymessage">
    <script type="text/javascript">
           //collection = ['popuplate','me','Hello@gmail.com','Hello@gmail.com','Hello@gmail.com','data'];
           collection = [<%=buff.toString()%>];

                function check()
                {
                    alert(collection);
                }
        </script>
           <script type="text/javascript" language="JavaScript" src="wick.js"></script>
<table width="80%" align="center">
  <tr>
    <th width="50%" scope="col"><div align="right">To:</div></th>
    <th width="3%" scope="col">&nbsp;</th>
    <th width="47%" scope="col"><label>
      <div align="left">
          <s:textarea name="receivers" cssClass="wickEnabled" theme="simple" rows="3" cols="80"/>
        </div>
    </label></th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="right"><strong>Write Here: </strong></div></td>
    <td>&nbsp;</td>
    <td><label>
            <s:textarea name="message" cols="80" rows="10" theme="simple"></s:textarea>
    </label></td>
  </tr>
  <tr>
    <td>
            <s:submit value="Send" theme="simple"/><s:reset value="Reset" theme="simple"/>
        
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</s:form>
</body>
</html>
