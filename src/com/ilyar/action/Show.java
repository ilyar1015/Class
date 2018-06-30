package com.ilyar.action;

import com.ilyar.bean.ClassList;
import com.ilyar.sql.AllClass;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;

public class Show  extends ActionSupport {
    public ArrayList<ClassList> getCl() {
        return cl;
    }

    public void setCl(ArrayList<ClassList> cl) {
        this.cl = cl;
    }

    ArrayList<ClassList> cl=new ArrayList<ClassList>();


    @Override
    public String execute() throws Exception {
        cl=new AllClass().showClass();
        return SUCCESS;
    }
}
