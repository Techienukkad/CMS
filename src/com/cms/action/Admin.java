
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.TbAdmin;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;



/**

 *

 * @author saurabh

 */



public class Admin extends ActionSupport implements ApplicationAware,ServletRequestAware,SessionAware{



    public Admin() {

    }
Map application;
    Map session;
    HttpServletRequest request;
 private String adminId;
     private String AFristname;
     private String ALastname;
     private String AGender;
     private String ACity;
     private String AEmail;
     private String AContact;
     private String AAddress;

    public String getAAddress() {
        return AAddress;
    }

    public void setAAddress(String AAddress) {
        this.AAddress = AAddress;
    }

    public String getACity() {
        return ACity;
    }

    public void setACity(String ACity) {
        this.ACity = ACity;
    }

    public String getAContact() {
        return AContact;
    }

    public void setAContact(String AContact) {
        this.AContact = AContact;
    }

    public String getAEmail() {
        return AEmail;
    }

    public void setAEmail(String AEmail) {
        this.AEmail = AEmail;
    }

    public String getAFristname() {
        return AFristname;
    }

    public void setAFristname(String AFristname) {
        this.AFristname = AFristname;
    }

    public String getAGender() {
        return AGender;
    }

    public void setAGender(String AGender) {
        this.AGender = AGender;
    }

    public String getALastname() {
        return ALastname;
    }

    public void setALastname(String ALastname) {
        this.ALastname = ALastname;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }


    public String profile()throws Exception
    {
        TbAdmin tb=new TbAdmin();
        TbAdmin tbAdmin = tb.adminPro(adminId);
        application.put("tb", tbAdmin);
        request.setAttribute("tb", tb);
        return "profile";
    }

    @Override
    public String execute() throws Exception {

        throw new UnsupportedOperationException("Not supported yet.");

    }

    public void setApplication(Map map) {
        application=map;
    }

    

    public void setSession(Map map) {
        session=map;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }



}