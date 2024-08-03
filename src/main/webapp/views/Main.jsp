
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    

<!DOCTYPE html>
<html>
<head>
	<style> 
		body{
			background-image: url(https://img.freepik.com/free-vector/blue-curve-background_53876-113112.jpg?t=st=1722409317~exp=1722412917~hmac=c2c110e8583cfecf73daa163c1d8fe90980553db9bea676023d5c48816c1f023&w=740);
			background-size: cover
		}
		nav {
       		 background-color: #333;
       		 overflow: hidden;
    	}
    	
    	 nav a {
	        float: left;
	        display: inline;
	        color: white;
	        text-align: center;
	        padding: 15px;
	        text-decoration: none;
       }
       
       nav a:hover{
       		color: blue;
       }
    	
    	h1 {
    font-size: 2.5em;
    background: linear-gradient(to right, #FF5733, #FFC300);
    -webkit-background-clip: text;
    text-align: center;}
    
     footer{
    	text-align: center;
		background: black;
		color: white;
    }
	h6{
		text-align: center;
	}
	h5{
		text-align: center;
		color: green;
	}
    </style>
	
	<script> 
	 function confirmDelete() {
	let v = confirm("Are you sure you want to delete this student?");
	
	if (v) {
        alert("data deleted succcessfully.....");
        return true;
    }
	else
		{
		alert("data deletion cancled")
		return false;
		}
	 }
	</script>
	
</head>
<body>

<header>
	<h1>Welcome to SathyaTech</h1>
	<nav>
	       <a href="Main?view=home"><i class="bi bi-house-door">Home</i></a>
	       <a href="Main?view=register"><i class="bi bi-person-plus"></i>Register</a>
	       <a href="Main?view=login"><i class="bi bi-box-arrow-in-right"></i>Login</a>
	       <a href="Main?view=students">Students</a>
	       <a href="Main?view=aboutUs"><i class="bi bi-info-circle"></i>About Us</a>
	       <a href="Main?view=contactUs"><i class="bi bi-envelope"></i>Contact Us</a>
	       <a href="Main?view=search">Search</a>
	   </nav>
</header>

<main>
	
	<section>  
		<c:choose>
			<c:when test="${param.view == 'home'}">
				<h1> Welcome to sathya technologies </h1>
				<h1>Java FullStack development</h1>
				 <h1>.Net FullStack development</h1>
				 <h1>Python FullStack development</h1>
			</c:when>	
			
			<c:when test="${param.view == 'register'}">
				<c:if test="${not empty msg}">
					  <h5>${msg}</h5>
				</c:if>
			  <jsp:include page="/register"/>		   
			</c:when>
			
			<c:when test="${param.view == 'login'}">
				<c:if test="${not empty msg}">
				       <h5>${msg}</h5>
				   </c:if>
				
				<jsp:include page="/login"/>
			</c:when>
			
			
			<c:when test="${param.view == 'aboutUs'}">
				<jsp:include page="/aboutUs"/>
			</c:when>
			
			<c:when test="${param.view == 'contactUs'}">
				<jsp:include page="/contactUs"/>
			</c:when>
				
			<c:when test="${param.view == 'students'}">
					<jsp:include page="/students"/>
			</c:when>
			

			<c:when test="${param.view == 'search'}">
        		<jsp:include page="/search"/> 
				<h6>Id : ${student.userid}</h6>
        		<h6>Name : ${student.name}</h6>
                <h6>Email : ${student.email}</h6>
                <h6>Phone No : ${student.phoneNo}</h6>
				<h6>Address : ${student.address}</h6>	  
        	</c:when>
		</c:choose>
	</section>
</main>



<footer>
      <p>&copy; 2024 Your Website. All rights reserved. Designed by Your Name</p>
      <p>Email: contact@yourwebsite.com</p>
      <p>Phone: +1 (123) 456-7890</p>
</footer>


</body>
</html>