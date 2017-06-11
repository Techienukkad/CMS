
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.TbFaculty;
import com.cms.hib.TbStudent;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.ApplicationAware;



/**

 *

 * @author saurabh

 */



public class studentview extends ActionSupport implements ApplicationAware{

Map application;

    private String course;
    private String se;

    public String getSe() {
        return se;
    }

    public void setSe(String se) {
        this.se = se;
    }
    private String act;

    public String getAct() {
        return act;
    }

    public void setAct(String act) {
        this.act = act;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

   

    public studentview() {

    }



    public String execute() throws Exception {

          TbStudent tbst=new TbStudent();
            System.out.println(getSe());
            List list=tbst.fetch(course, se);
            if(list.size()<1)
            {
            list=null;
            }
            application.put("stu", list);
            System.out.print("list is"+list);



        return SUCCESS;

    }

    public void setApplication(Map map) {
       application=map;
    }



}