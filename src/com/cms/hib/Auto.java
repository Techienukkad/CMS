package com.cms.hib;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.*;

/**
 * Auto entity. @author MyEclipse Persistence Tools
 */

public class Auto implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer val;
        private Integer coVal;
        private Integer stu;

    public Integer getStu() {
        return stu;
    }

    public void setStu(Integer stu) {
        this.stu = stu;
    }



    public Integer getCoVal() {
        return coVal;
    }

    public void setCoVal(Integer coVal) {
        this.coVal = coVal;
    }

    

    


	// Constructors

	/** default constructor */
	public Auto() {
	}

	/** minimal constructor */
	public Auto(Integer id) {  
		this.id = id;
	}

	/** full constructor */
        public Auto(Integer id, Integer val) {
		this.id = id;
		this.val = val;
                
	}

	public Auto(Integer id, Integer val,Integer coVal) {
		this.id = id;
		this.val = val;
                this.coVal=coVal;
	}
        public Auto(Integer id, Integer val,Integer coVal,Integer stu) {
		this.id = id;
		this.val = val;
                this.coVal=coVal;
                this.stu=stu;
	}



	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVal() {
		return this.val;
	}

	public void setVal(Integer val) {
		this.val = val;
	}

    public Auto fetch()
    {
     Session session =HibeConnect.getSession();
     Query query=session.createQuery("from Auto");
     Auto a=new Auto();
     a=(Auto)query.uniqueResult();
     session.close();
    return a;
       }

    public void updateRecord(Integer Id,Integer Val)
    {
        Session session = HibeConnect.getSession();
        Query query = session.createQuery("from Auto where Id = :name");
        query.setInteger("name", Id);
        Auto info = (Auto)query.uniqueResult();
        info.setVal(Val+1);

        Transaction transaction = session.beginTransaction();
        session.update(info);
        transaction.commit();
        session.close();
    }
     public void updatec(Auto a)
    {
        Session session;
              session  = HibeConnect.getSession();
        //Query query = session.createQuery("from Auto where Id = :name");
        //query.setInteger("name", Id);
        //Auto info = (Auto)query.uniqueResult();
        System.out.println("before "+a.getCoVal());
        a.setCoVal(a.getCoVal()+1);
        System.out.println("after "+a.getCoVal());
        Transaction transaction = session.beginTransaction();
        session.update(a);
        transaction.commit();
        session.close();
    }

     public void updates(Auto a)
    {
        Session session = HibeConnect.getSession();
        //Query query = session.createQuery("from Auto where Id = :name");
        //query.setInteger("name", Id);
        //Auto info = (Auto)query.uniqueResult();
        System.out.println("before "+a.getStu());
        a.setStu(a.getStu()+1);
        System.out.println("after "+a.getStu());
        Transaction transaction = session.beginTransaction();
        session.update(a);
        transaction.commit();
        session.close();
    }

}