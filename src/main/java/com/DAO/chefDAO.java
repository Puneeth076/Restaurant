package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.chefEntity;

public class chefDAO {
	
	private Connection connection =null;

	public chefDAO(Connection connection) {
		super();
		this.connection = connection;
	}
	
	
	public boolean addchef(chefEntity chefEntity) {
		boolean f=false;
		try {
			
			
			String QUERY ="insert into chefs(name,designation,profile) value(?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(QUERY);
			preparedStatement.setString(1,chefEntity.getNameString());
			preparedStatement.setString(2,chefEntity.getDesignationString());
			preparedStatement.setString(3,chefEntity.getProfileString());
			int count=preparedStatement.executeUpdate();
			if(count>0) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	public boolean updateChef(chefEntity chefEntity) {
		boolean f=false;
		try {
			
			
			String QUERY ="update chefs set name=?,designation=? where id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(QUERY);
			preparedStatement.setString(1,chefEntity.getNameString());
			preparedStatement.setString(2,chefEntity.getDesignationString());
			preparedStatement.setInt(3, chefEntity.getId());
			int count=preparedStatement.executeUpdate();
			if(count>0) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	

}
