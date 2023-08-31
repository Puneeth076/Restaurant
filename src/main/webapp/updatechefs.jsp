<%@page import="java.sql.ResultSet"%>
<%@page import="com.helpers.DBconfig"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update chef</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%
	if(session.getAttribute("status") == null){
		response.sendRedirect("/Restaurant/login.jsp");
	}
%>

<%@include file="Navbar.jsp" %>
<a href="/Restaurant/chefs.jsp">
<h1 class="ms-4 mt-3 btn fs-1">👈Back</h1>
</a>
<div
      class=" vh-100 d-flex justify-content-center fs-2 align-items-center flex-column"
    >
      <h1 class="mb-5">Update chef</h1>
      <%
      int id  = Integer.parseInt(request.getParameter("id"));
      PreparedStatement ps = DBconfig.getConnection().prepareStatement("select * from chefs where id=?");
      ps.setInt(1, id);
      ResultSet rs = ps.executeQuery();
      while(rs.next()){
    	  %>
    	  <form class="w-50 h-75 shadow p-4 me-0" method="post" action="updatechef?id=<%=id %>" enctype="multipart/form-data">
        <div class="form-group p-2">
          <label for="item-name">Chef Name</label>
          <input
          	name="name"
            type="text"
            value="<%=rs.getString("name") %>"
            class="form-control p-3 fs-2"
            id="item-name"
            placeholder="Enter chef name"
          />
        </div>
        <div class="form-group p-2">
          <label for="item-description">Chef designation</label>
          <textarea
          	name="description"
          	
            class="form-control  p-3 fs-2"
            id="item-description"
            rows="3"
            placeholder="Enter chef designation"
          ><%=rs.getString("designation") %>
          </textarea>
        </div>
        
        <div class="form-group p-2">
          <label for="item-price">Chef Profile</label>
          <input
          	name="profile"
            type="file"
            value="<%=rs.getString("designation") %>"
            class="form-control  p-3 fs-2"
            id="item-image"
            placeholder="Add chef image"
          />
          <img src="./chefs/<%=rs.getString("profile") %>" />
        </div>
        <div class="p-2 d-flex justify-content-center align-items-center">
          <button
            type="submit"
            class="btn btn-primary p-2 fs-2 w-100 d-flex justify-content-center align-items-center"
          >
            Update Chef
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