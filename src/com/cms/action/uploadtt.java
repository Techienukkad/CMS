
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.Notice;
import com.cms.hib.TbDepartment;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
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



public class uploadtt extends ActionSupport implements ServletRequestAware,SessionAware{


	private String DId;
        private String DTimetable;

    public String getDTimetable() {
        return DTimetable;
    }

    public void setDTimetable(String DTimetable) {
        this.DTimetable = DTimetable;
    }

    public String getDId() {
        return DId;
    }

    public void setDId(String DId) {
        this.DId = DId;
    }

   
    public File getTtfile() {
        return ttfile;
    }

    public void setTtfile(File ttfile) {
        this.ttfile = ttfile;
    }

    public String getTtfileContentType() {
        return ttfileContentType;
    }

    public void setTtfileContentType(String ttfileContentType) {
        this.ttfileContentType = ttfileContentType;
    }

    public String getTtfileFileName() {
        return ttfileFileName;
    }

    public void setTtfileFileName(String ttfileFileName) {
        this.ttfileFileName = ttfileFileName;
    }
	private Date issuedate;
        HttpServletRequest request;
        Map session;



        private File ttfile;
        private String ttfileContentType;


         private String ttfileFileName;




    public String execute() throws Exception {

        return SUCCESS;

        
    }

    public String uploadtime() throws IOException
    {String fullFileName = null;

      String s= getTtfileFileName().substring(getTtfileFileName().indexOf("."));
            String path = request.getRealPath("/TimeTable");
            System.out.println(s);
            fullFileName = path +"/"+getDId()+s;
            this.setDTimetable(this.getDId()+s);
            System.out.print(getDTimetable());

System.out.println(getTtfileFileName());
System.out.println();

        File theFile = new File(fullFileName);
        FileUtils.copyFile(ttfile, theFile);
        TbDepartment td=new TbDepartment();
        td.setDTimetable(getDTimetable());
        td.update(DId, DTimetable);


return SUCCESS;}

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

    public void setSession(Map map) {
        session=map;
    }



}