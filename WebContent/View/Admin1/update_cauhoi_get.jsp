<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%ResultSet rs=(ResultSet)request.getAttribute("CauHoi"); %>
 <form name="search_form" id="search_form" class="payment" method="post"
                    action="Update_Lop_Set">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Sửa thông tin câu hỏi</h4>
      </div>
      <input type="hidden" name="isCauHoiID"  value="<%=rs.getString("CauHoiID")%>">
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên câu hỏi" required="required" autofocus="autofocus"
      name="isTenCauHoi" value="<%=rs.getString("TenCauHoi")%>" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án A" required="required" autofocus="autofocus" 
      name="isDapAnA" value="<%=rs.getString("DapAnA")%>" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án B" required="required" autofocus="autofocus" 
      name="isDapAnB" value="<%=rs.getString("DapAnB")%>">
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án C" required="required" autofocus="autofocus" 
      name="isDapAnC" value="<%=rs.getString("DapAnC")%>">
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án D" required="required" autofocus="autofocus" 
      name="isDapAnD" value="<%=rs.getString("DapAnD")%>">
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Đáp án" required="required" autofocus="autofocus" 
      name="isDapAn" value="<%=rs.getString("DapAn")%>">
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Loại câu hỏi" required="required" autofocus="autofocus"
       name="isLoaiCauID" value="<%=rs.getString("LoaiCauID")%>">
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