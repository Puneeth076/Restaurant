<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.helpers.DBconfig"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<%@include file="Links.html" %>
</head>
<body>
<%
	if(session.getAttribute("status") == null){
		response.sendRedirect("/Restaurant/login.jsp");
	}
%>

<%@include file="Navbar.jsp" %>
<div class="d-flex">
      <div style="width:25%;">
      	<%@include file="Sidebar.html" %>
      </div>
      <div style="margin-left:16.5%;" class="fs-2">
      <div class="m-5">
      <h1 class="text-center">Chef's List</h1>
      <a href="/Restaurant/addchef.jsp" >
      <button class="btn btn-primary fs-2">Add chef</button>
      </a>
      <table class="table table-striped table-hover mt-5">
        <thead>
          <tr>
            <th scope="col">Sl.no</th>
            <th scope="col">image</th>
            <th scope="col">name</th>
            <th scope="col">Designation</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
        <%
        
        Connection connection = DBconfig.getConnection();
        
        PreparedStatement pst = connection.prepareStatement("select * from chefs");
        
		ResultSet rs = pst.executeQuery();
		int i=1;
		while(rs.next()){
			%>
			<tr class="align-items-center">
            <th scope="row"><%=i++ %></th>
            <td><img style="border-radius:50%" src="./chefs/<%=rs.getString("profile") %>" width="40" height="40" /></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("designation") %></td>
            <td>
              <div>
              <a href="/Restaurant/updatechefs.jsp?id=<%=rs.getInt("id")%>">
                <button class="btn">
                  <img src="./images/view.svg" alt="view" />
                </button>
              </a>
                <button class="btn">
                  <img src="./images/delete.svg" alt="view" />
                </button>
              </div>
            </td>
          </tr>
			<%
			
		}
        
        
        %>
          
         
        </tbody>
      </table>
    </div>
      </div>
    </div>
</body>
</html>