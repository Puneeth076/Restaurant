package com.entity;

public class ordersEntity {

	private String nameString;
	private String emailString;
	private String phoneString;
	private String foodString;
	private boolean deliveryStatus;
	private int tableId;
	public ordersEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ordersEntity(String nameString, String emailString, String phoneString, String foodString,
			boolean deliveryStatus, int tableId) {
		super();
		this.nameString = nameString;
		this.emailString = emailString;
		this.phoneString = phoneString;
		this.foodString = foodString;
		this.deliveryStatus = deliveryStatus;
		this.tableId = tableId;
	}
	public String getNameString() {
		return nameString;
	}
	public void setNameString(String nameString) {
		this.nameString = nameString;
	}
	public String getEmailString() {
		return emailString;
	}
	public void setEmailString(String emailString) {
		this.emailString = emailString;
	}
	public String getPhoneString() {
		return phoneString;
	}
	public void setPhoneString(String phoneString) {
		this.phoneString = phoneString;
	}
	public String getFoodString() {
		return foodString;
	}
	public void setFoodString(String foodString) {
		this.foodString = foodString;
	}
	public boolean getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(boolean deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public int getTableId() {
		return tableId;
	}
	public void setTableId(int tableId) {
		this.tableId = tableId;
	}
	
	
	
	
}
