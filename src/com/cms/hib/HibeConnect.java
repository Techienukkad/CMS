/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cms.hib;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Subodh
 */
public class HibeConnect
{
    public static Session getSession()
    {
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        return  factory.openSession();
    }
}
