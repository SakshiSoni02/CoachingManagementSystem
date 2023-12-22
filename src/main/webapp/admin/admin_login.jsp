
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminLogin</title>
     <% if (session.getAttribute("admin")!=null){
    	 response.sendRedirect("admin_dashboard.jsp");
    
    }
    	
    	%>
     <%String  username=  (String)session.getAttribute("admin"); %>
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
    background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("../images/adminimggg.avif");
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
    text-transform: uppercase;
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



button{
    width: 200px;
    padding: 15px 0;
    text-align: center;
    margin: 20px 10px;
    border-radius: 25px;
    font-weight: bold;
    border: 2px solid #009688;
    background: transparent;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    text-transform: uppercase;
}
span{
    background: #009688;
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

.login-container {

margin-left: 500px;
          background-color: rgb(26 24 24 / 61%);
    padding: 20px;
    border-radius: 9px;
    text-align: center;
    width: 340px;
    border: 0.5px solid #0c0c0cba;
        }

        .login-container img {
            width: 100px;
            border-radius: 70%;
            margin-bottom: 5px;
        }

        .login-container input {
        color: black;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .login-container button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
   </style>
</head>
<body>
    <div class="banner">
        <div class="navbar">
            <div class="logo">InfinityMasters..</div>
            <ul>
               <li><a href="../index.jsp">Home</a></li>
                <li><a href="../AboutUs.jsp">About Us</a></li>
                <li><a href="">Admin</a></li>
                <li><a href="../student/student_login.jsp">Student</a></li>
                <li><a href="../Contact.jsp">Contact</a></li>
            </ul>
        </div>

        
            <div class="login-container">
        <img src="../images/adminloginlogo.jpeg" alt="Admin Logo"> 
        <h2>ADMIN LOGIN</h2>
        <form action="../adminlogin" method="post">
            <input type="text" name="email" placeholder="Username" >
            <br>
            <input type="password" name="pass" placeholder="Password" >
            <br>
            <button type="submit">Login</button>
        </form>
    </div>
      

    </div>

</body>
</html>
