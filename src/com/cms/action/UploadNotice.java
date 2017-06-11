
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Notice;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;



/**

 *

 * @author saurabh

 */



public class UploadNotice extends ActionSupport implements ServletRequestAware,SessionAware{

private Integer nid;
	private String subject;
	private Date issuedate;
        HttpServletRequest request;
        Map session;

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
	private String notice;
	private String author;
        private File noticefile;
        private String noticefileContentType;

    public File getNoticefile() {
        return noticefile;
    }

    public void setNoticefile(File noticefile) {
        this.noticefile = noticefile;
    }

    public String getNoticefileContentType() {
        return noticefileContentType;
    }

    public void setNoticefileContentType(String noticefileContentType) {
        this.noticefileContentType = noticefileContentType;
    }

    public String getNoticefileFileName() {
        return noticefileFileName;
    }

    public void setNoticefileFileName(String noticefileFileName) {
        this.noticefileFileName = noticefileFileName;
    }
         private String noticefileFileName;

    public UploadNotice() {

    }



    public String execute() throws Exception {

        String fullFileName = null;

      String s= getNoticefileFileName().substring(getNoticefileFileName().indexOf("."));
            String path = request.getRealPath("/notice");
            System.out.println(s);
            fullFileName = path +"/"+getSubject()+s;
            this.setNotice(this.getSubject()+s);
            this.setAuthor(session.get("user").toString());

System.out.println(getNoticefileFileName());
System.out.println(nid);

        File theFile = new File(fullFileName);
        FileUtils.copyFile(noticefile, theFile);

        Notice n=new Notice(subject, issuedate, notice, author);
        n.insert(n);


return SUCCESS;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

    public void setSession(Map map) {
        session=map;
    }



}