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
 <div class="content-wrapper">
          
          <div class="row">
         
           <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Basic form elements</h4>
                  <p class="card-description">
                    Basic form elements
                  </p>
                  <form class="forms-sample" action="InsertCauHoi"  method="post">   
                    <div class="form-group">
                      <label for="exampleInputName1">Tên câu hỏi</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Name" name="iscauhoi">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Đáp Án A</label>
                      <input type="text" class="form-control" id="exampleInputEmail3" placeholder="Email" name="isdapanA">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Đáp Án B</label>
                      <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password" name="isdapanB">
                    </div>
                   
                   
                    <div class="form-group">
                      <label for="exampleInputCity1">Đáp Án C</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location" name="isdapanC">
                    </div>
                   <div class="form-group">
                      <label for="exampleInputCity1">Đáp Án D</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location" name="isdapanD">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputCity1">Đáp Án</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location" name="isdapan">
                    </div>
                     <div class="form-group">
                      <label for="exampleInputCity1">Loại Câu Hỏi</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location" name="isloaicauhoi">
                    </div>
                    <button type="submit" class="btn btn-gradient-primary mr-2" name="button1">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
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