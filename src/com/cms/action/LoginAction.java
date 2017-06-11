
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Login;
import com.cms.action.Search;
import com.cms.action.FetchSession;
import com.cms.hib.Message;
import com.cms.hib.Recivemessage;
import com.cms.hib.Sender;
import com.cms.hib.TbAdmin;
import com.cms.hib.TbCourses;
import com.cms.hib.TbDepartment;
import com.cms.hib.TbFaculty;
import com.cms.hib.TbStudent;
import com.opensymphony.xwork2.ActionSupport;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;



/**

 *

 * @author saurabh

 */



public class LoginAction extends ActionSupport implements ApplicationAware,ServletRequestAware,SessionAware{

private String user;
private String password;
private String type;
private String oldPassword;
private String cPassword;
private String conPass;
private String DId;
private String message;
	private Long sendTime;
        private Integer MId;

    public Integer getMId() {
        return MId;
    }

    public void setMId(Integer MId) {
        this.MId = MId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getSendTime() {
        return sendTime;
    }

    public void setSendTime(Long sendTime) {
        this.sendTime = sendTime;
    }

    public String getDId() {
        return DId;
    }

    public void setDId(String DId) {
        this.DId = DId;
    }

    public String getConPass() {
        return conPass;
    }

    public void setConPass(String conPass) {
        this.conPass = conPass;
    }

    public String getcPassword() {
        return cPassword;
    }

    public void setcPassword(String cPassword) {
        this.cPassword = cPassword;
    }
private String newPassword;
Map application;
Map session;
Login l;
HttpServletRequest request;

    

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public LoginAction() {

    }



    public String execute() throws Exception
    {
       Login login=new Login();
       l = login.LoginCheck(getUser(),getPassword());
       this.l=(Login)l;
       if(l==null)
       {
           addActionError("User name or password not match");
        return INPUT;
       }
       application.put("login", l);
       request.setAttribute("login",this.l);
       session.put("user", this.l.getUser());
       if(l.getType().equalsIgnoreCase("admin"))
       {
       TbAdmin tb=new TbAdmin();
       application.put("tb", tb.adminPro(this.getUser()));
       //System.out.println(application.get("tb"));
       //request.setAttribute("tb", tbAdmin);
       }

 else if(l.getType().equalsIgnoreCase("department"))
       {

 TbDepartment tb=new TbDepartment();
 application.put("tb",tb.fetchup(user));
 TbCourses tc=new TbCourses();
        List course1 = tc.fetch(getUser());
        System.out.println(course1);
        application.put("co", course1);

 }

       else if(l.getType().equalsIgnoreCase("student"))
       {

TbStudent student = new TbStudent();
student=student.student(getUser());
System.out.println(student);
application.put("stu",student);


 }
       else if(l.getType().equalsIgnoreCase("faculty"))
       {

TbFaculty faculty = new TbFaculty();
faculty=faculty.fetcha(getUser());
System.out.println();
application.put("fact",faculty);


 }
TbDepartment tbdept =new TbDepartment();
TbFaculty f=new TbFaculty();
TbAdmin a=new TbAdmin();
TbStudent s=new  TbStudent();
        List li=tbdept.fetch();
        List st=s.all();
        List ft=f.fetchAll();
        List at=a.all();
        List l=new ArrayList();
        
        System.out.println(li+";;"+st+";;"+ft+";;;"+at);
        
        System.out.println(l);
HttpSession sess=request.getSession();
sess.setAttribute("a1", li);
sess.setAttribute("a2", st);
sess.setAttribute("a3", ft);
sess.setAttribute("a4", at);
        application.put("tbdept", li);

       

       return SUCCESS;

    }

     public String updatePass()
    {
        Login login =new Login();
        login=(Login)application.get("login");
        System.out.print(login.getPassword());
        if(oldPassword.equals(login.getPassword()))
        {
        

        System.out.print(newPassword);
        System.out.print(conPass);

        if(newPassword.equals(conPass)||newPassword==conPass)
        {
            login.setPassword(newPassword);
        login.updateRecord(login);
        }
 else
        {
          System.out.print("password not match");}
        }
 else
        {
 System.out.print("old not found");}
      return SUCCESS;
     }

     public String updateDPass()
    {
        Login login =new Login();
        login=(Login)application.get("login");
        System.out.print(login.getPassword());
        if(oldPassword.equals(login.getPassword()))
        {


        System.out.print(newPassword);
        System.out.print(conPass);

        if(newPassword.equals(conPass)||newPassword==conPass)
        {
            login.setPassword(newPassword);
        login.updateRecord(login);
        }
 else
        {
          System.out.print("password not match");}
        }
 else
        {
 System.out.print("old not found");}
      return SUCCESS;
     }

     public String updatesPass()
    {
        Login login =new Login();
        login=(Login)application.get("login");
        System.out.print(login.getPassword());
        if(oldPassword.equals(login.getPassword()))
        {


        System.out.print(newPassword);
        System.out.print(conPass);

        if(newPassword.equals(conPass)||newPassword==conPass)
        {
            login.setPassword(newPassword);
        login.updateRecord(login);
        }
 else
        {
          System.out.print("password not match");}
        }
 else
        {
 System.out.print("old not found");}
      return SUCCESS;
     }


      public String updatefPass()
    {
        Login login =new Login();
        login=(Login)application.get("login");
        System.out.print(login.getPassword());
        if(oldPassword.equals(login.getPassword()))
        {


        System.out.print(newPassword);
        System.out.print(conPass);

        if(newPassword.equals(conPass)||newPassword==conPass)
        {
            login.setPassword(newPassword);
        login.updateRecord(login);
        }
 else
        {
          System.out.print("password not match");}
        }
 else
        {
 System.out.print("old not found");}
      return SUCCESS;
     }



    public void setApplication(Map map) {
        application=map;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

    public void setSession(Map map) {
        this.session=map;
    }


    public String fetchDepartment()
    {
        


    return SUCCESS;
    }

}