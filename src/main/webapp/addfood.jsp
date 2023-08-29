<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="com.helpers.DBconfig"%>
<%@page import="com.DAO.foodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add food</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<%@include file="Navbar.jsp" %>
<a href="/Restaurant/foodlist.jsp">
<h1 class="ms-4 mt-3 btn fs-1">👈Back</h1>
</a>
<div
      class=" d-flex justify-content-center fs-2 align-items-center flex-column"
    >
      <h1 class="mb-5">Add Food</h1>
      <form class="w-50 h-75 shadow p-4 me-0" method="post" action="addfood">
      <div class="input-group mb-3">
  <div class="input-group-prepend gap-5">
    <label class="input-group-text w-100 h-100" for="inputGroupSelect01">Category</label>
    <label class="input-group-text w-100 h-100 mb-3" for="inputGroupSelect02">
    <a href="/Restaurant/addCategory.jsp">
    Add category
    </a>
    </label>
  </div>
  <select name="category" class="custom-select w-100 h-100" id="inputGroupSelect01">
  <%
  	if(session.getAttribute("category") != null){
  		%>
  		<option selected><%=session.getAttribute("category") %> </option>
  		<%
  	}else{
	%>
    <option selected>Choose...</option>
	<%  		
  	}
  %>
  <hr/>
    <%
    String GET_CATEGORY = "select * from category";
	PreparedStatement preparedStatement = DBconfig.getConnection().prepareStatement(GET_CATEGORY);
	
	ResultSet rSet = preparedStatement.executeQuery();
	
	while(rSet.next()) {
		
	
    			%>
    			
    			<option ><%= rSet.getString("category_name") %></option>
    			<%
    			}
    %>
    
  </select>
</div>
        <div class="form-group p-2">
          <label for="item-name">Food Name</label>
          <input
            type="text"
            name="foodname"
            class="form-control p-3 fs-2"
            id="item-name"
            placeholder="Enter item name"
          />
        </div>
        <div class="form-group p-2">
          <label for="item-description">Food Description</label>
          <textarea
            class="form-control  p-3 fs-2"
            id="item-description"
            name="food_description"
            rows="3"
            placeholder="Enter item description"
          ></textarea>
        </div>
        <div class="form-group p-2">
          <label for="item-price">Food Price</label>
          <input
            type="number"
            class="form-control  p-3 fs-2"
            name="food_prize"
            id="item-price"
            placeholder="Enter item price"
          />
        </div>
        <div class="form-group p-2">
          <label for="item-price">Food Image</label>
          <input
            type="file"
            name="food_image"
            class="form-control  p-3 fs-2"
            id="item-image"
            placeholder="Add item image"
          />
        </div>
        <div class="p-2 d-flex justify-content-center align-items-center">
          <button
            type="submit"
            class="btn btn-primary p-2 fs-2 w-100 d-flex justify-content-center align-items-center"
          >
            Add Food
          </button>
        </div>
      </form>
    </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>