package com.cms.hib;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Recivemessage entity. @author MyEclipse Persistence Tools
 */

public class Recivemessage implements java.io.Serializable {

	// Fields

	private String receiver;
	private Integer MId;
        private Integer rid;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

	private Short status;

	// Constructors

	/** default constructor */
	public Recivemessage() {
	}

	/** full constructor */
	public Recivemessage(String receiver, Integer MId, Short status) {
		this.receiver = receiver;
		this.MId = MId;
		this.status = status;
	}

	// Property accessors

	public String getReceiver() {
		return this.receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public Integer getMId() {
		return this.MId;
	}

	public void setMId(Integer MId) {
		this.MId = MId;
	}

	public Short getStatus() {
		return this.status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

        public void insertReceiver(Recivemessage r)
        {
         Session session=HibeConnect.getSession();
        Transaction transaction = session.beginTransaction();
          
        session.save(r);
            
        transaction.commit();
        session.close();

        }


        public List fetchMId(String user)
        {
        Session session=HibeConnect.getSession();

        Query query=session.createQuery("from Recivemessage where receiver='"+user+"' and status='"+1+"'");
        List l=query.list();
        System.out.println("hhhjhhhhhhhhhhhhhh...................."+l.size());
        session.close();
        return l;
        }

         public void delete(Integer MId,String receiver)
    {
        Session session = HibeConnect.getSession();
        Query query = session.createQuery("from Recivemessage where MId ='"+MId+"' and receiver='"+receiver+"'");

        //System.out.print(name);
        Recivemessage info = (Recivemessage)query.uniqueResult();
        Transaction transaction = session.beginTransaction();
        session.delete(info);
        transaction.commit();
        session.close();
    }

        public Integer MyMid()
        {
        return MId;
        }

        public List fetch(Integer MId)
        {
        Session session=HibeConnect.getSession();

        Query query=session.createQuery("from Recivemessage where MId='"+MId+"'");
        List l=query.list();
        //System.out.println("hhhjhhhhhhhhhhhhhh...................."+l.size());
        session.close();
        return l;
        }

        public String myString()
    {
        return receiver;
        }
}