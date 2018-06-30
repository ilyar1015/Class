package com.ilyar.action;

import com.ilyar.sql.RegisterUser;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class Register extends ActionSupport {
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass;
    }

    private String name;
    private String password;
    private String id;
    private String institute;
    private String grade;
    private String stuClass;

    public String execute(){
        HttpServletRequest request = ServletActionContext.getRequest();
        if(new RegisterUser().register(name,password,id,institute,stuClass,grade)){
            return SUCCESS;
        }else{
            return INPUT;
        }
    }
}
