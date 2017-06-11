package com.cms.hib;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Chpass entity. @author MyEclipse Persistence Tools
 */

public class Chpass implements java.io.Serializable {

	// Fields

	private String user;
	private String question;
	private String answer;

	// Constructors

	/** default constructor */
	public Chpass() {
	}

	/** minimal constructor */
	public Chpass(String user) {
		this.user = user;
	}

	/** full constructor */
	public Chpass(String user, String question, String answer) {
		this.user = user;
		this.question = question;
		this.answer = answer;
	}

	// Property accessors

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}


        public Chpass fetch(String user)
    {
        Session session=HibeConnect.getSession();
        Query query=session.createQuery("from Chpass where user='"+user+"'");
        Chpass c=(Chpass)query.uniqueResult();
        System.out.println(c);
        session.close();
        return c;

    }

       public void insertData(Chpass info)
        {
        Session session = HibeConnect.getSession();
        Transaction transaction = session.beginTransaction();

        session.save(info);
        transaction.commit();
        session.close();
         }

       public void updateRecord(Chpass info)
    {
        Session session = HibeConnect.getSession();
        Query query = session.createQuery("from Chpass where user ='"+info.getUser()+"'");
        //query.setString("name", CId);
        //System.out.print("from Chpass where user ='"+CId+"'");
        Chpass info1 = (Chpass)query.uniqueResult();
        //System.out.println("Info issssssssssss"+info);
        info1.setQuestion(info.getQuestion());
        info1.setAnswer(info.getAnswer());
       // info.setDTimetable(DTimeTable);
        Transaction transaction = session.beginTransaction();
        session.update(info1);
        transaction.commit();
        session.close();
    }

       public String myString()
    {
       return question;
       }



}