
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
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
           margin: -13px;
    padding: -63px;
    width: 100%;
    /* position: absolute; */
    top: 50%;
    /* transform: translateY(-50%); */
    /* text-align: left; */
    margin-left: 20px;
      background: #00000075;
        text-align: center;
}

.banner h2{
       text-align: center;
    margin-top: 10px;
        margin-bottom: 21px;
    font-size: 30px;
    margin-top: 4px;
}
.banner h3, h2{
    /* text-align: center; */
    color: white;}
.content p{
       font-weight: 100;
    text-algn: center;
    line-height: 23px;
    margin: 10px auto;
}
.banner .last{
color: red;
}
.main-course{
    margin-top: 35px;
     padding: 10px;
     background: #877a7aab;
  text-transform: capitalize;
 
}
.main-course h1{
        text-align: center;
    margin-top: 19px;
    padding-top: 5px;
    font-size: 49px;
    font-family: math;
    color: WHITE;
}


.box{
   width: 28%;
    padding: 5px;
       margin-left: 24px;
    margin-top: 30px;
        border: 3.5px solid #00000059;
    border-radius: 10px;
    background: rgb(52 51 51 / 65%);
    box-shadow: 0 20px 35px rgb(0 0 0 / 29%);}
    .box1{
     width: 28%;
    padding: 5px;
    /* margin: 7px; */
    margin-left: 466px;
    margin-top: -168px;
        border: 3.5px solid #00000059;
    border-radius: 10px;
    background: rgb(52 51 51 / 65%);
    box-shadow: 0 20px 35px rgb(0 0 0 / 29%);}
    .box2{
   width: 28%;
    padding: 5px;
    margin-left: 899px;
    margin-top: -137px;
        border: 3.5px solid #00000059;
    border-radius: 10px;
    background: rgb(52 51 51 / 65%);
    box-shadow: 0 20px 35px rgb(0 0 0 / 29%);}
h4, h5{
margin-top: 10px;
}
 p{
     font-size: 16px;
    line-height: 23px;
    margin-top: 10px;
}


.main-course h5{
text-align: center;
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

        
         <section class="main-course"  >
      
  
          <div class="course">
          
           
             <div class="box" style= " background: linear-gradient(rgba(0,0,0,0.60),rgba(0,0,0,0.75)),url('images/aboutuss.jpg')!important;  background-size: cover!important;">
              <h3>Our Mission:</h3>
              <p> Empower aspirants to achieve their academic and professional goals by providing top-notch coaching for competitive exams such as GATE, GRE, XAT, MAT, and CAT. <br>We are committed to fostering a learning environment that encourages excellence, critical thinking, and holistic development.
			</p>  
            </div>
            
             <div class="box1" style= " background: linear-gradient(rgba(0,0,0,0.60),rgba(0,0,0,0.75)),url('images/aboutuss.jpg')!important;  background-size: cover!important;">
              <h3>Our Vision:</h3>
              <p>To be the preferred destination for aspirants seeking coaching for competitive exams, known for our unparalleled commitment to quality education, innovative teaching methods, and personalized guidance.<br> We aim to inspire and guide individuals towards success in their chosen fields, contributing to the advancement of society.
				</p>
              
            </div>
           <div class="box2" style= " background: linear-gradient(rgba(0,0,0,0.60),rgba(0,0,0,0.75)),url('images/aboutuss.jpg')!important;  background-size: cover!important;">
              <h3>Our Values:</h3>
             
              <p>  We strive for academic and operational excellence in all aspects of our coaching programs, setting high standards for ourselves and our students.
       <br> We believe in the lifelong pursuit of knowledge and encourage both our students and staff to engage in continuous learning and self-improvement.
     </p>
           
              
            </div>
            
            
           
          
          
        </div>
      </section>
    </div>

</body>
</html>