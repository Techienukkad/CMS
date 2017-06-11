package com.cms.hib;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Sender entity. @author MyEclipse Persistence Tools
 */

public class Sender implements java.io.Serializable {

	// Fields

	private Integer MId;
	private Message message;
	private String sender;
	private Short status;

	// Constructors

	/** default constructor */
	public Sender() {
	}

	/** full constructor */
	public Sender(Message message, String sender, Short status) {
		this.message = message;
		this.sender = sender;
		this.status = status;
	}

	// Property accessors

	public Integer getMId() {
		return this.MId;
	}

	public void setMId(Integer MId) {
		this.MId = MId;
	}

	public Message getMessage() {
		return this.message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public String getSender() {
		return this.sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public Short getStatus() {
		return this.status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}


        public void insertSender(Sender s)
        {
         Session session=HibeConnect.getSession();
        Transaction transaction = session.beginTransaction();
        session.save(s);
        transaction.commit();
        session.close();

        }


        public Sender fetch(Integer MId)
        {
        Session session=HibeConnect.getSession();

        Query query=session.createQuery("from Sender where MId='"+MId+"'");
        Sender l=(Sender)query.uniqueResult();
        //System.out.println("hhhjhhhhhhhhhhhhhh...................."+l.size());
        session.close();
        return l;
        }

        public List fetchMId(String user)
        {
        Session session=HibeConnect.getSession();

        Query query=session.createQuery("from Sender where sender='"+user+"' and status='"+1+"'");
        List l=query.list();
        System.out.println("hhhjhhhhhhhhhhhhhh...................."+l.size());
        session.close();
        return l;
        }
        public Integer MyMid()
        {
        return MId;
        }
}