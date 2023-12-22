<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <%@page import="java.util.*"%>
  <title>Dashboard</title>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
  
<style>
*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
  text-decoration: none;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

.container{
  display: flex;
}
nav{
  position: relative;
  top: 0;
  bottom: 0;
  height: 100vh;
  left: 0;
      background-color: #20201f;
  width: 280px;
  overflow: hidden;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
}

nav ul h3 
{
margin-top: 25px;
text-align: center;
color: white;
}
.logo{
  text-align: center;
  display: flex;
  margin: 10px 0 0 10px;
}
.logo img{
  width: 45px;
  height: 45px;
  border-radius: 50%;
}
.logo span{
  font-weight: bold;
  padding-left: 15px;
  font-size: 18px;
  text-transform: uppercase;
}
a{
  position: relative;
  color: white;
  font-size: 14px;
  display: table;
  width: 280px;
  padding: 10px;
}
nav .fas{
  position: relative;
  width: 70px;
  height: 40px;
  top: 14px;
  font-size: 22px;
  text-align: center;
}
.nav-item{
     font-size: 17px;
    position: relative;
    top: 12px;
    margin-left: 10px;
    font-weight: 500;
}
a:hover{
      background: #c6c9cb;
    color: #20201f;
}
.logout{
  position: absolute;
  bottom: 0;
}
.sub-menu {
  display: none;
  position: absolute;
  background-color: black;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  z-index: 1;
}

.sub-menu a {
  color: white;
  padding: 12px 16px;
  display: block;
}

.sub-menu a:hover {
  background-color: #555;
}

/* Show the dropdown on hover */
li:hover .sub-menu {
  display: block;
}
</style>
  
</head>
<body>
  <div class="container">
    <nav>
      <ul>
        <h3 class="a">ADMIN</h3>
      <h3 class="b">DASHBOARD</h3>
        
        <li><a href="admin_dashboard.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">Home</span>
        </a></li>
        
         <li><a href="AdminCircular.jsp">
          <i class="fas fa-wallet"></i>
          <span class="nav-item">Circulars</span>
        </a></li>
        <li><a href="AdminCircularAdd.jsp">
          <i class="fas fa-wallet"></i>
          <span class="nav-item">Add Circular</span>
        </a></li>
        
        
      <li><a href="enquires.jsp">
          <i class="fas fa-question"></i>
          <span class="nav-item">Enquires</span>
        </a></li>
        <li><a href="../adminlogout">
          <i class="fas fa-sign-out"></i>
          <span class="nav-item">Logout</span>
        </a></li>
        
      </ul>
    </nav>
 </div>
</body>
</html>
  