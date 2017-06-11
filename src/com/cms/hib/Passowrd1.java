package com.cms.hib;


import org.hibernate.Query;
import org.hibernate.Session;

/**
 * Passowrd entity. @author MyEclipse Persistence Tools
 */

public class Passowrd1 implements java.io.Serializable {

	// Fields

	private String user;
	private String question;
	private String answer;

	// Constructors

	/** default constructor */
	public Passowrd1() {
	}

	/** minimal constructor */
	public Passowrd1(String user) {
		this.user = user;
	}

	/** full constructor */
	public Passowrd1(String user, String question, String answer) {
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



        public Passowrd1 question(String Id)
        {
        Session session= HibeConnect.getSession();
        Query query=session.createQuery("from Password1 where user =:Id");
        query.setString("Id", Id);

        Passowrd1 p=(Passowrd1)query.uniqueResult();
        System.out.println("pojo class of password"+p);

        session.close();
        return p;
        }

}