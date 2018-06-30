package com.ilyar.sql;

import com.ilyar.db.LinkSql;

import java.sql.ResultSet;

public class RegisterUser {
    private LinkSql ls=null;
    private String sql=null;
    private ResultSet rs=null;
    public RegisterUser(){
        ls=new LinkSql();
    }
    public boolean register(String name,String password,String id,String institute,String stuClass,String grade){
        sql=String.format("insert student value('%s','%s','%s','%s','%s','%s')",id,name,password,institute,grade,stuClass);
        ls.changeMySqlDate(sql);
        if(ls.getChangeMySqlDate()==0){
            return false;
        }else{
            return true;
        }
    }
}
