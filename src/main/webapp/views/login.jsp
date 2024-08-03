
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .login-container {
		max-width: 400px;
		        margin: 50px auto;
		        padding: 20px;
		        background-color: #f8f9fa;
		        border-radius: 8px;
		        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .login-container h1 {
        margin-bottom: 20px;
    }
    .login-container .form-group {
        margin-bottom: 15px;
    }
    .login-container .btn {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    .login-container .btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="login-container">
    <h1>Login Form</h1>
    <form method="post" action="/check">
        <div class="form-group">
            <label for="email"><b>Email:</b></label>
            <input type="text" id="email" name="email" class="form-control" placeholder="Enter Email Id" required>
        </div>
        <div class="form-group">
            <label for="password"><b>Password:</b></label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" required>
        </div>
        <button type="submit" class="btn">Login</button>
    </form>
</div>
</body>
</html>
