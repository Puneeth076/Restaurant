package com.entity;

public class chefEntity {
	public chefEntity(int id, String nameString, String designationString) {
		super();
		this.id = id;
		this.nameString = nameString;
		this.designationString = designationString;
	}
	private int id;
	private String nameString;
	private String designationString;
	private String profileString;
	public chefEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public chefEntity(int id, String nameString, String designationString, String profileString) {
		super();
		this.id = id;
		this.nameString = nameString;
		this.designationString = designationString;
		this.profileString = profileString;
	}
	public chefEntity(String nameString, String designationString, String profileString) {
		super();
		this.nameString = nameString;
		this.designationString = designationString;
		this.profileString = profileString;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNameString() {
		return nameString;
	}
	public void setNameString(String nameString) {
		this.nameString = nameString;
	}
	public String getDesignationString() {
		return designationString;
	}
	public void setDesignationString(String designationString) {
		this.designationString = designationString;
	}
	public String getProfileString() {
		return profileString;
	}
	public void setProfileString(String profileString) {
		this.profileString = profileString;
	}
	@Override
	public String toString() {
		return "chefEntity [id=" + id + ", nameString=" + nameString + ", designationString=" + designationString
				+ ", profileString=" + profileString + "]";
	}
	

}
