
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.TbAdmin;
import com.cms.hib.TbCourses;
import com.cms.hib.TbDepartment;
import com.cms.hib.TbFaculty;
import com.cms.hib.TbSession;
import com.cms.hib.TbStudent;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;



/**

 *

 * @author saurabh

 */



public class Search extends ActionSupport implements ApplicationAware,ServletRequestAware{
private String act;
Map application;
HttpServletRequest request;
private String course;
private String SSession;

    public String getSSession() {
        return SSession;
    }

    public void setSSession(String SSession) {
        this.SSession = SSession;
    }
private String SId;
private String FId;
     private String FFirstname;
     private String FLastname;
     private String FDid;
     private String FGender;
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

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    
    public String getAct() {
        return act;
    }

    public void setAct(String act) {
        this.act = act;
    }

    public Search() {

        

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


    public String execute() throws Exception
    {

        TbFaculty tb=new TbFaculty();
        List facrecord = tb.fetch(act);
        System.out.println(facrecord);
        application.put("facrec", facrecord);

        

        return SUCCESS;
    }

    public String course()
    {

         

        TbCourses tc=new TbCourses();
        List course1 = tc.fetch(act);
        System.out.println(course1);
        application.put("course1", course1);

        /*TbSession tbs=new TbSession();
        List lis=tbs.fetch("");
        application.put("tbs",tbs);
         * */
        return SUCCESS;

    }

        public String student1()
        {
            TbStudent tbst=new TbStudent();
            System.out.println(getSSession());
            List list=tbst.fetch(course, SSession);
            //System.out.println(getSesst());
            if(list.size()<1)
            {
            list=null;
            }
            application.put("stu", list);
            System.out.print("list is"+application.get("stu"));
            return SUCCESS;
        }

    public void setApplication(Map map) {
        application=map;

    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }



    public String getSId() {
        return SId;
    }

    public void setSId(String SId) {
        this.SId = SId;
    }


    public String deleteStu()
    {
        TbStudent tbs=new TbStudent();
        //System.out.print(SId);
        tbs.delete(SId);
        student1();


    return SUCCESS;
    }

}