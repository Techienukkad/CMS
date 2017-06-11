
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.TbSession;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.ApplicationAware;



/**

 *

 * @author saurabh

 */



public class FetchSession extends ActionSupport implements ApplicationAware{

private String SClass;
Map application;
    public String getSClass() {
        return SClass;
    }

    public void setSClass(String SClass) {
        this.SClass = SClass;
    }
    private String course;
    private List sesList,sess;

    public List getSess() {
        return sess;
    }

    public void setSess(List sess) {
        this.sess = sess;
    }

    public List getSesList() {
        return sesList;
    }

    public void setSesList(List sesList) {
        this.sesList = sesList;
    }
    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public FetchSession() {

    }

    public String execute() throws Exception {

        TbSession tbs=new TbSession();
        sesList=tbs.fetch(course);
        if(sesList.size() < 1)
        {
            sesList.add("No Record Found");
        }
        application.put("tbs",sesList);
        return  SUCCESS;

    }
    public String my()
    {

     TbSession tbs=new TbSession();
             System.out.println("--------------------------skdaisfiai"+SClass);
        sess=tbs.fetch(getSClass());
        System .out.println(" nshduhhsdisdii"+ sess);
        if(sess.size() < 1)
        {
            sess.add("No Record Found");
        }
        
        return  SUCCESS;
    }

    public void setApplication(Map map) {
        application= map;
    }




}