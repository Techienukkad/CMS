
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.TbSession;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;



/**

 *

 * @author saurabh

 */



public class My extends ActionSupport {

private String SClass;

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



    public String execute() throws Exception {

        TbSession tbs=new TbSession();
        System.out.print("bjshdfheuifyuiye"+SClass);
        sesList=tbs.fetch(getSClass());
        
        if(sesList.size() < 1)
        {
            sesList.add("No Record Found");
        }
        //application.put("tbs",tbs);
        return  SUCCESS;

    }

    }




