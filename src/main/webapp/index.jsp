
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
   <style >
   *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
    color: #fff;
}

.banner{
    width: 100%;
    height: 100vh;
    background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("images/bg_newww.avif");
    background-size: cover;
    background-position: center;
}   

.navbar{
    width: 85%;
    margin: auto;
    padding: 35px 0;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

a{
    text-decoration: none;
}

li{
    list-style-type: none;
}

.logo{
margin-left: -20px;
    font-size: 32px;
    font-weight: 700;
}

.navbar ul li{
    display: inline-block;
    margin: 0 20px;
    position: relative;
}

.navbar ul li a{
   font-size: 19px;
}

.navbar ul li::after{
    content: '';
    height: 3px;
    width: 0;
    position: absolute;
    background: #009688;
    left: 0;
    bottom:-10px;
    transition: 0.5s;
}
.navbar ul li:hover::after{
    width: 100%;
}

.content{
    width: 100%;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    text-align: center;
}

.content h1{
    font-family: math;
    font-size: 70px;
    margin-top: 80px;
}
.content p{
 
    font-weight: 100;
    line-height: 25px;
    margin: 20px auto;
}

button{
    width: 200px;
    padding: 15px 0;
    text-align: center;
    margin: 20px 10px;
    border-radius: 25px;
    font-weight: bold;
      border: 2px solid #fb6800;
    background: transparent;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    text-transform: uppercase;
}
span{
    background: #fb6800;
    height: 100%;
    width: 0;
    position: absolute;
    left: 0;
    bottom: 0;
    z-index: -1;
    transition: 0.5s;
}

button:hover span{
    width: 100%;
}

button:hover{
    border: none;
}
   </style>
</head>
<body>
    <div class="banner">
        <div class="navbar">
            <div class="logo">InfinityMasters..</div>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="AboutUs.jsp">About Us</a></li>
                <li><a href="admin/admin_login.jsp">Admin</a></li>
                <li><a href="student/student_login.jsp">Student</a></li>
                <li><a href="Contact.jsp">Contact</a></li>
            </ul>
        </div>

        <div class="content">
            <h1>Shape your future</h1>
            <p>Empowering Futures, Igniting Success: Navigate the Path to Excellence with "InfinityMasters". <br> Your Gateway to Comprehensive Coaching for Competitive Exams, Where Knowledge Meets Achievement.</p>
            <div>
                <button type="button" onclick="window.location.href='student/student_register.jsp'"><span></span> Join us</button>
            </div>
        </div>
    </div>
</body>
</html>