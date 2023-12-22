<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <%@page import="java.util.*"%>
  <title>Dashboard</title>
   <% if (session.getAttribute("admin")!=null){
    	
    }else  {
    	response.sendRedirect("../index.jsp");
    }
    	
    	%>
     <%String  username=  (String)session.getAttribute("admin"); %>
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
     width: 25%;
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
/* Main Section */
.main{

  position: relative;
  padding: 20px;
  width: 100%;
}
.main-top{
  display: flex;
  width: 100%;
}
.main-top h1{
color: white;
    font-size: 30px;
}
.main-top i{
  position: absolute;
  right: 0;
  margin: 10px 30px;
  color: rgb(110, 109, 109);
  cursor: pointer;
}
.main-skills{
  display: flex;
  margin-top: 20px;
      margin-left: 139px;
}
.main-skills .card{
     width: 28%;
  margin: 10px;
  background: #ffeec8;
  text-align: center;
  border-radius: 20px;
  padding: 10px;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
}
.main-skills .card h3{
  margin: 10px;
  text-transform: capitalize;
}
.main-skills .card p{
  font-size: 12px;
}
.main-skills .card button{
  background: black;
  color: #fff;
  padding: 7px 15px;
  border-radius: 10px;
  margin-top: 15px;
  cursor: pointer;
}
.main-skills .card button:hover{
  background: rgba(223, 70, 15, 0.856);
}
.main-skills .card i{
  font-size: 22px;
  padding: 10px;
}

.main-skills .first{
    background-color: #cfc2c2;
}
.main-skills .second{
    background-color: #cfc2c2;
}
.main-skills .third{
    background-color: #cfc2c2;
}
.main-skills .fourth{
    background-color: #cfc2c2;
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
          <i class="fas fa-envelope"></i>
          <span class="nav-item">Circulars</span>
        </a></li>
        <li><a href="AdminCircularAdd.jsp">
          <i class="fas fa-envelope-open"></i>
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

    <section class="main" style= " background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('../images/bg_newww3.avif')!important;  background-size: cover!important;">
      <div class="main-top">
        <h1>InfinityMasters Academy...</h1>
        <i class="fas fa-user-cog"></i>
      </div>
     
      <div class="main-skills">
        <div class="card first">
          <i class="fas fa-users"></i>
          <h3>Registered Students</h3>
          <p>Waiting for approval.</p>
          <button onclick="window.location.href='registeredStudents.jsp'">Click here</button>
        </div>
        <div class="card second">
          <i class="fa fa-database"></i>
          <h3>Enrolled Students</h3>
          <p>See their Details.</p>
          <button onclick="window.location.href='enrolledStudents.jsp'">Click here</button>
        </div>
       
        <div class="card fourth">
          <i class="fa fa-book"></i>
          <h3>Course Management</h3>
          <p>Courses and its subjects </p>
          <button onclick="window.location.href='coursemanagement.jsp'">Check here</button>
        </div>
      </div>

     
    </section>
  </div>
</body>
</html>