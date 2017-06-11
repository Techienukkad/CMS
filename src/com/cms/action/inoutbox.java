
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Message;
import com.cms.hib.Recivemessage;
import com.cms.hib.Sender;
import com.opensymphony.xwork2.ActionSupport;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;



/**

 *

 * @author saurabh

 */



public class inoutbox extends ActionSupport implements ApplicationAware,SessionAware{


Map application,session;
private Integer MId;
private String sender;
private String message;
private String receiver;

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getMId() {
        return MId;
    }

    public void setMId(Integer MId) {
        this.MId = MId;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }
    public inoutbox() {

    }



    public String execute() throws Exception {

         Recivemessage r=new Recivemessage();
        List rl=r.fetchMId(session.get("user").toString());
        application.put("message",rl);
        Iterator i=rl.iterator();
         List msg=new ArrayList();
         Message m=new Message();
         Sender send=new Sender();
        while(i.hasNext())
        {
         Recivemessage r1=(Recivemessage)i.next();
        m=m.fetchMessages(r1.MyMid());
        send=send.fetch(r1.MyMid());
        SimpleDateFormat d1=new SimpleDateFormat("MMM dd,yyyy HH:mm");

String k=d1.format(new Date(m.getSendTime()));
        application.put("m", m);
        application.put("send",send);
        application.put("Mydate", k);
        }
        /*Sender sender=new Sender();
        Recivemessage r2=new Recivemessage();
         Message m2=new Message();
       List sl= sender.fetchMId(session.get("user").toString());
        application.put("sent", sl);

        Iterator i1=sl.iterator();
         List msg1=new ArrayList();

        while(i1.hasNext())
        {
         Sender s1=(Sender)i.next();
        m2=m2.fetchMessages(s1.MyMid());
        List l1=r2.fetch(s1.MyMid());
        SimpleDateFormat d1=new SimpleDateFormat("MMM dd,yyyy HH:mm");

String k1=d1.format(new Date(m2.getSendTime()));
        application.put("m2", m2);
        StringBuffer sb=new StringBuffer();
        Iterator i3=l1.iterator();
        while(i3.hasNext())
        {
        Recivemessage re=(Recivemessage)i3.next();
         if(sb.length() > 0)
        {
            sb.append(',');
        }

          sb.append('"').append(re.myString()).append('"');

        }
        application.put("recv",sb.toString());

        application.put("Mydate1", k1);

        }
 */       System.out.println("Fetching............................");
        //System.out.println(m.fetchMessages(getUser()));


        
        return SUCCESS;

    }

    public void setApplication(Map map) {
     application=map;
    }

    public void setSession(Map map) {
        session=map;
    }

public String showMessage()
{

Message m=new Message();
application.put("mess",m.fetchMessages(getMId()));


return SUCCESS;
}


    public String deleteR()
    {
    Recivemessage r2=new Recivemessage();
    r2.delete(MId, receiver);

    Recivemessage r=new Recivemessage();
        List rl=r.fetchMId(session.get("user").toString());
        application.put("message",rl);
        Iterator i=rl.iterator();
         List msg=new ArrayList();
         Message m=new Message();
         Sender send=new Sender();
        while(i.hasNext())
        {
         Recivemessage r1=(Recivemessage)i.next();
        m=m.fetchMessages(r1.MyMid());
        send=send.fetch(r1.MyMid());
        SimpleDateFormat d1=new SimpleDateFormat("MMM dd,yyyy HH:mm");

String k=d1.format(new Date(m.getSendTime()));
        application.put("m", m);
        application.put("send",send);
        application.put("Mydate", k);
        }
    return SUCCESS;
    }

    }


