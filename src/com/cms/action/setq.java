
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Chpass;
import com.opensymphony.xwork2.ActionSupport;



/**

 *

 * @author saurabh

 */



public class setq extends ActionSupport {

private String Id;
private String ques;
private String answer;

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getQues() {
        return ques;
    }

    public void setQues(String ques) {
        this.ques = ques;
    }

    public setq() {

    }



    public String execute() throws Exception {

        return SUCCESS;

    }

    public String upques()
    {
        System.out.print(getId());
    Chpass c=new Chpass(getId(), ques, answer);

    c.updateRecord(c);
    return SUCCESS;
    }

}