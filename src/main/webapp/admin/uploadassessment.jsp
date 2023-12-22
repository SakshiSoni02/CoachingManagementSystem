<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light background color */
            display: flex;
            margin: 0;
            padding: 0;
        }

        #navbar {
            position: relative;
  top: 0;
  bottom: 0;
  height: 100vh;
  left: 0;
  background-color: black;
  width: 350px;
  overflow: hidden;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
        }

       
/* Courses */
.main-course{

      width: 80%;
  text-transform: capitalize;

}
.main-course h1{
   text-align: center;
    margin-top: 22px;
    font-size: 30px;
    color: WHITE;
}
.course-box{
     width: 95%;
    margin-left: 20px;
    height: 500px;
    padding: 30px 10px 30px 10px;
    margin-top: 10px;
    background-color: #fff0;
    border-radius: 10px;
    box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
}
.course-box ul{
  list-style: none;
  display: flex;
}
.course-box ul li{
  margin: 10px;
  color: gray;
  cursor: pointer;
}
.course-box ul .active{
  color: #000;
  border-bottom: 1px solid #000;
}
.course-box .course{
  display: flex;
 
}
.box{
  width: 33%;
  padding: 10px;
  margin: 10px;
  border-radius: 10px;
  background: rgb(235, 233, 233);
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
}
.box h4, h5{
margin-top: 10px;
}
.box p{
  font-size: 12px;
  margin-top: 10px;
}
.box button{
  background: #000;
  color: #fff;
  padding: 7px 10px;
  border-radius: 10px;
  margin-top: 1rem;
  margin-bottom: 0.7rem;
  cursor: pointer;
}
.box button:hover{
  background: rgba(0, 0, 0, 0.842);
}
.box i{
  font-size: 7rem;
  float: right;
  margin: -20px 20px 20px 0;
}
       
    </style>
    <%@ page import="dao.admindao"%> 
    <%@ page import="bean.studentbean"%>   
    <%@ page import="java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

<div id="navbar">
    <%@ include file="navbar.jsp" %>
</div>

<section class="main-course" style= " background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('../images/bg_newww3.avif')!important;  background-size: cover!important;">
         <h1 >Courses</h1>
       
        <form action="../uploadsassessment" method="post" enctype="multipart/form-data">
    <input type="file" name="pdfFile" />
    <input type="submit" value="Upload Assessment" />
</form>
        
      </section>


</body>
</html>
          