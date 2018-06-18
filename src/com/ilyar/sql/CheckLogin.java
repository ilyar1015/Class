package com.ilyar.sql;

import com.ilyar.db.LinkSql;
import jdk.nashorn.internal.codegen.types.Type;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CheckLogin {
    private LinkSql ls=null;
    private String sql=null;
    private ResultSet rs=null;
    public CheckLogin(){
        ls=new LinkSql();
    }
    public boolean userLogin(String username,String password,String type){
        if(type.equals("user")){
            sql=String.format("select * from student where StuId='%s' and StuPassword='%s'",username,password);
        }else if(type.equals("manager")){
            sql=String.format("select * from manager where ManageLoginName='%s' and ManagePassword='%s'",username,password);
        }else{
            return false;
        }
        try {
            rs=ls.selectSqlDate(sql);
            if(rs.next()){
                HttpServletRequest request = ServletActionContext.getRequest();
                if(type.equals("user")){
                    request.getSession().setAttribute("username",rs.getString("StuName"));
                }else{
                    request.getSession().setAttribute("username",rs.getString("ManageName"));
                }
                return true;
            }else{
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
