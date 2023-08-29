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
      <div class="card pro">
        <div class="card-header">
          <img
            class=""
            src="./images/logo.jpg"
            alt=""
            width="100"
            height="100"
          />
          <h1>name</h1>
        </div>
        <div class="card-body">
          <h3>designation</h3>
        </div>
      </div>
      <div class="card pro">
        <div class="card-header">
          <img src="./images/logo.jpg" alt="" width="100" height="100" />
          <h1>name</h1>
        </div>
        <div class="card-body">
          <h3>designation</h3>
        </div>
      </div>
      <div class="card pro">
        <div class="card-header">
          <img src="./images/logo.jpg" alt="" width="100" height="100" />
          <h1>name</h1>
        </div>
        <div class="card-body">
          <h3>designation</h3>
        </div>
      </div>
    </div>
	

</body>
</html>