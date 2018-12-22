<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%ResultSet rs=(ResultSet)request.getAttribute("lop"); %>
 <form action="Update_Lop_Set" method="POST" id="search_form">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Sửa thông tin lớp học</h4>
      </div>
      <input type="hidden" name="isLopID"  value="<%=rs.getString("MaLop")%>">
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên lớp học" required="required" autofocus="autofocus"
       name="isTenLopHoc" value="<%=rs.getString("TenLop")%>" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên giảng viên" required="required" autofocus="autofocus"
       name="isTenGiangVien"value="<%=rs.getString("TenGiangVien")%>" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button onclick="form_submit()" class="btn btn-success" data-dismiss="modal">Sửa</button>
      </div>
      
    </div>
    </form>
    <script type="text/javascript">
  function form_submit() {
    document.getElementById("search_form").submit();
   }    
  </script>