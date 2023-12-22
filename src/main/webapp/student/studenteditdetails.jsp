<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dao.studentdao, bean.studentbean"%>  


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
  background-color: black;
  width: 300px;
  overflow: hidden;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
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
  position: relative;
  top: 12px;
  margin-left: 10px;
}
a:hover{
  background: #999da0;
}
.logout{
  position: absolute;
  bottom: 0;
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
}
.main-skills .card{
  width: 25%;
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
background-color: white;
}
.main-skills .second{
background-color: white;
}
.main-skills .third{
background-color: white;
}
.main-skills .fourth{
background-color: white;
}

.main input{
           background-color: transparent;
    font-size: 16px;
    padding: 2px;
    margin-top: 16px;
    margin-bottom: 16px;
    border: 0.5px solid black;
    display: inline;
}
     nav ul h3 
{
margin-top: 25px;
text-align: center;
color: white;
}
.main label{    color: black;
    font-size: 16px;
    font-weight: bold;
    text-align: left;
    margin: 15px 0 5px;
    margin-left: 3px;
    margin-top: 20px;
    margin-bottom: -8px;
    display: inline;
}
.row{
 justify-content: space-between;
         
    display: flex!important;
}
.col{
 flex: 1;
    padding: 2px 10px;
    box-sizing: border-box;
}
.main .container{
height: 500px;
}
.main .button{
     background: #2b2e44;
    color: #fff;
  
    border-radius: 10px;
    margin-top: 43px;
    cursor: pointer;
    margin-left: 381px;}

.main .card{
      
        background: #6a575700;
    /* width: 100%; */
    /* padding: 92px; */
    padding-top: 92px;
    padding-left: 88px;
    padding-right: 76px;
  

}
.main h1{
text-align: center;
}


</style>
  
</head>
<body>
<% 
    	String email = (request.getParameter("email"));
    studentbean ub = studentdao.getDatabyId(email);
    request.setAttribute("list1",ub);
    	%>
  <div class="container">
    <nav>
     <ul>
         <h3 class="a">STUDENT</h3>
      <h3 class="b">DASHBOARD</h3>
        
        
        <li><a href="student_dashboard.jsp">
          <i class="fas fa-user"></i>
          <span class="nav-item">Profile</span>
        </a></li>
        <li><a href='studenteditdetails.jsp?email=${list1.getEmail()}'>
          <i class="fas fa-edit"></i>
          <span class="nav-item">Edit Details</span>
        </a></li>
          <li><a href='../coursedetails?email=${list1.getEmail()}'>
          <i class="fas fa-book"></i>
          <span class="nav-item">Course Details</span>
        </a></li>
       <li><a href='studentSeeCircular.jsp?email=${list1.getEmail()}'>
         <i class="fas fa-envelope-open"></i>
          <span class="nav-item">See Circular</span>
        </a></li>
       
        <li><a href="../student_logout">
          <i class="fas fa-sign-out"></i>
          <span class="nav-item">Logout</span>
        </a></li>
        
      </ul>
    </nav>

    <section class="main"  style= " background: linear-gradient(rgb(169 ,148 ,166, 75%),rgb(90 ,87, 122 , 75%)),url('../images/new.webp')!important;  background-size: cover!important;">
       <h1>Edit Details</h1>
         <div class="card">
    
    	<div class="contain">
    <form action="../studentEditDetailsServlet" method="post">
      <div class="row1 row">
         <div class="col">
         <label for="id">Id:</label>
        <input type="number" id="id" name="id" value='${list1.getId()}' required>
        </div>
           <div class="col">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value='${list1.getName()}' required>
        </div>
          <div class="col">
           <label for="email">Email:</label>
        <input type="text" id="email" name="email" value='${list1.getEmail()}' required>
       </div>
       </div>
        <div class="row2 row">
           
        <div class="col">
         <label for="fname">Father's:</label>
        <input type="text" id="fname" name="fname" value='${list1.getFname()}' required>
        </div>
          <div class="col">
        <label for="contact">Contact:</label>
        <input type="number" id="contact" name="contact" value='${list1.getContact()}' required>
        </div>
           <div class="col">
         <label for="course">Course:</label>
        <input type="text" id="course" name="course" value='${list1.getCourse()}' required>
        </div>
        </div>
        <div class="row3 row">
           <div class="col">
         <label for="city">City:</label>
        <input type="text" id="city" name="city" value='${list1.getCity()}' required>
        </div>
           <div class="col">
        <label for="dob">DOB:</label>
        <input type="date" id="dob" name="dob" value='${list1.getDob()}' required>
        </div>
           <div class="col">
         <label for="gender">Gender:</label>
        <input type="text" id="gender" name="gender" value='${list1.getGender()}' required>
        </div>
        </div>
        <div class="row4 row">
           <div class="col">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value='${list1.getAddress()}' required>
        </div>
           <div class="col">
        <label for="pin">Pin:</label>
        <input type="number" id="pin" name="pin" value='${list1.getPin()}' required>
        </div>
           <div class="col">
         <label for="ugcourse">UG :</label>
        <input type="text" id="ugcourse" name="ugcourse" value='${list1.getUgcourse()}' required>
        </div>
        </div>
        <div class="row5 row">
           <div class="col">
         <label for="college">College:</label>
        <input type="text" id="college" name="college" value='${list1.getCollege()}' required>
        </div>
           <div class="col">
        <label for="yop">YOP:</label>
        <input type="text" id="yop" name="yop" value='${list1.getYop()}' required>
        </div>
           <div class="col">
        <label for="grade">Grade:</label>
        <input type="number" id="grade" name="grade" value='${list1.getGrade()}' required>
        </div>
        </div>
           <div class="rowlast">
         <label for="fees">Fees:</label>
        <input type="number" id="fees" name="fees" value='${list1.getFees()}' required>
        <!-- Add more fields as needed -->
	</div>
        <input class="button" type="submit" value="Update Profile">
        
    </form>
    </div>
 </div>
    </section>
  </div>
      

     
 
</body>
</html>
