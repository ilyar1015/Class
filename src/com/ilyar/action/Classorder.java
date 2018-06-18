package com.ilyar.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class Classorder extends ActionSupport {
    public String execute(){
        HttpServletRequest request = ServletActionContext.getRequest();
        return SUCCESS;
    }
}
