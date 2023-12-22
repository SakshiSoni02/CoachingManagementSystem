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
        color: white;
            text-align: center;
        }

        .table-container {
            width: 100%;
            overflow-x: auto;
            margin-top: 20px;
        }

        table {
       
            width: 100%;
            border-collapse: collapse;
            background-color: #fff; /* Table background color */
        }

        th, td {
                border: 1px solid #f5f5f5;
    padding: 10px;
    text-align: center;
    background-color: #cdd7d6;
        }

        th {
                  background-color: #302b2b;
    color: #fdfdfd;
    text-align: center;
        }

        tbody tr:nth-child(even) {
            background-color: #f2f2f2; /* Alternating row background color */
        }

        .btn {
            margin-right: 5px;
        }

        .btn-success {
        width: 80px;
            border-radius: 10px;
            background-color: #28a745; /* Success button color */
            border-color: #28a745;
                margin-bottom: 2px;
        }

        .btn-danger {
         width: 80px;
             border-radius: 10px;
            background-color: #dc3545; /* Danger button color */
            border-color: #dc3545;
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

<div id="content" style= " background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('../images/bg_newww3.avif')!important;  background-size: cover!important;">
   <h1> Enrolled Student Details</h1>
    <div class="table-container">
        <table>
            <thead>
            <tr>
                <th scope="col">Sr.No</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Contact</th>
                 <th scope="col">Gender</th>
                <th scope="col">Course</th>
                <th scope="col">Fees</th>
                <th scope="col">Father's Name</th>
                <th scope="col">UG Course</th>
                <th scope="col">College</th>
                <th scope="col">YOP</th>
                <th scope="col">Grade</th>
                <th scope="col">DOB</th>
                <th scope="col">Address</th>
                   <th scope="col">City</th>
                <th scope="col">Pin</th>
                 <th scope="col">Operation</th>
            </tr>
            </thead>
            <tbody>
            <% List<studentbean> list = new ArrayList<studentbean>(); 
            list = admindao.ShowEnrolled();
            request.setAttribute("list1", list);%>
            <% int a=1; %>
            <c:forEach items="${list1}" var="u">  
                <tr>
                    <td><% out.print(a++); %></td>
                    <td>${u.getName()}</td>
                    <td>${u.getEmail()}</td>
                    <td>${u.getContact()}</td>
                    <td>${u.getGender()}</td>
                    <td>${u.getCourse()}</td>
                    <td>${u.getFees()}</td>
                     <td>${u.getFname()}</td>
                    <td>${u.getUgcourse()}</td>
                    <td>${u.getCollege()}</td>
                    <td>${u.getYop()}</td>
                    <td>${u.getGrade()}</td>
                    <td>${u.getDob()}</td>
                      <td>${u.getAddress()}</td>
                    <td>${u.getCity()}</td>
                    <td>${u.getPin()}</td>
               
                    <td>
                        <a class="btn btn-success" href='admineditstudent.jsp?email=${u.getEmail()}'>Update</a>
                        <a class="btn btn-danger" href='../deletestudent?pid=${u.getId()}'>Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
          