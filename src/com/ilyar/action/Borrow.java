package com.ilyar.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
public class Borrow  extends ActionSupport {
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getClassUsingId() {
        return classUsingId;
    }

    public void setClassUsingId(String classUsingId) {
        this.classUsingId = classUsingId;
    }

    public String getClassRemark() {
        return classRemark;
    }

    public void setClassRemark(String classRemark) {
        this.classRemark = classRemark;
    }

    private String startTime;
    private String endTime;
    private String classUsingId;
    private String classRemark;
    public String execute(){
        HttpServletRequest request = ServletActionContext.getRequest();
        if(startTime.equals("")&&endTime.equals("")&&classUsingId.equals("")&&classRemark.equals("")){
            return INPUT;
        }else{
            return SUCCESS;
        }
    }
}
