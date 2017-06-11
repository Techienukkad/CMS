
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Auto;
import com.cms.hib.Chpass;
import com.cms.hib.Login;
import com.cms.hib.TbCourses;
import com.cms.hib.TbStudent;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;



/**

 *

 * @author saurabh

 */



public class Student extends ActionSupport implements SessionAware,ApplicationAware{



    public Student() {

    }

Map session,application;
private String seslist;

    public String getSeslist() {
        return seslist;
    }

    public void setSeslist(String seslist) {
        this.seslist = seslist;
    }
private String Id;
private String val;
private String coVal;
private String SId;
     private String SFirstname;
     private String SLastname;
     private String SFather;
     private String SMother;
     private String SSession;
     private String SClass;
     private String SGender;
     private Date SDob;
     private String SAddress;
     private String SCity;
     private String SState;
     private String SEmail;

    public String getSAddress() {
        return SAddress;
    }

    public void setSAddress(String SAddress) {
        this.SAddress = SAddress;
    }

    public String getSCity() {
        return SCity;
    }

    public void setSCity(String SCity) {
        this.SCity = SCity;
    }

    public String getSClass() {
        return SClass;
    }

    public void setSClass(String SClass) {
        this.SClass = SClass;
    }

    public String getSContact() {
        return SContact;
    }

    public void setSContact(String SContact) {
        this.SContact = SContact;
    }

    public Date getSDob() {
        return SDob;
    }

    public void setSDob(Date SDob) {
        this.SDob = SDob;
    }

    public String getSEmail() {
        return SEmail;
    }

    public void setSEmail(String SEmail) {
        this.SEmail = SEmail;
    }

    public String getSFather() {
        return SFather;
    }

    public void setSFather(String SFather) {
        this.SFather = SFather;
    }

    public String getSFirstname() {
        return SFirstname;
    }

    public void setSFirstname(String SFirstname) {
        this.SFirstname = SFirstname;
    }

    public String getSGender() {
        return SGender;
    }

    public void setSGender(String SGender) {
        this.SGender = SGender;
    }

    public String getSGraduation() {
        return SGraduation;
    }

    public void setSGraduation(String SGraduation) {
        this.SGraduation = SGraduation;
    }

    public String getSId() {
        return SId;
    }

    public void setSId(String SId) {
        this.SId = SId;
    }

    public String getSImage() {
        return SImage;
    }

    public void setSImage(String SImage) {
        this.SImage = SImage;
    }

    public String getSLastname() {
        return SLastname;
    }

    public void setSLastname(String SLastname) {
        this.SLastname = SLastname;
    }

    public String getSMother() {
        return SMother;
    }

    public void setSMother(String SMother) {
        this.SMother = SMother;
    }

    public String getSSession() {
        return SSession;
    }

    public void setSSession(String SSession) {
        this.SSession = SSession;
    }

    public String getSState() {
        return SState;
    }

    public void setSState(String SState) {
        this.SState = SState;
    }

    public String getSTenth() {
        return STenth;
    }

    public void setSTenth(String STenth) {
        this.STenth = STenth;
    }

    public String getSTwelth() {
        return STwelth;
    }

    public void setSTwelth(String STwelth) {
        this.STwelth = STwelth;
    }
     private String SContact;
     private String SImage;
     private String STenth;
     private String STwelth;
     private String SGraduation;
     private String course;

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }


    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getCoVal() {
        return coVal;
    }

    public void setCoVal(String coVal) {
        this.coVal = coVal;
    }

    public String getStu() {
        return stu;
    }

    public void setStu(String stu) {
        this.stu = stu;
    }

    public String getVal() {
        return val;
    }

    public void setVal(String val) {
        this.val = val;
    }
private String stu;
public String sKey()
    {
Auto a=new Auto();
        a=a.fetch();
        String s=session.get("user").toString()+"STU"+(a.getStu()+1);
        this.setSId(s);

       // System.out.println(FId);
        //System.out.print(a.getId());
        session.put("skey", a);
    TbCourses co=new  TbCourses();
        List li=co.fetch(session.get("user").toString());
application.put("co", li);
        return SUCCESS;

}

public String addStudent()
    {
    TbStudent student=new TbStudent(SId, SFirstname, SLastname, SFather, SMother, SSession, SClass, SGender, SDob, SAddress, SCity, SState, SEmail, SContact, SImage, STenth, STwelth, SGraduation);
    student.insertData(student);
Login l=new Login(SId, SId, "student");
l.insertData(l);
Chpass c=new Chpass(getSId(), null, null);
c.insertData(c);
Auto a=(Auto)session.get("skey");
    //System.out.print("Value"+a.getId());
    System.out.println("before "+a.getStu());
    a.updates(a);
sKey();
    return SUCCESS;
}

    public String execute() throws Exception {

return SUCCESS;
        

    }

    public void setSession(Map map) {
        session=map;
    }

    public void setApplication(Map map) {
        application=map;
    }



}