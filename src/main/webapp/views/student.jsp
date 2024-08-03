<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table Records</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    table {
        width: 100%;
        margin-top: 20px;
    }
    th, td {
        text-align: center;
        padding: 10px;
    }
    th {
        background-color: #f8f9fa;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #d1ecf1;
    }
</style>
</head>
<body>
<div class="container">
    <h2 class="text-center my-4">All Users Details</h2>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone No</th>
                <th>Address</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.userId}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.phoneNo}</td>
                <td>${student.address}</td>
                <td>
                    <a href="javascript:void(0);" onclick="confirmDelete(${student.userId});" class="btn btn-danger btn-sm">Delete</a>
                    <a href="/update/?id=${student.userId}" class="btn btn-primary btn-sm">Edit</a>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    <c:if test="${not empty msg}">
        <div class="alert alert-success text-center">${msg}</div>
    </c:if>
</div>

<script>
    function confirmDelete(studentId) {
        var confirmation = confirm("Are you sure you want to delete this user?");
        if (confirmation) {
            window.location.href = "/delete/?id=" + studentId;
        }
    }
</script>
</body>
</html>
