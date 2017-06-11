
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Login;
import com.cms.hib.TbDepartment;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;



/**

 *

 * @author saurabh

 */



public class deptAction extends ActionSupport implements ApplicationAware,ServletRequestAware{

private String DId;
private String res;
private String act;
HttpServletRequest request;

    public String getAct() {
        return act;
    }

    public void setAct(String act) {
        this.act = act;
    }
 private String DName;
 Map application;

    public String getDHod() {
        return DHod;
    }

    public void setDHod(String DHod) {
        this.DHod = DHod;
    }

    public String getDName() {
        return DName;
    }

    public void setDName(String DName) {
        this.DName = DName;
    }

    public String getDTimetable() {
        return DTimetable;
    }

    public void setDTimetable(String DTimetable) {
        this.DTimetable = DTimetable;
    }
     private String DHod;
     private String DTimetable="";

    public String getRes() {
        return res;
    }

    public void setRes(String res) {
        this.res = res;
    }

    public String getDId() {
        return DId;
    }

    public void setDId(String DId) {
        this.DId = DId;
    }


    public deptAction() {

    }



    public String execute() throws Exception {

        return SUCCESS;

    }

    public String fetchDept()
    {
        TbDepartment department=new TbDepartment();
        if(getDId().equals(""))
        {
            res="";
        }
        else
        {
            List li=department.fetchDept(DId.toUpperCase());
            System.out.println(li);
            if(li.size()>0)
            {
            res="Already exist";
            }
            else
            {
            res="Available";
            }
        }
        return SUCCESS;
    }

    public String insert()
    {
        TbDepartment department=new TbDepartment(DId, DName, DHod, DTimetable);

                
        department.insertData(department);
        Login l=new Login(DId, DId, "department");
        l.insertData(l);
fetch();
        return SUCCESS;

    }

    public String dedept()
    {
    TbDepartment department=new TbDepartment();
        department.deleteRecord(act);
fetch();
    return SUCCESS;
    }
    public String fetch()
    {
        TbDepartment tbDepartment=new TbDepartment();
       List li= tbDepartment.fetch();
        application.put("dept", li);

    return SUCCESS;}

    public String fetchup()
    {
    TbDepartment department=new TbDepartment();
    department=department.fetchup(act);

      request.setAttribute("dept",department);
    return SUCCESS;
    }


    
 public String updept()
    {
    TbDepartment department=new TbDepartment();
    System.out.println(getDId());
        department.updateRecord(getDId(),DName,DHod);
fetch();
    return SUCCESS;
    }

   

    public void setApplication(Map map) {
        application=map;
    }

    public void setServletRequest(HttpServletRequest hsr) {
      request=hsr;
    }

}
