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
        <div class="card p-5">
          <h1>Total foods</h1>
          <span class="fs-1 fw-bold text-center" style="color: orange">25</span>
        </div>
        <div class="card p-5">
          <h1>Total chefs</h1>
          <span class="fs-1 fw-bold text-center" style="color: orange">20</span>
        </div>
        <div class="card p-5">
          <h1>Total tables</h1>
          <span class="fs-1 fw-bold text-center" style="color: orange">50</span>
        </div>
      </div>
      <div class=" mt-5 ms-5 position-sticky top-50">
        <h1 class="fs-1 fw-bold">Recent order's</h1>
        <hr/>
        <table class="table table-striped w-100">
          <thead>
            <tr>
              <th scope="col">Sl.no</th>
              <th scope="col">table id</th>
              <th scope="col">Orders</th>
              <th scope="col">Payment status</th>
              <th scope="col">Timimgs</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td>12:50</td>
              <td><div>
                <button class="btn">
                  <img src="./images/view.svg" alt="view" />
                </button>
                <button class="btn">
                  <img src="./images/delete.svg" alt="view" />
                </button>
              </div></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>1</td>
              <td>
                <ol>
                  <li>Pizza</li>
                  <li>Burger</li>
                </ol>
              </td>
              <td>true</td>
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
      </div>
    </div>
</body>
</html>