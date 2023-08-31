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
      <div style="margin-left:16.5%;" class="fs-1">
      <div class="ms-5">
      	<div class="w-100 h-100">
      <div class="h-25 d-flex justify-content-around mt-5">
          <%
          	Connection connection = DBconfig.getConnection();
          	String TOTAL_FOODS = "select count(id) from food";
          	String TOTAL_CHEFS = "select count(id) from chefs";
          	String TOTAL_TABLES = "select count(id) from tables";
          	
          	PreparedStatement ps = connection.prepareStatement(TOTAL_FOODS);
          	PreparedStatement ps1 = connection.prepareStatement(TOTAL_CHEFS);
          	PreparedStatement ps2 = connection.prepareStatement(TOTAL_TABLES);
          	
          	ResultSet foods = ps.executeQuery();
          	ResultSet chefs = ps1.executeQuery();
          	ResultSet tables = ps2.executeQuery();
          	while(foods.next() & chefs.next() & tables.next()){
          	
          		%>
          		
          		<div class="card p-5">
          		<h1>Total foods</h1>
          <span class="fs-1 fw-bold text-center" style="color: orange"><%=foods.getInt("count(id)") %></span>
        </div>
        <div class="card p-5">
          <h1>Total chefs</h1>
          <span class="fs-1 fw-bold text-center" style="color: orange"><%=chefs.getInt("count(id)") %></span>
        </div>
        <div class="card p-5">
          <h1>Total tables</h1>
          <span class="fs-1 fw-bold text-center" style="color: orange"><%=tables.getInt("count(id)") %></span>
        </div>
          		<%
          		
          	}
          	
          %>
        
      </div>
      <div class=" mt-5 ms-5 position-sticky top-50">
        <h1 class="fs-1 fw-bold">Recent order's</h1>
        <hr/>
        <table class="w-100">
        <thead>
          <tr>
            <th scope="col">Sl.no</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">orders</th>
            <th scope="col">delivered status</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody class="fs-2 gap-2">
        <%
        String GET_ALL_ORDERS = "select * from orders";
		Connection conn = DBconfig.getConnection();
		PreparedStatement preparedStatement = conn.prepareStatement(GET_ALL_ORDERS);
		ResultSet resultSet = preparedStatement.executeQuery();
		int i=1;
		while(resultSet.next()) {
		
			%>
			<tr class="align-items-center">
            <th scope="row"><%=i++ %></th>
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("email") %></td>
            <td><%=resultSet.getString("phone")%></td>
            	<td>
            		<ol>
            <%
            
            String string = resultSet.getString("foods");
            String[] parts = string.split(",");
            for(int j=0;j<parts.length;j++){
            	%>
            		<li><%=parts[j] %></li>	
            	<%
            }
            %>
            		</ol>
            	</td>
            <td><%=resultSet.getBoolean("delivaryStatus") %></td>
            <td>
              <div>
                <button class="btn">
                  <img src="./images/view.svg" alt="view" />
                </button>
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
    </div>
</body>
</html>