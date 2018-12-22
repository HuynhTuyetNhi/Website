<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Purple Admin</title>
 
  <link rel="stylesheet" href="Template/Admin/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="Template/Admin/vendors/css/vendor.bundle.base.css">
 
  <link rel="stylesheet" href="Template/Admin/css/style.css">
 
  <link rel="shortcut icon" href="Template/Admin/images/favicon.png" />
</head>
<body>
 <div class="container-scroller">
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="Menu.jsp"></jsp:include>
 <div class="content-wrapper" style="margin-top:-630px">
          <div class="page-header">
            <h3 class="page-title">
             Quản lý User
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Quản lý Câu hỏi</a></li>
              </ol>
            </nav>
          </div>
          <div class="row">
         
          
     <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <a href="InsertCauHoi"> <button type="button" class="btn btn-info">Thêm Câu Hỏi</button></a>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>
                         Tên câu hỏi
                        </th>
                        <th>
                        Đáp án A
                        </th>
                        <th>
                         Đáp án B
                        </th>
                        <th>
                         Đáp án C
                        </th>
                        <th>
                          Đáp án D
                        </th>
                         <th>
                          Đáp án
                        </th>
                        <th>
                         Loại câu hỏi
                        </th>
                        <th>
                        Thao tác
                        </th>
                      </tr>
                    </thead>
                    
                  </table>
                </div>
              </div>
            </div>
 </div>
          </div>
  <script src="Template/Admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="Template/Admin/vendors/js/vendor.bundle.addons.js"></script>

  <script src="Template/Admin/Template/Admin/js/off-canvas.js"></script>
  <script src="Template/Admin/js/misc.js"></script>
 
  <script src="Template/Admin/js/dashboard.js"></script>

</body>
</html>