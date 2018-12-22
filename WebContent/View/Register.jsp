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
  <a href="Loginforward"><div class="toggle">
    <i class="fa fa-times fa-pencil"></i>
    <div class="tooltip">Login</div>
  </div></a>
  
  <div class="form">
    <h2>Create an account</h2>
    <form name="myform" action="Registercontroller" method="POST" onsubmit="return Validate()">
    <label><%=request.getAttribute("msgregister")!=null?request.getAttribute("msgregister"):" "%>
    </label>
    <br/>
   	  <input type="text" placeholder="Tên đầy đủ" name="name"/>
      <input type="text" placeholder="Username" name="membername"/>
      <input type="password" placeholder="Password" name="memberpass"/>
      <label class="block clearfix" id="errorpass" style="color:red"></label>
														
													
      <button type="submit">Register</button>
    </form>
  </div>
  <div class="cta"><a href="#">Forgot your password?</a></div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="js/index.js"></script>
<script type="text/javascript">
		
				function Validate()
				{
					var name = document.myform.name.value;
					var membername = document.myform.membername.value;
					var memberpass = document.myform.memberpass.value;
					
					if (name == "" || membername == "" || memberpass == "")
					{
						alert("Yêu cầu không bỏ trống bất kì thông tin nào");
						return false;
						
					}
					else 
					{
						if (memberpass.length <= 6)
						{
							document.getElementById("errorpass").innerHTML = "Độ dài pass > 6";
							return false;
						}
					}	
				}
		
		
		</script>
</body>

</html>
    