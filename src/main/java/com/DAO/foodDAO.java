package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class foodDAO {

	private Connection connection=null;

	public foodDAO(Connection connection) {
		super();
		this.connection = connection;
	}
	boolean result=false;
	public boolean addCategory(String name) {
		
		try {
			
			String INSERT_CATEGORY = "insert into category(category_name) value(?)";
			
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CATEGORY);
			preparedStatement.setString(1, name);
			
			int count = preparedStatement.executeUpdate();
			
			if(count > 1) {
				result=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();	
			System.out.println("Error in DAO");
		}
		
		return result;
		
	}
	
	public List<String> getCategory(){
		List<String> list = new ArrayList<>();
		
		
		try {
		
			String GET_CATEGORY = "select * from category";
			PreparedStatement preparedStatement = connection.prepareStatement(GET_CATEGORY);
			
			ResultSet rSet = preparedStatement.executeQuery();
			
			while(rSet.next()) {
				list.add(rSet.getString("category_name"));
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return list;
	}
	
}
