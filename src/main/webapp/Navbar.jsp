<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@include file="Links.html" %>
</head>
<body>
<!-- navbar -->

    <div class="bg-black position-sticky top-0 z-3" id="navbar">
      <nav class="containers">
        <h1 class="logo-container">
          <img
            class="logo"
            src="./images/logo.jpg"
            alt="logo"
            width="50"
            height="50"
          />
          <a class="brand" style="font-family: 'Pacifico'" href="/Restaurant/">Smile</a>
        </h1>
        <div class="search">
          <input
            class=""
            placeholder=" Search your "
            type="search"
            name="search"
            id="search"
          />
        </div>
        
        <div class="nav-links" id="navbarSupportedContent">
          <ul class="nav-item">
            <li class="nav-link"><a href="/Restaurant/">Home</a></li>
            <li class="nav-link"><a href="/Restaurant/#heroSection">Products</a></li>
            <li class="nav-link"><a href="/Restaurant/chefsList.jsp">Chefs</a></li>
            <li class="nav-link"><a href="/Restaurant/#aboutus">About us</a></li>
            <li class="nav-link"><a href="/Restaurant/#contactUs">Contact us</a></li>
          </ul>
          <%
          	if(session.getAttribute("status") != null){
          		%>
          		<a href="/Restaurant/dashboard.jsp">
          		<h3 class="text-white">
          		<span class="far fa-user"></span>
          		<%= session.getAttribute("status") %>
          		</h3>
          		</a>
          		<form action="logoutuser" method="post">			  
          			<button class="primary_button">Logout</button>
          		</form>
          		<%
          		
          	}else{
          		%>
          		
        	  <a href="/Restaurant/login.jsp">			  
          			<button class="primary_button">Admin Login</button>
          		</a>
          		<%
          	}
          %>
          
        	  
          
        </div>
        
      </nav>
    </div>
</body>