<%@ page import="dao.BlogDAO" %>
<%@ page import="model.Post" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Cập nhật bài viết</title>
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/all.min.css">
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/pageAdmin_product.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    .icon-wrapper {
      margin-top: 2px;
      background-color: #4a90e2;
      display: inline-block;
      margin-right: 10px;
      padding: 5px; /* Điều này tạo khoảng trắng xung quanh biểu tượng */
      border-radius: 50%; /* Để tạo biểu tượng hình tròn */
    }

    .icon-wrapper i {
      color: #ffffff; /* Màu trắng cho biểu tượng */
    }
  </style>
</head>
<body>
<div class="sidebar">
  <div class="logo-details">
    <a href="pageAdmin_Index.jsp"><img src="https://th.bing.com/th/id/OIP.ZpscpAS7kf2k2s_W_YdeuQHaHa?pid=ImgDet&rs=1" width="240px" height="150px"></a>
  </div>
  <ul class="nav-links">
    <li>
      <a href="pageAdmin_Index.jsp" class="active">
        <i class="fa-solid fa-border-all"></i>
        <span class="links_name">Trang chủ</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Storage.jsp" class="active">
        <i class="fa-solid fa-box-open"></i>
        <span class="links_name">Quản lý kho</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Product.jsp">
        <i class="fa-solid fa-box-archive"></i>
        <span class="links_name">Quản Lý Sản Phẩm</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Checkout.jsp">
        <i class="fa-solid fa-note-sticky"></i>
        <span class="links_name">Quản Lý Đơn Hàng</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_User.jsp">
        <i class="fa-solid fa-user"></i>
        <span class="links_name">Quản Lý Tài Khoản</span>
      </a>
    </li>
    <li>
      <a href="pageAdmin_Blog.jsp">
        <i class="fa-solid fa-blog"></i>
        <span class="links_name">Quản Lý Blog</span>
      </a>
    </li>

    <li class="log_out">
      <a href="pageAdmin_login.jsp">
        <i class="fa-solid fa-right-from-bracket"></i>
        <span class="links_name">Đăng xuất</span>
      </a>
    </li>
  </ul>
</div>
<section class="home-section">
  <div class="home-content">
    <div class="manager-product">
      <div class="title">Chỉnh sửa thông tin bài viết</div>
      <form id="myForm" action="PageAdminUpdatePage?Blogid" method="post" class="row">
        <input type="hidden" name="postId" value="${post.id}" />
        <%
          int postId = 0;

          String idParam = request.getParameter("id");
          if (idParam != null && !idParam.isEmpty()) {
            try {
              postId = Integer.parseInt(idParam);
            } catch (NumberFormatException e) {
              response.getWriter().println("Lỗi: id không hợp lệ.");
              e.printStackTrace();
            }
          }

          BlogDAO blogDAO = new BlogDAO();
          Post post = null;
          try {
            post = blogDAO.getPostById(postId);
            if (post != null) {
        %>
        <div class="form-group col-md-3">
          <label class="control-label">Mã</label>
          <input name="idP" class="form-control" type="number" value="<%= post.getId() %>" placeholder="" readonly>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Tiêu đề</label>
          <input name="name" class="form-control" type="text" value="<%=post.getTitle() %>">
        </div>

        <div class="form-group col-md-3">
          <label class="control-label">Tác giả</label>
          <select name="type" class="form-control">
            <option value="1" <%= post.getAuthor().equals("Nguyễn Thanh Hoài") ? "selected" : "" %>>Nguyễn Thanh Hoài</option>
            <option value="2" <%= post.getAuthor().equals("Đoàn Quốc Huy") ? "selected" : "" %>>Đoàn Quốc Huy</option>
            <option value="3" <%= post.getAuthor().equals("Nguyễn Quốc Bình") ? "selected" : "" %>>Nguyễn Quốc Bình</option>
          </select>
        </div>
        <div>
          <div class="form-group col-md-12">
            <label class="control-label" <%=post.getImg()%>>Ảnh minh họa</label>
          </div>
          <div id="myfileupload" style="padding-left: 15px; padding-bottom: 20px;">
            <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);">
          </div>
        </div>

        <div class="form-group col-md-12">
          <label class="control-label">Nội dung</label>
          <textarea class="form-control" name="describe" id="mota"><%=  post.getContent() %></textarea>
        </div>

        <%
            } else {
              response.getWriter().println("Lỗi: Không tìm thấy bài viết với ID đã cho.");
            }
          } catch (Exception e) {
            response.getWriter().println("Lỗi: Không thể lấy được bài viết từ cơ sở dữ liệu.");
            e.printStackTrace();
          }
        %>
      </form>
      <button id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
      <a class="btn btn-cancel" href="pageAdmin_Blog.jsp">Hủy bỏ</a>
    </div>
  </div>
</section>

<script src="../js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/main.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Bắt sự kiện click cho nút ở ngoài form
    document.getElementById("externalButton").addEventListener("click", function () {
      // Gọi hàm submitForm() khi nút được nhấn
      submitForm();
    });
  });

  // Hàm để gửi form
  function submitForm() {
    // Lấy đối tượng form bằng ID
    var form = document.getElementById("myForm");

    // Gửi form
    form.submit();
  }


  document.addEventListener("DOMContentLoaded", function() {
    var idParam = <%= request.getAttribute("idParam") %>;
    document.querySelector('input[name="idP"]').value = idParam;
  });
</script>
</body>
</html>
