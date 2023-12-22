<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.studentdao, bean.studentbean"%>  

  <%@page import="java.util.*"%>
  <title>course</title>
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
body{
  background: #cfcbc9;
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
  width: 250px;
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
 #content {
             width: 82%;
    padding: 104px;
    box-sizing: border-box;
        }

        h1 {
         color: #363131;
    margin-top: -72px;
    margin-bottom: 56px;
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
               border: 1px solid #0c0c0c;
     padding: 12px;
    text-align: center;
    background-color: #bfa9be;
        }

        th {
                     background-color: #494b68;
    color: #ebe1e1;
    text-align: center;
        }

        tbody tr:nth-child(even) {
            background-color: #f2f2f2; /* Alternating row background color */
        }

      
        nav ul h3 
{
margin-top: 25px;
text-align: center;
color: white;
}
.head{
text-align: center;
}
p{
margin: 4px;
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

    
       
  
  <div id="content"  style= " background: linear-gradient(rgb(169 ,148 ,166, 75%),rgb(90 ,87, 122 , 75%)),url('../images/new.webp')!important;  background-size: cover!important;"> <h1 class="head">Course Details</h1>
    <div class="table-container">
        <table>
            <thead>
            <tr>
                <th scope="col">Course</th>
                <th scope="col">Subjects</th>
               
                
            </tr>
            </thead>
            <tbody>
             
                <tr><td> <h3>GATE</h3> <h4>(Graduate Aptitude Test in Engineering)</h4></td>
                    <td>  <p>1. Discrete Mathematics</p>
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
<p>12. Web Technologies</p></td>
                    
                  
                </tr>
            
            </tbody>
        </table>
    </div>
</div>
  </div>
</body>
</html>
