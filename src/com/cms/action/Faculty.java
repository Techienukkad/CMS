
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Auto;
import com.cms.hib.Chpass;
import com.cms.hib.Login;
import com.cms.hib.TbAdmin;
import com.cms.hib.TbFaculty;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;



/**

 *

 * @author saurabh

 */



public class Faculty extends ActionSupport implements SessionAware,ApplicationAware,ServletRequestAware{
Map session,application;
HttpServletRequest request;
private String FId;
     private String FFirstname;
     private String FLastname;
     private String FDid;
     private String FGender;
     Integer k;

    public Integer getK() {
        return k;
    }

    public void setK(Integer k) {
        this.k = k;
    }

    public String getFAddress() {
        return FAddress;
    }

    public void setFAddress(String FAddress) {
        this.FAddress = FAddress;
    }

    public String getFCity() {
        return FCity;
    }

    public void setFCity(String FCity) {
        this.FCity = FCity;
    }

    public String getFDesignation() {
        return FDesignation;
    }

    public void setFDesignation(String FDesignation) {
        this.FDesignation = FDesignation;
    }

    public String getFDid() {
        return FDid;
    }

    public void setFDid(String FDid) {
        this.FDid = FDid;
    }

    public Date getFDob() {
        return FDob;
    }

    public void setFDob(Date FDob) {
        this.FDob = FDob;
    }

    public String getFEmail() {
        return FEmail;
    }

    public void setFEmail(String FEmail) {
        this.FEmail = FEmail;
    }

    public Integer getFExperience() {
        return FExperience;
    }

    public void setFExperience(Integer FExperience) {
        this.FExperience = FExperience;
    }

    public String getFFirstname() {
        return FFirstname;
    }

    public void setFFirstname(String FFirstname) {
        this.FFirstname = FFirstname;
    }

    public String getFGender() {
        return FGender;
    }

    public void setFGender(String FGender) {
        this.FGender = FGender;
    }

    public String getFId() {
        return FId;
    }

    public void setFId(String FId) {
        this.FId = FId;
    }

    public String getFImage() {
        return FImage;
    }

    public void setFImage(String FImage) {
        this.FImage = FImage;
    }

    public Date getFJoindate() {
        return FJoindate;
    }

    public void setFJoindate(Date FJoindate) {
        this.FJoindate = FJoindate;
    }

    public String getFLastname() {
        return FLastname;
    }

    public void setFLastname(String FLastname) {
        this.FLastname = FLastname;
    }

    public String getFQualification() {
        return FQualification;
    }

    public void setFQualification(String FQualification) {
        this.FQualification = FQualification;
    }

    public String getFState() {
        return FState;
    }

    public void setFState(String FState) {
        this.FState = FState;
    }
     private Date FDob;
     private String FAddress;
     private String FCity;
     private String FState;
     private String FEmail;
     private String FQualification;
     private Integer FExperience;
     private String FDesignation;
     private Date FJoindate;
     private String FImage;
     private Integer Id;
     private Integer Val;
     private String act;
     private Integer coVal;

    public String getAct() {
        return act;
    }

    public void setAct(String act) {
        this.act = act;
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }

    public Integer getVal() {
        return Val;
    }

    public void setVal(Integer Val) {
        this.Val = Val;
    }



    public Faculty() {

    }



    public String execute() throws Exception {
        return SUCCESS;

    }

    public String key()
    {
    Auto a=new Auto();
        a=a.fetch();
        String s=session.get("user").toString()+(a.getVal()+1);
        this.setFId(s);
        this.setId(a.getId());
        System.out.println(FId);
        System.out.print(a.getId());
        session.put("key", a);


        TbFaculty faculty=new TbFaculty();
        List li=faculty.fetch(session.get("user").toString());
        application.put("faculty", li);
        

        return SUCCESS;
     }

    public String insertData()
    {
    TbFaculty faculty=new  TbFaculty(FId, FFirstname, FLastname, FDid, FGender, FDob, FAddress, FCity, FState, FEmail, FQualification, FExperience, FDesignation, FJoindate, FImage);
   /* faculty.setFDid(FId);
    faculty.setFFirstname(FFirstname);
    faculty.setFLastname(FLastname);
    faculty.setFDid(FDid);

faculty.setFAddress(FAddress);
faculty.setFCity(FCity);
faculty.setFDesignation(FDesignation);
faculty.setFDob(FDob);
faculty.setFEmail(FEmail);
faculty.setFExperience(FExperience);
faculty.setFGender(FGender);
faculty.setFImage(FImage);
faculty.setFJoindate(FJoindate);
faculty.setFQualification(FQualification);
faculty.setFState(FState);*/
   


faculty.insertData(faculty);
Login l=new Login(FId, FId, "faculty");
l.insertData(l);
Chpass c=new Chpass(getFId(), null, null);
c.insertData(c);
Auto a=new Auto(Id, Val,coVal);
a=(Auto)session.get("key");
System.out.print("Value"+a.getId());
a.updateRecord(a.getId(),a.getVal());
key();
    return SUCCESS;
    }

    public void setSession(Map map) {
        session=map;
    }

    public void setApplication(Map map) {
       application=map;
    }

    public String updateFaculty()
    {
    TbFaculty tba= new TbFaculty();

    tba.updateRecord(FId,FDid, FFirstname, FLastname, FJoindate, FDesignation);
    key();
TbFaculty faculty=new TbFaculty();
        List li=faculty.fetch(session.get("user").toString());
        application.put("faculty", li);
    return SUCCESS;
    }
public String upFact()
    {
    TbFaculty tb=new TbFaculty();
    tb=tb.fetcha(act);
    System.out.print(tb);
        request.setAttribute("f", tb);
        System.out.println(request.getAttribute("f"));
     return SUCCESS;
    }
    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

    public String deleteFaculty()
    {
        TbFaculty tba= new TbFaculty();
    tba.deleteRecord(act);
    Login l=new Login();
    l.deleteRecord(act);
    key();
TbFaculty faculty=new TbFaculty();
        List li=faculty.fetch(session.get("user").toString());
        application.put("faculty", li);
    return SUCCESS;
    }



}