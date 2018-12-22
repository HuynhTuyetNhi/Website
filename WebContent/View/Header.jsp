<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
		if (session.getAttribute("sessionuser")==null)
		{
	%>
  <nav class="menu_nav navbar navbar-expand-sm ">
	<img src="Template/img/download.jpg" width="50" height="50"/>
	<a class="name navbar-brand" href="#">English</a>
  <!-- Links -->
  <ul class="menu_content navbar-nav">
    <li class="iteam nav-item in active">
      <a class="content nav-link" href="#">Trang chủ</a>
    </li>
    <li class="iteam nav-item">
      <a class="content nav-link" href="#">Ngân hàng câu hỏi</a>
    </li>
    <li class="iteam nav-item">
      <a class="content nav-link" href="Hienthidsdethi?pageid=1">Đề thi</a>
    </li>
    <li class="nav-item dropdown">
    <a class="content nav-link dropdown-toggle" data-toggle="dropdown" href="#">Quản lí thông tin</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Quản lí thí sinh</a>
      <a class="dropdown-item" href="#">Quản lí lớp học</a>
   
    </div>
  </li>
     <li class="iteam nav-item">
      <a class="content nav-link" href="Loginforward">Đăng nhập</a>
    </li>
       <li class="iteam nav-item">
      <a class="content nav-link" href="Registercontroller">Đăng ký</a>
    </li>

   
  </ul>
</nav>

		<%
		}
		else
		{
	 %>
	 
	 <nav class="menu_nav navbar navbar-expand-sm ">
	<img src="Template/img/download.jpg" width="50" height="50"/>
	<a class="name navbar-brand" href="#">English</a>
  <!-- Links -->
  <ul class="menu_content navbar-nav">
    <li class="iteam nav-item in active">
      <a class="content nav-link" href="#">Trang chủ</a>
    </li>
    <li class="iteam nav-item">
      <a class="content nav-link" href="#">Ngân hàng câu hỏi</a>
    </li>
    <li class="iteam nav-item">
      <a class="content nav-link" href="Hienthidsdethi?pageid=1">Đề thi</a>
    </li>
    <li class="nav-item dropdown">
    <a class="content nav-link dropdown-toggle" data-toggle="dropdown" href="#">Quản lí thông tin</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Quản lí thí sinh</a>
      <a class="dropdown-item" href="#">Quản lí lớp học</a>
   
    </div>
  </li>
     <li class="iteam nav-item">
      <a class="content nav-link" href="#">${sessionuser}</a>
    </li>
       <li class="iteam nav-item">
      <a class="content nav-link" href="Logoutcontroller">Thoát</a>
    </li>

   
  </ul>
</nav>
<%} %>
</body>
</html>





       
       
       
       
      