package com.ilyar.sql;

import com.ilyar.bean.ClassList;
import com.ilyar.db.LinkSql;

import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AllClass {
    LinkSql ls=null;
    ResultSet rs=null;
    public AllClass(){
        ls=new LinkSql();
    }
    public ArrayList<ClassList> showClass() throws SQLException {
        ArrayList<ClassList> cl=new ArrayList<ClassList>();
        String sql="select * from class";
        rs=ls.selectSqlDate(sql);
        while (rs.next()){
            ClassList li=new ClassList();
            li.setId(rs.getString("ClassId"));
            li.setClassBuild(rs.getString("ClassBuild"));
            li.setClassStart(rs.getString("ClassStart"));
            li.setClassEnd(rs.getString("ClassEnd"));
            li.setClassUsing(rs.getString("ClassUsing"));
            li.setClassUsingId(rs.getString("ClassUsingId"));
            li.setClassRemark(rs.getString("ClassRemark"));
            cl.add(li);
        }
        return cl;
    }

    public boolean checkClass(String id) throws SQLException {
        String sql=String.format("select * from class where ClassId='%s' and ClassUsing=0",id);
        rs=ls.selectSqlDate(sql);
        if(rs.next()){
            return true;
        }else{
            return false;
        }
    }
}
