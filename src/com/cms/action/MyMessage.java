
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Message;
import com.cms.hib.Recivemessage;
import com.cms.hib.Sender;
import com.opensymphony.xwork2.ActionSupport;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;



/**

 *

 * @author saurabh

 */



public class MyMessage extends ActionSupport implements SessionAware{

        
	private String message;
	private Long sendTime;
        Map session;
        private String receivers;

    public String getReceivers() {
        return receivers;
    }

    public void setReceivers(String receivers) {
        this.receivers = receivers;
    }

    

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getSendTime() {
        return sendTime;
    }

    public void setSendTime(Long sendTime) {
        this.sendTime = sendTime;
    }

    public Sender getSender() {
        return sender;
    }

    public void setSender(Sender sender) {
        this.sender = sender;
    }
	private Sender sender;

    public MyMessage() {
  
    }



    public String execute() throws Exception {

        Message m=new Message();
        Sender s=new Sender();
     Recivemessage r=new Recivemessage();

     String sr[];

     String deli=",";


     System.out.println(deli);
     sr=getReceivers().trim().split(deli);
     System.out.println(sr[1]);
     Date d=new Date();
    long l=System.currentTimeMillis();
     m.setMessage(getMessage());
     m.setSendTime(d.UTC(d.getYear(), d.getMonth(), d.getDate(), d.getHours(), d.getMinutes(), d.getSeconds()));
     s.setStatus((short)1);
     s.setMessage(m);
     s.setSender(session.get("user").toString());
     m.setSender(s);
     SimpleDateFormat d1=new SimpleDateFormat("MMM dd,yyyy HH:mm");

System.out.println(d1.format(new Date(l)));

     m.insertMessage(m);
     s.setMId(m.getMId());
     s.insertSender(s);
    
     for(int i=0;i<sr.length;i++)
     { r.setMId(m.getMId());
     r.setStatus((short)1);
         r.setReceiver(sr[i]);
     r.insertReceiver(r);
        }
     
        return SUCCESS;

    }

    public void deleteMessage()
    {


    }

    public void setSession(Map map) {
        session=map;
    }



}