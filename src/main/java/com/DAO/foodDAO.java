package com.DAO;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.foodentity;

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
	
	public boolean addfood(foodentity foodentity) {
		
		
		try {
			
			String INSER_FOOD = "insert into food(category,foodName,foodDescription,foodPrize,foodImage) value(?,?,?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(INSER_FOOD);
			preparedStatement.setString(1, foodentity.getFoodcategory());
			preparedStatement.setString(2, foodentity.getFoodNameString());
			preparedStatement.setString(3, foodentity.getFooddescriptionString());
			preparedStatement.setInt(4, foodentity.getFoodPrize());
			preparedStatement.setString(5, foodentity.getFoodImage());
			
			int count = preparedStatement.executeUpdate();
			if(count > 0) {
				result=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	public Map<String, Map<String,Integer>> getMenu(){
	
		Map<String, Map<String,Integer>> category_name = new HashMap<>();
		
		
		PreparedStatement ps;
		try {
			ps = connection.prepareStatement("select * from category");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				PreparedStatement preparedStatement = connection.prepareStatement("select category_name, foodName,foodPrize from category c, food f where c.category_name = f.category");
				ResultSet resultSet = preparedStatement.executeQuery();
				Map<String, Integer> foodsMap = new HashMap<>();
				while(resultSet.next()) {
					if(rs.getString("category_name").equals(resultSet.getString("category_name"))) {
							foodsMap.put(resultSet.getString("foodName"), resultSet.getInt("foodPrize"));
					}
				}
				category_name.put(rs.getString("category_name"), foodsMap);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return category_name;
		
		
	}
	
	public boolean updatefood(foodentity foodentity) {
try {
			
			String INSER_FOOD = "update food set category =?,foodName=?,foodDescription=?,foodPrize=? where id=?";
			PreparedStatement preparedStatement = connection.prepareStatement(INSER_FOOD);
			preparedStatement.setString(1, foodentity.getFoodcategory());
			preparedStatement.setString(2, foodentity.getFoodNameString());
			preparedStatement.setString(3, foodentity.getFooddescriptionString());
			preparedStatement.setInt(4, foodentity.getFoodPrize());
			preparedStatement.setInt(5, foodentity.getId());
			
			int count = preparedStatement.executeUpdate();
			if(count > 0) {
				result=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
