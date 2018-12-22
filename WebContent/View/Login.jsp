<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

    <link rel="stylesheet" href="Template/FrontEnd/css/style.css">
</head>

<body>

<div class="pen-title">
  <h1>Login </h1>
</div>

<div class="module form-module">
  <a href="Registercontroller"><div class="toggle">
    <i class="fa fa-times fa-pencil"></i>
    <div class="tooltip">Đăng ký</div>
  </div></a>
  <div class="form">
    <h2>Login to your account</h2>
    <form action="Loginforward" method="POST">
    <label><%=request.getAttribute("msglogin")!=null?request.getAttribute("msglogin"):" "%></label>
    <br/>
      <input type="text" placeholder="Username" name="membername"/>
      <input type="password" placeholder="Password" name="memberpass"/>
      <button type="submit">Login</button>
    </form>
  </div>
 
  <div class="cta"><a href="#">Forgot your password?</a></div>
</div>
  
  

</body>

</html>
    