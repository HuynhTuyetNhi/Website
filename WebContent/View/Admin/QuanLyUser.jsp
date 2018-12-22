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
                <li class="breadcrumb-item"><a href="#">Quản lý User</a></li>
              </ol>
            </nav>
          </div>
          <div class="row">
         
          
     <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <a href="InsertUser"> <button type="button" class="btn btn-info">Thêm User</button></a>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>
                          User
                        </th>
                        <th>
                         Họ và tên
                        </th>
                        <th>
                          Tên đăng nhập
                        </th>
                        <th>
                          Mật khẩu
                        </th>
                        <th>
                          Lớp
                        </th>
                         <th>
                          Ngày sinh
                        </th>
                        <th>
                         Giới tính
                        </th>
                        <th>
                          Địa chỉ
                        </th>
                        <th>
                        Số điện thoại
                        </th>
                        <th>
                        Thao tác
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listMemBer}" var="list" >
                    
			                      <tr>
			                        <td class="py-1">
			                          <img src="Imageaudiodethi/${list.image}" alt="image"/>
			                        </td>
			                        <td>
			                          ${list.name}
			                        </td>
			                        <td>
			                          ${list.membername}
			                        </td>
			                        <td>
			                           ${list.memberpass}
			                        </td>
			                        <td>
			                          ${list.IDLop}
			                        </td>
			                         <td>
			                          ${list.ngaySinh}
			                        </td>
			                         <td>
			                          ${list.sex}
			                        </td>
			                         <td>
			                          ${list.diaChi}
			                        </td>
			                         <td>
			                         ${list.phone}
			                        </td>
			                        <td>
			                        <a href="DeleteUser?idmember=${list.memberid}" class="btn btn-danger triggerRemove">remove blog</a>
			                        <a href="DeleteUser?idmember=${list.memberid}"class="xoa" id="${list.memberid}" >
						<button class="btn btn-success" data-toggle="modal"
								data-target="#myModal1" name="button1">Xóa</button></a>
						<a href="UpdateUser?idmember=${list.memberid}">
							<button class="btn btn-danger" data-toggle="modal"
								data-target="#myModal2">Sửa</button></a></td>
			                      </tr>
                    
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
 </div>
          </div>
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Remove blog</h4>
      </div>
      <div class="modal-body">
        Really remove?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>								   
												 			
												
					<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>					
          <script >
          	    $('.');
                console.log(member);
          </script>
  <script src="Template/Admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="Template/Admin/vendors/js/vendor.bundle.addons.js"></script>

  <script src="Template/Admin/Template/Admin/js/off-canvas.js"></script>
  <script src="Template/Admin/js/misc.js"></script>
 
  <script src="Template/Admin/js/dashboard.js"></script>

</body>
</html>