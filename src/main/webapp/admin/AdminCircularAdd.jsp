
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
  width: 280px;
  overflow: hidden;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
        }

        #content {
            width: 80%;
            padding: 20px;
            box-sizing: border-box;
        }

        h1 {
            text-align: center;
                color: white;
        }

        .table-container {
               background: #38343485;
    padding: 10px;
    width: 100%;
    overflow-x: auto;
    margin-top: 20px;
        }
		.table-container .heading{
	    text-align: center;
    margin-left: 493px;
    color: white;
    font-size: 30px;
		}
		.table-container .headingdesc{
	    text-align: center;
    margin-left: 464px;
    color: white;
    font-size: 30px;
		}
		.table-container .title{
margin-top: 13px;
    margin-bottom: 13px;
    margin-left: 50px;
    border-radius: 2px;
    border: 1px solid #93938f;
    
    height: 40px;
    margin-left: 347px;
    font-size: 30px;
    background: #c5b1b169;
		}
		textarea {

 height: 100px;/* Initial height, adjust as needed */
  padding: 8px;
  box-sizing: border-box;
  resize: vertical; /* Allow vertical resizing only */
}
		.table-container .desc{
		    margin-top: 10px;
    width: 377px;
		  
		 border-radius: 2px;
    border: 1px solid #93938f;
    
    height: 174px;
    margin-left: 347px;
    font-size: 30px;
    background: #c5b1b169;
		}
		label{
		text-align: center;
		}
		button{
	    margin-left: 499px;
    margin-top: 25px;
    width: 80px;
    width: 113px;
    height: 32px;
    color: white;
    border-radius: 10px;
    background-color: #000000;
    border-color: #e6f3e9;
    margin-bottom: 2px;}
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

<div id="content" style= " background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('../images/bg_newww3.avif')!important;  background-size: cover!important;">
   <h1>Circular</h1>
   
        
      <form action="../admincircular" method="post">
       <div class="table-container">
  <label class="heading" for="title">Title </label>
  <br>
  <input class="title" type="text" id="title" name="title" required>
  <br>
  <label class="headingdesc" for="description">Description </label>
  <br>
  <textarea class="desc" id="description" name="description" placeholder="Description...." required></textarea>
  <br>
  <button type="submit">Submit</button>
   </div>
</form>
       
</div>

</body>
</html>
          