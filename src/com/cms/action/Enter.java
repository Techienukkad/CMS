
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Notice;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;



/**

 *

 * @author saurabh

 */



public class Enter extends ActionSupport implements ApplicationAware,ServletRequestAware{

private Integer nid;
	private String subject;
	private Date issuedate;
	private String notice;
        Map application;

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(Date issuedate) {
        this.issuedate = issuedate;
    }

    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
	private String author;

    public Enter() {

    }

    private InputStream file1;
    private String fileName;
    HttpServletRequest request;

    public InputStream getFile1() {
        return file1;
    }

    public void setFile1(InputStream file1) {
        this.file1 = file1;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }


    public String execute() {

        Notice n=new Notice();
        List l=n.fetch();
        application.put("notice", l);
        return SUCCESS;

    }

    public String download() throws FileNotFoundException
    {

    System.out.print(fileName);
       String path = request.getRealPath("notice/"+fileName) ;
        file1 =  new FileInputStream(new File(path));
    
    return SUCCESS;
    }

    public void setApplication(Map map) {
        application=map;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

public String deleteNotice()
{
Notice n=new Notice();
n.delete(getNid());
List l=n.fetch();
 application.put("notice", l);

return SUCCESS;}


}