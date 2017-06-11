package com.cms.hib;

import java.io.File;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.Session;

/**
 * Notice entity. @author MyEclipse Persistence Tools
 */

public class Notice implements java.io.Serializable {

	// Fields

	private Integer nid;
	private String subject;
	private Date issuedate;
	private String notice;
	private String author;

	// Constructors

	/** default constructor */
	public Notice() {
	}

	/** full constructor */
	public Notice(String subject, Date issuedate, String notice, String author) {
		this.subject = subject;
		this.issuedate = issuedate;
		this.notice = notice;
		this.author = author;
	}

	// Property accessors

	public Integer getNid() {
		return this.nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Date getIssuedate() {
		return this.issuedate;
	}

	public void setIssuedate(Date issuedate) {
		this.issuedate = issuedate;
	}

	public String getNotice() {
		return this.notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}


        public void insert(Notice n)
        {
        org.hibernate.Session session=HibeConnect.getSession();
        Transaction transaction = session.beginTransaction();
        session.save(n);
        transaction.commit();
        session.close();

        }

        public List fetch()
        {
        Session session=HibeConnect.getSession();
        Query query=session.createQuery("from Notice");
        List l=query.list();
        session.close();
        return l;
        }


            public void delete(Integer nid)
    {
        Session session = HibeConnect.getSession();
        Query query = session.createQuery("from Notice where nid ='"+nid+"'");

        //System.out.print(name);
        Notice info = (Notice)query.uniqueResult();
        Transaction transaction = session.beginTransaction();
        session.delete(info);
        transaction.commit();
        session.close();
    }




}