package com.ilyar.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
 
public class Quit extends ActionSupport {
    public String execute(){
        HttpServletRequest request = ServletActionContext.getRequest();
        request.getSession().invalidate();
        return SUCCESS;
    }
}
