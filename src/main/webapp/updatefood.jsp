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
<title>update food</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%
	if(session.getAttribute("status") == null){
		response.sendRedirect("/Restaurant/login.jsp");
	}
%>

<%@include file="Navbar.jsp" %>
<a href="/Restaurant/foodlist.jsp">
<h1 class="ms-4 mt-3 btn fs-1">👈Back</h1>
</a>
<div
      class=" d-flex justify-content-center fs-2 align-items-center flex-column"
    >
      <h1 class="mb-5">Update Food</h1>
      
      <%
      
      int id =Integer.parseInt(request.getParameter("id"));
      
      String GET_CATEGORY1 = "select * from food where id=?";
  	PreparedStatement preparedStatement1 = DBconfig.getConnection().prepareStatement(GET_CATEGORY1);
  	preparedStatement1.setInt(1, id);
  	ResultSet resultSet = preparedStatement1.executeQuery();
      while(resultSet.next()){
    	 
    	  %>
    	  <form class="w-50 h-75 shadow p-4 me-0" method="post" action="updatefoods?id=<%=id %>" enctype="multipart/form-data">
      <div class="input-group mb-3">
  <div class="input-group-prepend gap-5">
    <label class="input-group-text w-100 h-100" for="inputGroupSelect01">Category</label>
    
  </div>
  <select name="category" class="custom-select w-100 h-100" id="inputGroupSelect01">
    <option selected><%=resultSet.getString("category") %></option>
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
            value="<%=resultSet.getString("foodName") %>"
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
          ><%=resultSet.getString("foodDescription") %>
          </textarea>
        </div>
        <div class="form-group p-2">
          <label for="item-price">Food Price</label>
          <input
            type="number"
            value="<%=resultSet.getInt("foodPrize") %>"
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
			value="<%=resultSet.getString("foodImage") %>"
            placeholder="Add item image"
          />
          <img src="./assets/<%=resultSet.getString("foodImage") %>" width="200" height="200"/>
        </div>
        <div class="p-2 d-flex justify-content-center align-items-center">
          <button
            type="submit"
            class="btn btn-primary p-2 fs-2 w-100 d-flex justify-content-center align-items-center"
          >
            Update Food
          </button>
        </div>
      </form>
    	  <%
    	  
      }
      %>
      
    </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>