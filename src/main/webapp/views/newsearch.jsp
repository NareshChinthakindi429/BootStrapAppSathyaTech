
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .search-container {
		max-width: 400px;
		        margin: 20px auto;
		        padding: 10px;
		        background-color: #f8f9fa;
		        border-radius: 4px;
		        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }
    .search-container h1 {
        margin-bottom: 20px;
    }
    .search-container .btn {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    .search-container .btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="search-container">
    <h1>Search Form</h1>
    <form method="post" action="/searchstudent">
        <div class="form-group">
            <label for="s"><b>Enter Email/Id:</b></label>
            <input type="text" id="s" name="s" class="form-control" placeholder="Enter Email Id" required>
        </div>
        <button type="submit" class="btn">Search</button>
		<c:if test="${not empty student}">
			        <h6>Id : ${student.userId}</h6>
					<h6>Name : ${student.name}</h6>
					<h6>Email : ${student.email}</h6>
					<h6>Phone No : ${student.phoneNo}</h6>
					<h6>Address : ${student.address}</h6>
		</c:if>
		
    </form>
</div>
</body>
</html>
