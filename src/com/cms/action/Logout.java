
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;



/**

 *

 * @author saurabh

 */



public class Logout {



    public Logout() {

    }



    public String execute() throws Exception {

        ActionContext ctx=ActionContext.getContext();
        HttpServletRequest request=(HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
        HttpSession session=request.getSession();
        session.removeAttribute("user");
        session.invalidate();

return "success";
    }



}