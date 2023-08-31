<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
      .wrapper {
        max-width: 350px;
        min-height: 500px;
        margin: 80px auto;
        padding: 40px 30px 30px 30px;
        background-color: #ecf0f3;
        border-radius: 15px;
        box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #fff;
      }

      .logo {
        width: 80px;
        margin: 0 37%;
      }

      .logo img {
        width: 100%;

        height: 80px;
        object-fit: cover;
        border-radius: 50%;
        box-shadow: 0px 0px 3px #5f5f5f, 0px 0px 0px 5px #ecf0f3,
          8px 8px 15px #a7aaa7, -8px -8px 15px #fff;
      }

      .wrapper .name {
        font-weight: 600;
        font-size: 1.4rem;
        letter-spacing: 1.3px;
        padding-left: 10px;
        color: #555;
      }

      .wrapper .form-field input {
        width: 100%;
        display: block;
        border: none;
        outline: none;
        background: none;
        font-size: 1.2rem;
        color: #666;
        padding: 10px 15px 10px 10px;
        /* border: 1px solid red; */
      }

      .wrapper .form-field {
        padding-left: 10px;
        margin-bottom: 20px;
        border-radius: 20px;
        box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff;
      }

      .wrapper .form-field .fas {
        color: #555;
      }

      .wrapper .btn {
        box-shadow: none;
        width: 100%;
        height: 40px;
        border-radius: 25px;
        box-shadow: 3px 3px 3px #b1b1b1, -3px -3px 3px #fff;
        letter-spacing: 1.3px;
      }

      .wrapper .btn:hover {
        background-color: #039be5;
      }

      .wrapper a {
        text-decoration: none;
        font-size: 0.8rem;
        color: #03a9f4;
      }

      .wrapper a:hover {
        color: #039be5;
      }

      @media (max-width: 380px) {
        .wrapper {
          margin: 30px 20px;
          padding: 40px 15px 15px 15px;
        }
      }

      .body {
        color: white;
      }

      .form-control {
        background-color: rgba(255, 230, 230, 0.361) !important;
      }
      .signtext {
        color: #ec994b;
      }
      .images{
      display:flex;
      align-items:center;
      justify-content:center;
      margin-left:70px;
      	border-radius: 70%;
      }
      
    </style>
<title>success</title>
<%@include file="Links.html" %>
</head>
<body>

	<div class="wrapper">
      <div class="logo d-flex justify-content-center align-items-center">
        <img src="./images/logo.jpg" alt="logo" />
      </div>
      <div class="text-center mt-4 name">SMILE</div>
	
		<h1 class="text-center">Congratulation</h1>        
        <h2 class="text-center my-2"><%=session.getAttribute("user") %></h2>
        <p class="fs-4 text-center"> your order placed successfully </p>
        <img class="images my-3" src="./images/animation.gif" alt="animation"/>
      
    </div>
</body>
</html>