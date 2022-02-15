package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;


public class databaseUtil {
	public Connection conn;	
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	
	public databaseUtil() {
	try {
		
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/MustHave?serverTimezone=UTC";
	String id = "root";
	String pwd = "";
	
//	커넥션 연결
	conn = DriverManager.getConnection(url, id, pwd);
	
	}
	catch (Exception e) {
		e.printStackTrace();
		}
	}
	
	public databaseUtil(String drive,String url, String id ,String pwd)  {
		try {
			
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
//		커넥션 연결
		conn = DriverManager.getConnection(url, id, pwd);
		
		System.out.println("DB 연결 성공 (기본 생성자1)");
		
		}
		catch (Exception e) {
			e.printStackTrace();
			}
		}
		
	public databaseUtil(ServletContext application) {
		try {
			
			String driver = application.getInitParameter("sqlDrive");
			Class.forName("com.mysql.cj.jdbc.Driver");

			// DB연결
			

	    	String url = application.getInitParameter("sqlURL");
	    	String id = application.getInitParameter("sqlId");
	    	String pwd = application.getInitParameter("sqlPwd");
	    	
	    	conn = DriverManager.getConnection(url, id, pwd);
	    
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) stmt.close();
			if(conn != null) stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
