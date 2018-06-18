package com.ilyar.db;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;  
import java.sql.DriverManager;   
import java.sql.SQLException;
public class LinkSql {
	//登陆本地数据库
	private static final String url = "jdbc:mysql://127.0.0.1:3306/class";
	private  static final String user = "root";  
	private  static final String password = "root";
	private static ResultSet ret = null;
	private  static final String name = "com.mysql.jdbc.Driver";
    private Connection conn = null;  
    private PreparedStatement pst = null;
    private int insertData=0;
	public  LinkSql() {  
        try {  
            Class.forName(name);//指定连接类型  
            conn = DriverManager.getConnection(url, user, password);//获取连接
            System.out.println("数据库链接成功");
        } catch (Exception e) {
            e.printStackTrace();  
        }  
    }  
	
	//插入删除操作
	public void changeMySqlDate(String sql) {
		try {
			insertData=0;
			System.out.println("接收到的参数为："+sql);
			pst=conn.prepareStatement(sql);
			insertData=pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询及其他
	public ResultSet selectSqlDate(String sql) {
		try {
			System.out.println("接受查询语句："+sql);
			pst=conn.prepareStatement(sql);
			ret = pst.executeQuery();
			return ret;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} 
	}

	public int getChangeMySqlDate(){
		return insertData;
	}

	//关闭mysql
	public void closeMySql() {
		try {  
            this.conn.close();   
        } catch (SQLException e) {  
            e.printStackTrace();  
        }
	}
	
	
	//关闭数据表
    @SuppressWarnings("static-access")
	public void closeChart() {  
        try {    
            this.pst.close();
            this.ret.close();
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }
}

