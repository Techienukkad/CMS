
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;




import com.cms.hib.TbStudent;
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



public class editStudent extends ActionSupport implements ServletRequestAware,ApplicationAware,SessionAware{

Map application,session;
 private String SId;
     private String SFirstname;
     private String SLastname;
     private String SFather;
     private String SMother;
     private String SSession;
     private String SClass;
     private String SGender;
     private Date SDob;
     private String SAddress;
     private File Image;

    public File getImage() {
        return Image;
    }

    public void setImage(File Image) {
        this.Image = Image;
    }
     HttpServletRequest request;

    public String getSAddress() {
        return SAddress;
    }

    public void setSAddress(String SAddress) {
        this.SAddress = SAddress;
    }

    public String getSCity() {
        return SCity;
    }

    public void setSCity(String SCity) {
        this.SCity = SCity;
    }

    public String getSClass() {
        return SClass;
    }

    public void setSClass(String SClass) {
        this.SClass = SClass;
    }

    public String getSContact() {
        return SContact;
    }

    public void setSContact(String SContact) {
        this.SContact = SContact;
    }

    public Date getSDob() {
        return SDob;
    }

    public void setSDob(Date SDob) {
        this.SDob = SDob;
    }

    public String getSEmail() {
        return SEmail;
    }

    public void setSEmail(String SEmail) {
        this.SEmail = SEmail;
    }

    public String getSFather() {
        return SFather;
    }

    public void setSFather(String SFather) {
        this.SFather = SFather;
    }

    public String getSFirstname() {
        return SFirstname;
    }

    public void setSFirstname(String SFirstname) {
        this.SFirstname = SFirstname;
    }

    public String getSGender() {
        return SGender;
    }

    public void setSGender(String SGender) {
        this.SGender = SGender;
    }

    public String getSGraduation() {
        return SGraduation;
    }

    public void setSGraduation(String SGraduation) {
        this.SGraduation = SGraduation;
    }

    public String getSId() {
        return SId;
    }

    public void setSId(String SId) {
        this.SId = SId;
    }

    public String getSImage() {
        return SImage;
    }

    public void setSImage(String SImage) {
        this.SImage = SImage;
    }

    public String getSLastname() {
        return SLastname;
    }

    public void setSLastname(String SLastname) {
        this.SLastname = SLastname;
    }

    public String getSMother() {
        return SMother;
    }

    public void setSMother(String SMother) {
        this.SMother = SMother;
    }

    public String getSSession() {
        return SSession;
    }

    public void setSSession(String SSession) {
        this.SSession = SSession;
    }

    public String getSState() {
        return SState;
    }

    public void setSState(String SState) {
        this.SState = SState;
    }

    public String getSTenth() {
        return STenth;
    }

    public void setSTenth(String STenth) {
        this.STenth = STenth;
    }

    public String getSTwelth() {
        return STwelth;
    }

    public void setSTwelth(String STwelth) {
        this.STwelth = STwelth;
    }
     private String SCity;
     private String SState;
     private String SEmail;
     private String SContact;
     private String SImage;
     private String ImageContentType;

    public String getImageContentType() {
        return ImageContentType;
    }

    public void setImageContentType(String ImageContentType) {
        this.ImageContentType = ImageContentType;
    }

    public String getImageFileName() {
        return ImageFileName;
    }

    public void setImageFileName(String ImageFileName) {
        this.ImageFileName = ImageFileName;
    }
     private String ImageFileName;
     private String STenth;
     private String STwelth;
     private String SGraduation;
    public editStudent() {




    }



    public String execute() throws Exception {

       String fullFileName = null;

      String s= getImageFileName().substring(getImageFileName().indexOf("."));
            String path = request.getRealPath("/stuimage");
            System.out.println(s);
            fullFileName = path +"/"+getSId()+s;
            this.setSImage(getSId()+s);

System.out.println(getImageFileName());
System.out.println(SImage);

        File theFile = new File(fullFileName);
        FileUtils.copyFile(Image, theFile);


        TbStudent g = new TbStudent(getSId(), SFirstname, SLastname, SFather, SMother, SSession, SClass, SGender, SDob, SAddress, SCity, SState, SEmail, SContact, SImage, STenth, STwelth, SGraduation);
        //g.setSImage(fullFileName);
        g.updateRecord(g);
        TbStudent student = new TbStudent();
student=student.student(session.get("user").toString());
System.out.println(student);
application.put("stu",student);

        return SUCCESS;

    }

    public void setServletRequest(HttpServletRequest hsr) {
        request=hsr;
    }

    public void setApplication(Map map) {
        application= map;
    }

    public void setSession(Map map) {
       session=map;
    }



}