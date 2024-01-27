<%@ page import="java.util.LinkedHashSet" %>
<%@ page import="model.Post" %>
<%@ page import="dao.BlogDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%List< Post> postList = BlogDAO.getAllPosts();
  if (postList==null) postList=new ArrayList<>();
%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Quản lý</title>
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
      <div class="title">Quản Lý Blog</div>
      <div class="row">
        <div class="col-md-12">
          <div class="row element-button">
            <div class="col-sm-2">
              <a class="btn btn-add btn-sm" href="pageAdmin_addBlog1.jsp" title="Thêm">
                <i class="fas fa-plus"></i>
                Viết bài mới</a>
            </div>

          </div>

          <table id="table-id" class="table table-hover table-bordered">
            <thead>
            <tr>
              <th scope="col">Mã</th>
              <th scope="col">Tiêu đề</th>
              <th scope="col">Nội dung</th>
              <th scope="col">Tác giả </th>
              <th scope="col">Hình ảnh</th>
              <th scope="col">Chức năng</th>
            </tr>
            </thead>
            <tbody>
            <%for (Post p: postList){%>
            <tr>
              <th scope="row"><%=p.getId()%></th>
              <td><%=p.getTitle()%></td>
              <td><%=p.getContent()%></td>
             <td><%=p.getAuthor()%></td>
              <td><img src="https://cdn.tgdd.vn/Files/2018/02/21/1068412/may-loc-nuoc-pureit-cua-nuoc-nao-1.jpg"  style="max-width: 100px; max-height: 100px;"></td>
              <td>
                <a title="Xóa" href="pageAdmin_removeBlog1.jsp" class="icon-link">
                  <i class="icon-wrapper">
                    <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                  </i>
                </a>
                <a title="Cập nhật" href="" class="icon-link">
                  <i class="icon-wrapper">
                    <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                  </i>
                </a>
              </td>
            </tr>
            <%}%>
            </tbody>


          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/jquery.dataTables.js"></script>

<script type="text/javascript" charset="utf8" src="../../../js/bootstrap.bundle.min.js"></script>
<script>$("#table-id").DataTable();
</script>

</body>
</html>
