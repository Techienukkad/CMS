package com.cms.hib;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 * TbSession entity. @author MyEclipse Persistence Tools
 */

public class TbSession implements java.io.Serializable {

	// Fields

	private Integer sessId;
	private String CId;
	private String session;  

	// Constructors

	/** default constructor */
	public TbSession() {
	}

	/** full constructor */
	public TbSession(String CId, String session) {
		this.CId = CId;
		this.session = session;
	}

	// Property accessors

	public Integer getSessId() {
		return this.sessId;
	}

	public void setSessId(Integer sessId) {
		this.sessId = sessId;
	}

	public String getCId() {
		return this.CId;
	}

	public void setCId(String CId) {
		this.CId = CId;
	}

	public String getSession() {
		return this.session;
	}

	public void setSession(String session) {
		this.session = session;
	}

	
    public List fetch(String act)
    {
    Session session=HibeConnect.getSession();
    Query query=session.createQuery("from TbSession where CId='"+act+"'");
    System.out.println("from TbSession where CId='"+act+"'");
    List li=query.list();
    System.out.println(li.size());
    session.close();
    return li;
    }
public String toString()
    {
return session;
}
}