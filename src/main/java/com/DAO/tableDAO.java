package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class tableDAO {

	private Connection connection=null;

	public tableDAO(Connection connection) {
		super();
		this.connection = connection;
	}
	boolean result = false;
	public boolean addtable(int id, String fileName) {
		
		try {
			
			String ADD_TABLE = "insert into tables(id, qrcode) value(?,?);";
			PreparedStatement preparedStatement = connection.prepareStatement(ADD_TABLE);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, fileName);
			
			int count = preparedStatement.executeUpdate();
			
			if(count > 0) {
				result = true;
			}
			
		} catch (Exception e) {
e.printStackTrace();		}
		
		
		return result;
	}
}
