
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.TbFaculty;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;



/**

 *

 * @author saurabh

 */



public class editFaculty extends ActionSupport implements ApplicationAware,ServletRequestAware,SessionAware{

Map session,application;
HttpServletRequest request;

    public editFaculty() {

    }
     private String FId;
     private String FFirstname;
     private String FLastname;
     private String FDid;
     private String FGender;
     private Date FDob;
     private String FAddress;
     private String FCity;
     private String FState;
     private String FEmail;
     private String FQualification;
     private Integer FExperience;
     private File Image;
      private String ImageContentType;

    public String getImageContentType() {
        return ImageContentType;
    }

    public void setImageContentType(String ImageContentType) {
        this.ImageContentType = ImageContentType;
    }


    public File getImage() {
        return Image;
    }

    public void setImage(File Image) {
        this.Image = Image;
    }
     private String FDesignation;
     private Date FJoindate;
     private String ImageFileName;

    public String getImageFileName() {
        return ImageFileName;
    }

    public void setImageFileName(String ImageFileName) {
        this.ImageFileName = ImageFileName;
    }

    public String getFAddress() {
        return FAddress;
    }

    public void setFAddress(String FAddress) {
        this.FAddress = FAddress;
    }

    public String getFCity() {
        return FCity;
    }

    public void setFCity(String FCity) {
        this.FCity = FCity;
    }

    public String getFDesignation() {
        return FDesignation;
    }

    public void setFDesignation(String FDesignation) {
        this.FDesignation = FDesignation;
    }

    public String getFDid() {
        return FDid;
    }

    public void setFDid(String FDid) {
        this.FDid = FDid;
    }

    public Date getFDob() {
        return FDob;
    }

    public void setFDob(Date FDob) {
        this.FDob = FDob;
    }

    public String getFEmail() {
        return FEmail;
    }

    public void setFEmail(String FEmail) {
        this.FEmail = FEmail;
    }

    public Integer getFExperience() {
        return FExperience;
    }

    public void setFExperience(Integer FExperience) {
        this.FExperience = FExperience;
    }

    public String getFFirstname() {
        return FFirstname;
    }

    public void setFFirstname(String FFirstname) {
        this.FFirstname = FFirstname;
    }

    public String getFGender() {
        return FGender;
    }

    public void setFGender(String FGender) {
        this.FGender = FGender;
    }

    public String getFId() {
        return FId;
    }

    public void setFId(String FId) {
        this.FId = FId;
    }

    public String getFImage() {
        return FImage;
    }

    public void setFImage(String FImage) {
        this.FImage = FImage;
    }

    public Date getFJoindate() {
        return FJoindate;
    }

    public void setFJoindate(Date FJoindate) {
        this.FJoindate = FJoindate;
    }

    public String getFLastname() {
        return FLastname;
    }

    public void setFLastname(String FLastname) {
        this.FLastname = FLastname;
    }

    public String getFQualification() {
        return FQualification;
    }

    public void setFQualification(String FQualification) {
        this.FQualification = FQualification;
    }

    public String getFState() {
        return FState;
    }

    public void setFState(String FState) {
        this.FState = FState;
    }
     private String FImage;



    public String execute() throws Exception {

        String fullFileName = null;

      String s= getImageFileName().substring(getImageFileName().indexOf("."));
            String path = request.getRealPath("/facimage");
            System.out.println(s);
            fullFileName = path +"/"+getFId()+s;
            this.setFImage(getFId()+s);

System.out.println(getImageFileName());
System.out.println(FImage);

        File theFile = new File(fullFileName);
        FileUtils.copyFile(Image, theFile);


        TbFaculty g = new TbFaculty(FId, FFirstname, FLastname, FDid, FGender, FDob, FAddress, FCity, FState, FEmail, FQualification, FExperience, FDesignation, FJoindate, FImage);
        //g.setSImage(fullFileName);
        g.updateFaculty(g);
        TbFaculty fac = new TbFaculty();
fac=fac.fetcha(session.get("user").toString());
System.out.println(fac);
application.put("fact",fac);

return SUCCESS;
    }

    public void setApplication(Map map) {
      application=map;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

    public void setSession(Map map) {
        session=map;
    }



}