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
<%@include file="Links.html" %>
<title>Chefs</title>
<style>
      .cards {
        display: flex;
        flex-wrap: wrap;
        
        justify-content: space-evenly;
        gap: 2rem;
        
      }
      .pro{
      	display: flex;
    width: 25%;
    flex-direction: column;
    box-shadow: 0 0 8px 0.5px black;
    padding: 20px;
      }
      .text{
      	font-size:5rem !important;
      	margin-bottom:5rem;
      }
    </style>
</head>
<body>


<%@include file="Navbar.jsp" %>
	
	<h1 class="text-center mt-5 fw-bold pt-5 text" style="color: orange">--Our chefs--</h1>
    <div class="cards fs-1">
    <%
    	Connection conn= DBconfig.getConnection();
    	PreparedStatement ps = conn.prepareStatement("select * from chefs");
    	ResultSet rs = ps.executeQuery();
    	while(rs.next()){
    		%>
    		
      <div class="card pro">
        <div class="card-header">
          <img
            class=""
            src="./chefs/<%=rs.getString("profile") %>"
            alt=""
            width="100"
            height="100"
          />
          <h1><%=rs.getString("name") %></h1>
        </div>
        <div class="card-body">
          <h3><%=rs.getString("designation") %></h3>
        </div>
      </div>
    		<%
    	}
    %>
      </div>
	

</body>
</html>