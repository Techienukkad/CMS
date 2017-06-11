
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.opensymphony.xwork2.ActionSupport;



/**

 *

 * @author saurabh

 */



public class MessageAction extends ActionSupport {


    private String sender;
    private String receiver;
    
    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public MessageAction() {

    }



    public String execute() throws Exception {

        return SUCCESS;

    }



}