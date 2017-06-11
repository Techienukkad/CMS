package com.cms.hib;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.mail.search.ReceivedDateTerm;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	// Fields

	private Integer MId;
	private String message;
	private Long sendTime;
	private Sender sender;

    public Sender getSender() {
        return sender;
    }

    public void setSender(Sender sender) {
        this.sender = sender;
    }

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** minimal constructor */
	public Message(String message, Long sendTime) {
		this.message = message;
		this.sendTime = sendTime;
	}

	/** full constructor */
	public Message(String message, Long sendTime, Sender sender) {
		this.message = message;
		this.sendTime = sendTime;
		this.sender = sender;
	}

	// Property accessors

	public Integer getMId() {
		return this.MId;
	}

	public void setMId(Integer MId) {
		this.MId = MId;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Long getSendTime() {
		return this.sendTime;
	}

	public void setSendTime(Long sendTime) {
		this.sendTime = sendTime;
	}

	

        public void insertMessage(Message m)
        {
        Session session=HibeConnect.getSession();
        Transaction transaction = session.beginTransaction();

        session.save(m);
        transaction.commit();
        session.close();


        }



        public Message fetchMessages(Integer MId)
        {
        Session session=HibeConnect.getSession();
        Recivemessage r= new Recivemessage();
      // List l1= r.fetchMId(user);
      //  String sql="select m.sendTime from Message m join m.Recivemessage r where m.MId in(select r.MId from Recivemessage where r.Status='"+1+"' and r.receiver='"+user+"')";
        
      //Iterator i=l1.iterator();
     // List msg=new ArrayList();
     // while(i.hasNext())
     // {
          //Recivemessage r1=(Recivemessage)i.next();

       Query query=session.createQuery("from Message where MId='"+MId+"'");
       System.out.println("from Message where MId='"+MId+"'");
        Message l=(Message)query.uniqueResult();
        
        //msg.add(l);
           // }
        //System.out.println( "list is here.................."+msg.size());
        session.close();
        return l;
        }

}