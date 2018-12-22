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
                  <form class="forms-sample" action="InsertUser"  method="POST">   
                    <div class="form-group">
                      <label for="exampleInputName1">Name</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Name" name="ishoten">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Member name</label>
                      <input type="text" class="form-control" id="exampleInputEmail3" placeholder="Email" name="istendn">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Member pass</label>
                      <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password" name="ismatkhau">
                    </div>
                    <div class="form-group">
                      <label for="exampleSelectGender">Gender</label>
                        <select class="form-control" id="exampleSelectGender" name="rdsex">
                          <option>Nam</option>
                          <option>Nữ</option>
                        </select>
                      </div>
                    <div class="form-group">
                      <label>Ảnh đại diện</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image" name="isanh">
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload Ảnh</button>
                        </span>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputCity1">Lớp</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location" name="islop">
                    </div>
                   <div class="form-group">
                      <label for="exampleInputCity1">Ngày sinh</label>
                      <input type="date" class="form-control" id="exampleInputCity1" placeholder="Location" name="isngaysinh">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputCity1">Số điện thoại</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location" name="isdt">
                    </div>
                     <div class="form-group">
                      <label for="exampleInputCity1">Địa chỉ</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location" name="isdc">
                    </div>
                    <button type="submit" class="btn btn-gradient-primary mr-2" name="button1">Submit</button>
                    <button type="submit" class="btn btn-gradient-primary mr-2">Hủy</button>
                    
                  </form>
                </div>
              </div>
            </div>
         
         
         </div>
          </div>
  <script src="Template/Admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="Template/Admin/vendors/js/vendor.bundle.addons.js"></script>

  <script src="Template/Admin/js/off-canvas.js"></script>
  <script src="Template/Admin/js/misc.js"></script>
 
  <script src="Template/Admin/js/dashboard.js"></script>
  <script src="Template/Admin/js/uploadfile.js"></script>

</body>
</html>