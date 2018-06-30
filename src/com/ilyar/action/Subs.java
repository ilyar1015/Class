package com.ilyar.action;

import com.ilyar.sql.AllClass;
import com.opensymphony.xwork2.ActionSupport;

public class Subs   extends ActionSupport {
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String id;
    @Override
    public String execute() throws Exception {
        if(new AllClass().checkClass(id)){
            return SUCCESS;
        }else{
            return INPUT;
        }

    }
}
