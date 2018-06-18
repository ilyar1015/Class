package com.ilyar.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class Demo extends ActionSupport {


    public void setText(String text) {
        this.text = text;
    }

    String text;
    public String execute(){

        HttpServletRequest request = ServletActionContext.getRequest();
        String name = request.getParameter("text");
        System.out.println("这里我们会收到一些数据的"+name);
        return SUCCESS;
    }

}
