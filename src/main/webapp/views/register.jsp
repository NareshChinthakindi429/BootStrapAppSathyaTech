<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .form-container {
        max-width: 400px;
        margin: 5px auto;
        padding: 2px;
        background-color: #f8f9fa;
        border-radius: 4px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }
    .form-container h1 {
        text-align: center;
        margin-bottom: 20px;
    }
    .form-container label {
        display: block;
        margin-bottom: 5px;
    }
    .form-container input[type="text"],
    .form-container input[type="password"],
    .form-container input[type="email"],
    .form-container input[type="tel"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ced4da;
        border-radius: 4px;
    }
    .form-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #007bff;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    .form-container input[type="submit"]:hover {
        background-color: #0056b3;
    }
	h4{
		text-align: center;
	}
</style>
</head>
<body>
<div class="container">
    <div class="form-container">
        <h4>Registration Form</h4>
        <form method="post" action="/save">
            <div class="form-group">
                <label for="username"><b>Student Name:</b></label>
                <input type="text" id="username" name="name" class="form-control" placeholder="Enter Username" required>
            </div>
            <div class="form-group">
                <label for="password"><b>Password:</b></label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" required>
            </div>
            <div class="form-group">
                <label for="email"><b>Email:</b></label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter Email" required>
            </div>
            <div class="form-group">
                <label for="phoneno"><b>Phone No:</b></label>
                <input type="tel" id="phoneno" name="phoneNo" class="form-control" placeholder="Enter Phone No" required>
            </div>
            <div class="form-group">
                <label for="address"><b>Location:</b></label>
                <input type="text" id="address" name="address" class="form-control" placeholder="Enter Location" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Register</button>
        </form>
    </div>
</div>
</body>
</html>
