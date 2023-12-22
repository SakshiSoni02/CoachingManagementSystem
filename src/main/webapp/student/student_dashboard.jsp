<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  		<%@page import="dao.studentdao"%> 
		<%@page import="bean.studentbean"%> 
  <title>Dashboard</title>
  <%String  email =  (String)session.getAttribute("email"); %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
   <% if (session.getAttribute("email")!=null){
    	
    }else  {
    	response.sendRedirect("../index.jsp");
    }
    	
    	%>
     <%String  username=  (String)session.getAttribute("email"); %>
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
body{
  background: #d3cbc7;
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
    width: 22%;
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
background-color: #efefef;
}
.main-skills .second{
background-color: #efefef;
}
.main-skills .third{
background-color: #efefef;
}
 /* Profile Box */
        .profile-box {
           display: flex;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    /* max-width: 400px; */
    padding: 20px;
    text-align: center;
        }

        .profile-details {
            width: 100%;
        }

        .profile-details h1 {
                color: black;
                font-size: 38px;
                margin-top: 20px;
                display: inline;
        }
        .profile-details h2 {
                     color: #262323;
    font-size: 16px;
    margin-top: 76px;
    display: inline;
        }

        .profile-details p {
          margin: 5px 0;
           color: #1a1818;
    padding-right: 58px;
    /* margin-right: 41px; */
        font-size: 18px;
    margin-bottom: 17px;
    text-align: center;
    padding: 7px;
    display: inline;
        }

        .profile-details a,
        .profile-details button {
            display: inline-block;
            background-color: #009688;
            color: #fff;
            padding: 8px 16px;
            border-radius: 4px;
            margin-top: 10px;
            text-decoration: none;
            cursor: pointer;
        }

        .profile-details button {
            background-color: #00796b;
            margin-left: 10px;
        }

        .profile-details a:hover,
        .profile-details button:hover {
            background-color: #005b4f;
        }
        
      .profilecontain  .row{
        justify-content: space-between;
         
    display: flex!important;
        }
        
     .profilecontain   .col{
        flex: 1;
        padding: 10px 10px;
        box-sizing: border-box;
        }
        .profilecontain{
              width: 74%;
    padding-top: 43px;
    margin-top: 88px;
    border-radius: 10px;
    margin-left: 137px;
    padding-left: 50px;
    /* margin: -27px auto; */
    text-align: left;
    font-size: 20px;
    /* padding: 22px; */
    background: #d6bed73b;
    border: 1px solid #6c6985;
    height: 347px;
        }
        .row5{
        text-align: center;
        }
        nav ul h3 
{
margin-top: 25px;
text-align: center;
color: white;
}
.profile-details .lab{
color: black;
}
.profile-details .id{
font-size: 24px;
    margin-bottom: 12px;
    margin-top: -17px;
    /* text-align: center; */
    margin-left: 342px;
}
</style>
  
</head>
<body>


   	     <% studentbean list = new studentbean(); 
	    
	     list = studentdao.getDatabyId(email);
	     request.setAttribute("list1", list);%>
    
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

     <!-- Profile Box -->
            <div class="profile-box"   style= " background: linear-gradient(rgb(169 ,148 ,166, 75%),rgb(90 ,87, 122 , 75%)),url('../images/new.webp')!important;  background-size: cover!important;">
    
                <!-- Profile Image (you can add an image tag here if you have a profile image) -->
                <!-- <img src="path/to/profile-image.jpg" alt="Profile Image"> -->
                
                <!-- Profile Details -->
                <div class="profile-details">
                    <h1> Profile</h1>
                    <div class="profilecontain">
                  <div class="id">
                     <h2 >Id: </h2><p> ${list1.getId()} </p>
                 </div>
                    <div class="row">
                  <div class="col">          <h2>Name:</h2><p>  ${list1.getName()} </p></div>
              <div class="col">       <h2>Father's Name:</h2><p>  ${list1.getFname()} </p></div>
                 <div class="col">     <h2>Email:</h2><p>  ${list1.getEmail()} </p></div>
                     </div>
                     <div class=" row">
                  <div class="col">    <h2>DOB:</h2><p> ${list1.getDob()} </p></div>
              <div class="col">       <h2>Gender:</h2><p>  ${list1.getGender()} </p></div>
                   
               <div class="col">       <h2>Contact:</h2><p>  ${list1.getContact()} </p></div>
                    </div>
                    <div class="row">
                 <div class="col">   <h2>Address:</h2><p> ${list1.getAddress()} </p></div>
               <div class="col">       <h2>City:</h2><p>  ${list1.getCity()} </p></div>
                <div class="col">     <h2>Pin:</h2><p>  ${list1.getPin()} </p></div>
                    </div>
                    <div class="row">
              <div class="col">       <h2>UG Course:</h2><p>  ${list1.getUgcourse()} </p></div>
               <div class="col">      <h2>UG College:</h2><p>  ${list1.getCollege()} </p></div>
              <div class="col">       <h2>YOP:</h2><p>  ${list1.getYop()} </p></div>
                </div>
					 <div class="row">
					  <div class="col">     <h2>Grade:</h2><p>  ${list1.getGrade()} </p></div>
                   
				<div class="col"> 	    <h2>Course:</h2><p> ${list1.getCourse()} </p></div>
              <div class="col">       <h2>Fees:</h2><p>  ${list1.getFees()} </p></div>
                 </div>
                 
                </div>
            </div>
  </div>
</body>
</html>