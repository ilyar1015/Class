package com.ilyar.action;
import com.ilyar.sql.CheckLogin;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;
public class Login extends ActionSupport {
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    private String type;
    private String username;
    private String password;
    public String execute(){
        HttpServletRequest request = ServletActionContext.getRequest();
        if(request.getSession().getAttribute("loginname")!=null){
            return SUCCESS;
        }else if(type==null||username==null||password==null){
            return INPUT;
        }
        System.out.println("Type="+type+" username="+username+" password="+password);
        if (new CheckLogin().userLogin(username,password,type)) {
            request.getSession().setAttribute("loginname", username);
            request.getSession().setAttribute("type", type);
            System.out.println("yes");
            return SUCCESS;
        } else {
            System.out.println("no");
            request.setAttribute("login", "用户名或密码错误");
            return INPUT;
        }
    }
}



