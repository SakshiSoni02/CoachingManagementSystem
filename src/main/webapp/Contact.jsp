
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
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
   background: linear-gradient(rgb(0 ,0, 0 , 79%),rgb(0, 0 ,0 , 80%)),url("images/bg_newww.avif");
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
    padding: 28px;
    /* height: 132%; */
    position: absolute;
  
    /* transform: translateY(-50%); */
    text-align: center;
    /* margin-left: 90px; */
    backgroung: black;
    background: #0c0b0b63;
    text-align: center;
    }

.content h2{
    font-size: 30px;
    margin-top: -10px;
      text-align: center;
}
.content p{
    font-weight: 100;
    line-height: 15px;
    margin: 10px auto;
    text-align: center;
}

.main-course{
       height: 488px;
    margin-top: 8px;
     padding: 10px;
     background: #1e1d1dab;;
 
  text-transform: capitalize;
 
}
.main-course h1{
    text-align: center;
    margin-top: 22px;
    font-size: 30px;
        margin-bottom: 30px;
    color: WHITE;
}

.box{
    margin-top: -319px;
    height: 400px;
   width: 47%;
   
    margin: 31px;
    border-radius: 10px;
    background: rgb(52 51 51 / 65%);
      padding: 5px;
        border: 3.5px solid #00000059;
    box-shadow: 0 20px 35px rgb(0 0 0 / 29%);}
    
    .box1{
         height: 400px;
    width: 47%;
    margin-top: -431px;
       margin-left: 674px;
   
    border-radius: 10px;
    background: rgb(52 51 51 / 65%);
    box-shadow: 0 20px 35px rgb(0 0 0 / 29%);
    padding: 5px;
        border: 3.5px solid #00000059;
    }
   
    }
 h4, h5{
margin-top: 10px;
}
 p{
  font-size: 17px;
  margin-top: 10px;
}
input[type=text], select, textarea {
  width: 100%; /* Full width */
      color: black;
  padding: 12px; /* Some padding */ 
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
input[type=number], select, textarea {
  width: 100%; /* Full width */
      color: black;
  padding: 12px; /* Some padding */ 
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
      background-color: #000000;
    color: white;
    padding: 12px 20px;
    border: 0.5 px solid white;
    border: 1px solid white;
    border-radius: 29px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: white;
  color: black;
}

/* Add a background color and some padding around the form */
.container {
      height: 350px;
    border-radius: 5px;
    background-color: #38363600;
    padding: 22px;
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
                <li><a href="Contact.jsp">Contact</a></li></ul>
        </div>

       <section class="main-course" >
      
      
     
          <div class="course">
          
           
            <div class="box" style= " background: linear-gradient(rgba(0,0,0,0.60),rgba(0,0,0,0.75)),url('images/aboutuss.jpg')!important;  background-size: cover!important;">
           
              <div class="container">
  <form action="enquiryform" method="post">

    <label for="fname"> Name</label>
    <input type="text" id="fname" name="name" placeholder="Your name..">

    <label for="contact"> Contact</label>
    <input type="number" id="contact" name="contact" placeholder="Your number..">
   
    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:110px"></textarea>

    <input type="submit" value="Submit">

  </form>
</div>
             
            </div>
            <div class="box1" style= " background: linear-gradient(rgba(0,0,0,0.60),rgba(0,0,0,0.75)),url('images/aboutuss.jpg')!important;  background-size: cover!important;">
            <h1><strong>Contact Us</strong></h1>

<p>Have a question or need assistance? <br>We're here to help!</p>

<p><strong>Email:</strong> <a href="mailto:support@yourcoachingmanagement.com">support@yourcoachingmanagement.com</a></p>

<p><strong>Phone:</strong> +91-9222344786</p>
<p><strong>Address:</strong>sector 36, it park, Nagpur.</p>

<p><strong>Office Hours:</strong><br>
Monday - Friday: 9:00 AM - 5:00 PM [Your Time Zone]</p>

<p>Feel free to reach out, and our dedicated team will get back to you as soon as possible.<br> Your success is our priority!</p>

          
          </div>
        </div>
      </section>

    </div>

</body>
</html>


