package com.entity;

public class foodentity {

	private int id;
	private String foodNameString;
	private String fooddescriptionString;
	private int foodPrize;
	private String foodImage;
	private String foodcategory;
	public foodentity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFoodNameString() {
		return foodNameString;
	}
	public void setFoodNameString(String foodNameString) {
		this.foodNameString = foodNameString;
	}
	public String getFooddescriptionString() {
		return fooddescriptionString;
	}
	public void setFooddescriptionString(String fooddescriptionString) {
		this.fooddescriptionString = fooddescriptionString;
	}
	public int getFoodPrize() {
		return foodPrize;
	}
	public void setFoodPrize(int foodPrize) {
		this.foodPrize = foodPrize;
	}
	public String getFoodImage() {
		return foodImage;
	}
	public void setFoodImage(String foodImage) {
		this.foodImage = foodImage;
	}
	public String getFoodcategory() {
		return foodcategory;
	}
	public void setFoodcategory(String foodcategory) {
		this.foodcategory = foodcategory;
	}
	public foodentity(int id, String foodNameString, String fooddescriptionString, int foodPrize, String foodImage,
			String foodcategory) {
		super();
		this.id = id;
		this.foodNameString = foodNameString;
		this.fooddescriptionString = fooddescriptionString;
		this.foodPrize = foodPrize;
		this.foodImage = foodImage;
		this.foodcategory = foodcategory;
	}
	public foodentity(int id, String foodNameString, String fooddescriptionString, int foodPrize, String foodcategory) {
		super();
		this.id = id;
		this.foodNameString = foodNameString;
		this.fooddescriptionString = fooddescriptionString;
		this.foodPrize = foodPrize;
		this.foodcategory = foodcategory;
	}
	public foodentity(String foodNameString, String fooddescriptionString, int foodPrize, String foodImage,
			String foodcategory) {
		super();
		this.foodNameString = foodNameString;
		this.fooddescriptionString = fooddescriptionString;
		this.foodPrize = foodPrize;
		this.foodImage = foodImage;
		this.foodcategory = foodcategory;
	}
	
}
