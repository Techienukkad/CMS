
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;





import com.cms.hib.Chpass;
import com.cms.hib.Login;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;



/**

 *

 * @author saurabh

 */



public class forgetPassword extends ActionSupport implements ServletRequestAware,ApplicationAware{

        private String user;
	private String question;
        HttpServletRequest request;
        Map application;
        private String myanswer;
        private String newPassword;
        private String confirmPassword;

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
String res;

    public String getRes() {
        return res;
    }

    public void setRes(String res) {
        this.res = res;
    }
    public String getMyanswer() {
        return myanswer;
    }

    public void setMyanswer(String myanswer) {
        this.myanswer = myanswer;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }
    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
	private String answer;

    public forgetPassword() {

    }



    public String execute() throws Exception {
        Chpass p=new Chpass();
        Chpass p1=p.fetch(user);
        if(p1.myString()==null||p1.myString().equals(null))
        {
        setRes("no question found");
        return INPUT;
        }
        System.out.println(p1);
        application.put("p", p1);
        return SUCCESS;
    }

    /*public String question1()
    {
    Passowrd p=new Passowrd();
    p=p.question(user);
    System.out.println(p);
    request.setAttribute("p", p);
    return SUCCESS;
    }*/


    public String checkAnswer()
    {
    Chpass p=new Chpass();
        Chpass p1=p.fetch(user);
        if(!(getMyanswer().equals(p1.getAnswer())))
        {
        setRes("Answer did not match");
        addActionError(res);
        return INPUT;
        }

    return SUCCESS;
    
    }


    public String upNewPass()
    {
    Login l=new Login();
    if(!(getNewPassword().equals(getConfirmPassword())))
    {System.out.println(getConfirmPassword()+""+newPassword);
     
        addActionError("Confirm Password Not Matched");
    return INPUT;
    }
    System.out.println(getUser());
    l.setUser(user);
    l.setPassword(newPassword);
    l.updateRecord(l);
    return SUCCESS;
    }

    public void setServletRequest(HttpServletRequest hsr) {
       request=hsr;
    }

    public void setApplication(Map map) {
       application=map;
    }

}