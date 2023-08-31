package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.ordersEntity;
import com.helpers.DBconfig;

public class ordersDAO {

	private  Connection conn=null;

	public ordersDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	boolean status = false;
	public boolean addOrder(ordersEntity ordersEntity) {
		
		try {
			
			String ADD_QUERY = "insert into orders(name, email, phone, tableid, foods, delivaryStatus) value(?,?,?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement(ADD_QUERY);
			preparedStatement.setString(1, ordersEntity.getNameString());
			preparedStatement.setString(2, ordersEntity.getEmailString());
			preparedStatement.setString(3, ordersEntity.getPhoneString());
			preparedStatement.setInt(4, ordersEntity.getTableId());
			preparedStatement.setString(5, ordersEntity.getFoodString());
			preparedStatement.setBoolean(6, ordersEntity.getDeliveryStatus());
			int count = preparedStatement.executeUpdate();
			if(count > 0) {
				status=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	public List<ordersEntity> getAllOrders() {
		List<ordersEntity> list = new ArrayList<>();
		
		ordersEntity ordersEntity=new ordersEntity();
		try {
			
			String GET_ALL_ORDERS = "select * from orders";
			
			PreparedStatement preparedStatement = conn.prepareStatement(GET_ALL_ORDERS);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				ordersEntity.setNameString(resultSet.getString("name"));
				ordersEntity.setEmailString(resultSet.getString("email"));
				ordersEntity.setPhoneString(resultSet.getString("phone"));
				ordersEntity.setTableId(resultSet.getInt("tableid"));
				ordersEntity.setFoodString(resultSet.getString("foods"));
				ordersEntity.setDeliveryStatus(resultSet.getBoolean("delivaryStatus"));
				list.add(ordersEntity);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
}
