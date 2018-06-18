package com.ilyar.db;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;  
import java.sql.DriverManager;   
import java.sql.SQLException;
public class LinkSql {
	//��½�������ݿ�
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
            Class.forName(name);//ָ����������  
            conn = DriverManager.getConnection(url, user, password);//��ȡ����
            System.out.println("���ݿ����ӳɹ�");
        } catch (Exception e) {
            e.printStackTrace();  
        }  
    }  
	
	//����ɾ������
	public void changeMySqlDate(String sql) {
		try {
			insertData=0;
			System.out.println("���յ��Ĳ���Ϊ��"+sql);
			pst=conn.prepareStatement(sql);
			insertData=pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//��ѯ������
	public ResultSet selectSqlDate(String sql) {
		try {
			System.out.println("���ܲ�ѯ��䣺"+sql);
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

	//�ر�mysql
	public void closeMySql() {
		try {  
            this.conn.close();   
        } catch (SQLException e) {  
            e.printStackTrace();  
        }
	}
	
	
	//�ر����ݱ�
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

