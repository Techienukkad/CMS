
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */




package com.cms.action;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;



public class Download extends ActionSupport implements ServletRequestAware{


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

    public Download() {

    }

    public String execute() throws Exception {

        System.out.print(fileName);
       String path = request.getRealPath("notice/"+fileName) ;
        file1 =  new FileInputStream(new File(path));
	    return SUCCESS;

    }

    public void setServletRequest(HttpServletRequest hsr) {
        request = hsr;
    }



}