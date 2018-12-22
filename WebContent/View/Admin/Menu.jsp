<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">

          <li class="nav-item">
            <a class="nav-link" href="CauHoiforward">
              <span class="menu-title">Quản lý câu hỏi</span>
              <i class="mdi mdi-format-list-bulleted menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
          <!--   <a class="nav-link" href="Hienthidsquanlydethi?pageid=1">--> 
          <a class="nav-link" href="DeThiforward">
          
              <span class="menu-title">Quản lý đề thi</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserForWard">
              <span class="menu-title">Quản lý lớp học</span>
              <i class="mdi mdi-table-large menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserForWard" aria-expanded="false" aria-controls="general-pages">
              <span class="menu-title">Quản lý sinh viên</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-medical-bag menu-icon"></i>
            </a>
            <div class="collapse" id="general-pages">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/blank-page.html"> Blank Page </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.html"> 404 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.html"> 500 </a></li>
              </ul>
              </div>
          </li>
         
        </ul>
      </nav>
      <!-- partial -->
   
      <!-- main-panel ends -->
    </div>
</body>
</html>