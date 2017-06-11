
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Auto;
import com.cms.hib.TbCourses;
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



public class Course extends ActionSupport implements SessionAware,ApplicationAware,ServletRequestAware{



    public Course() {

    }
    Map session,application;
    HttpServletRequest request;
private Integer Id;
private Integer val;
private String act;

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
private String CId;
private String CDid;
private String CName;
private String CAbb;

    public String getCAbb() {
        return CAbb;
    }

    public void setCAbb(String CAbb) {
        this.CAbb = CAbb;
    }

   
private Date CStartdate;
private Integer coVal;

    public Integer getCoVal() {
        return coVal;
    }

    public void setCoVal(Integer coVal) {
        this.coVal = coVal;
    }

    public String getCDid() {
        return CDid;
    }

    public void setCDid(String CDid) {
        this.CDid = CDid;
    }

    public String getCId() {
        return CId;
    }

    public void setCId(String CId) {
        this.CId = CId;
    }

    public String getCName() {
        return CName;
    }

    public void setCName(String CName) {
        this.CName = CName;
    }

    public Date getCStartdate() {
        return CStartdate;
    }

    public void setCStartdate(Date CStartdate) {
        this.CStartdate = CStartdate;
    }

    public String cKey()
    {
    Auto a=new Auto();
        a=a.fetch();
        String s=session.get("user").toString()+"Cou"+(a.getCoVal()+1);
        this.setCId(s);
        
       // System.out.println(FId);
        //System.out.print(a.getId());
        session.put("ckey", a);


        TbCourses course=new TbCourses();
        List li=course.fetch(session.get("user").toString());
        application.put("course", li);


        return SUCCESS;
     }

    public String execute() throws Exception {

       return SUCCESS;

    }

    public String addCourse()
    {
    TbCourses cs=new TbCourses(CId, CAbb, CDid, CName, CStartdate);
    cs.insertData(cs);
   System.out.println(CAbb);
   // System.out.println(coVal);
   // Auto a=new Auto(Id, val, coVal);
    Auto a=(Auto)session.get("ckey");
    //System.out.print("Value"+a.getId());
    System.out.println("before "+a.getCoVal());
    a.updatec(a);
    System.out.println("action "+coVal);
    cKey();

    return SUCCESS;
    }

    public String upCourse()
    {
        TbCourses c=new TbCourses();
    c=c.fetchAll(act);
    
    request.setAttribute("course", c);
System.out.println(c);
    return SUCCESS;
    }
    public String updateCourse()
    {
    TbCourses c=new TbCourses();
    System.out.println("heredhwdhiwqiueuwqueduwqewnfhiqe"+getCId());
    c.updateRecord(getCId(),CAbb,CName);
    cKey();

TbCourses course=new TbCourses();
        List li=course.fetch(session.get("user").toString());
        application.put("course", li);
    return SUCCESS;
    }

    public String deleteCourse()
    {
        TbCourses tba= new TbCourses();
    tba.deleteRecord(act);
    cKey();
TbCourses course=new TbCourses();
        List li=course.fetch(session.get("user").toString());
        application.put("course", li);
    return SUCCESS;
    }

    public void setSession(Map map) {
        session=map;
    }

    public void setApplication(Map map) {
        application=map;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }



}