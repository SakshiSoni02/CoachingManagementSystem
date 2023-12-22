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
    background: rgb(237 225 225 / 65%);
    box-shadow: 0 20px 35px rgb(0 0 0 / 29%);
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
       
        <div class="course-box">
     
          <div class="course">
          
            <div class="box">
              <h3>GATE</h3>
              <h4>(Graduate Aptitude Test in Engineering)</h4>
              <h5>Subjects in this course</h5>
              <p>1. Discrete Mathematics</p>
				<p>2. Digital Logic</p>
<p>3. Computer Organization and Architecture</p>
<p>4. Programming and Data Structures</p>
<p>5. Algorithms</p>
<p>6. Theory of Computation</p>
<p>7. Compiler Design</p>
<p>8. Operating System</p>
<p>9. Database Management System</p>
<p>10. Computer Networks</p>
<p>11. Software Engineering</p>
<p>12. Web Technologies</p>

              
              
            </div>
            <div class="box">
              <h3>CAT</h3>
              <h4>(Common Admission Test)</h4>
              <h5>Subjects in this course</h5>
            <p>1. Verbal Ability </p>
            <p>2. Reading Comprehension</p>
<p>3. Data Interpretation </p><p>4. Logical Reasoning</p>
<p>5. Quantitative Ability</p>
             
            </div>
            <div class="box">
            <h3>GRE</h3>
                 <h4>(Graduate Record Examination)</h4>
              <h5>Subjects in this course</h5>
              <p>1. Verbal Reasoning</p>
<p>2. Quantitative Reasoning</p>
<p>3. Analytical Writing</p>
              
              
            </div>
            <div class="box">
            <h3>XAT</h3>
               <h4>(Xavier Aptitude Test)</h4>
              <h5>Subjects in this course</h5>
              <p>1. Verbal and Logical Ability</p>
<p>2. Decision Making</p>
<p>3. Quantitative Ability</p><p>4. Data Interpretation</p>
<p>5. General Knowledge</p>
              
            </div>
            <div class="box">
              <h3>MAT</h3>
           <h4>(Management Aptitude Test)</h4>
              <h5>Subjects in this course</h5>
              <p>1. Language Comprehension</p>
<p>2. Mathematical Skills</p>
<p>3. Data Analysis </p><p>4. Sufficiency</p>
<p>5. Intelligence </p><p>6. Critical Reasoning</p>
<p>7. Indian and Global Environment</p>
             
            </div>
           
          </div>
        </div>
      </section>


</body>
</html>
          