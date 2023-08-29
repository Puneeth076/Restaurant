package com.helpers;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconfig {
private static Connection conn = null;
	
	public static Connection getConnection() {
		
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant?openSSL=false", "root", "puneeth076");
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
