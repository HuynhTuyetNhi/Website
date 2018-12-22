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
                  <form class="forms-sample" action="InsertDeThi"  method="post">   
                    <div class="form-group">
                      <label for="exampleInputName1">Tên Đề Thi</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Name" name="isdethi">
                    </div>
                    
                    <div class="form-group" style="float:left">
                     <label for="exampleInputCity1">Số Câu Dễ </label>
				      <select class="form-control" id="sel1" name="issocaude" style="width:90px">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				      </select>
                    </div>
                   
                   
                    <div class="form-group" style="float:left;margin-left:80px">
                     <label for="exampleInputCity1">Số Câu Trung Bình </label>
				      <select class="form-control" id="sel1" name="issocautrungbinh" style="width:90px">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				      </select>
                    </div>
                   <div class="form-group" style="clear:both;margin-left:80px">
                    <label for="exampleInputCity1">Số Câu Khó</label>
				       <select class="form-control" id="sel1" name="issocaukho" style="width:90px">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				      </select>
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputCity1">Thời Gian Mở Đề </label>
                      <input type="date" class="form-control" id="exampleInputCity1" placeholder="Location" name="isthoigianmode"
                       style="width:280px">
                    </div>
                     <div class="form-group">
                      <label for="exampleInputCity1">Thời Gian Làm Bài</label>
                       <select class="form-control" id="sel1" name="isthoigianlambai"style="width:280px">
				        <option>10</option>
				        <option>1000</option>
				        <option>2000</option>
				        <option>3000</option>
				      </select>
                    </div>
                    <div class="form-group" style="clear:both;margin-left:80px">
                    <label for="exampleInputCity1">Chọn Lớp Làm Bài Thi</label>
				       <select class="form-control" id="sel1" name="isloplambai" style="width:90px">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				      </select>
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