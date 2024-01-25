<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="model.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="service.UserService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Object tempObj = session.getAttribute("countOrder");
  int countOrder = 0;
  if (tempObj != null) {
    if (tempObj instanceof Integer) {
      countOrder = (Integer) tempObj;
    } else if (tempObj instanceof String) {
      countOrder = Integer.valueOf((String) tempObj);
    }
  }

  Object tempObj2 = session.getAttribute("countProductOutStock");
  int countProductOutStock = 0;
  if (tempObj2 != null) {
    if (tempObj2 instanceof Integer) {
      countProductOutStock= (Integer) tempObj2;
    } else if (tempObj2 instanceof String) {
      countProductOutStock = Integer.valueOf((String) tempObj2);
    }
  }

  Object tempObj3 = session.getAttribute("totalMoney");
  int totalMoney = 0;
  if (tempObj3 != null) {
    if (tempObj3 instanceof Integer) {
      totalMoney = (Integer) tempObj3;
    } else if (tempObj3 instanceof String) {
      totalMoney = Integer.valueOf((String) tempObj3);
    }
  }


  Object tempObj4 = session.getAttribute("countOrderCancel");
  int countOrderCancel = 0;
  if (tempObj4 != null) {
    if (tempObj4 instanceof Integer) {
      countOrderCancel = (Integer) tempObj4;
    } else if (tempObj4 instanceof String) {
      countOrderCancel = Integer.valueOf((String) tempObj4);
    }
  }

  List<Order> orders = (List<Order>) request.getAttribute("listOderRecent");
  List<Product> products = (List<Product>) request.getAttribute("listProductBestSeller");

%>
<% Locale locale = new Locale("vi", "VN");
  NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<html lang="en">
<head>
  <title>Quản lý</title>
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/all.min.css">
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<div class="sidebar">
  <div class="logo-details">
    <a href="pageAdmin_Index.jsp"><img src="https://th.bing.com/th/id/OIP.ZpscpAS7kf2k2s_W_YdeuQHaHa?pid=ImgDet&rs=1" width="100px" height="100px"></a>
  </div>
  <ul class="nav-links">
    <li>
      <a href="index.jsp" class="active">
        <i class="fa-solid fa-border-all"></i>
        <span class="links_name">Trang chủ</span>
      </a>
    </li>
    <li>
      <a href="pageAdminCommentController" class="active">
        <i class="fa-solid fa-box-open"></i>
        <span class="links_name">Quản lý bình luận</span>
      </a>
    </li>
    <li>
      <a href="pageAdminContact" class="active">
        <i class="fa-solid fa-box-open"></i>
        <span class="links_name">Quản lý phản hồi</span>
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
      <a href="pageAdminUserController">
        <i class="fa-solid fa-user"></i>
        <span class="links_name">Quản Lý Tài Khoản</span>
      </a>
    </li>
    <li class="log_out">
      <a href="logOutController">
        <i class="fa-solid fa-right-from-bracket"></i>
        <span class="links_name">Đăng xuất</span>
      </a>
    </li>
  </ul>
</div>
<section class="home-section">
  <div class="home-content">
    <div class="view-box">
      <div class="header-box">
        <div class="title">Thống kê</div>
        <div>
          <select>
            <option value="0">Tất cả</option>
            <option value="1">Hôm nay</option>
            <option value="2">Tuần</option>
            <option value="3">Tháng</option>
          </select>
        </div>
      </div>
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Tổng Đơn Hàng</div>
            <div class="number">
              <h3><%=countOrder%></h3>
            </div>
          </div>
          <i class="fa-solid fa-cart-plus cart"></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Hết Hàng</div>
            <div class="number">
              <h3><%=countProductOutStock%></h3>
            </div>
          </div>
          <i class="fa-solid fa-xmark cart two"></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Doanh Thu</div>
            <div class="number">
              <h4><%=numberFormat.format(totalMoney)%>vnđ</h4>
            </div>
          </div>
          <i class="fa-solid fa-dollar-sign cart three"></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Đơn Hàng Hủy</div>
            <div class="number">
              <h3><%=countOrderCancel%></h3>
            </div>
          </div>
          <i class="fa-solid fa-scroll cart four"></i>
        </div>
      </div>
    </div>
    <div class="sales-boxes">
      <div class="recent-sales box">
        <div class="title">Đơn Hàng Gần Đây</div>
        <div class="sales-details">
          <table class="table table-hover table-bordered">
            <thead>
            <tr>
              <th scope="col">Mã đơn hàng</th>
              <th scope="col">Tên người dùng</th>
              <th scope="col">Ngày đặt</th>
              <th scope="col">Số điện thoại</th>
              <th scope="col">Tổng tiền</th>
            </tr>
            </thead>
            <tbody>
            <%for (Order order : orders) {%>
            <tr>
              <th scope="row"><%=order.getId()%></th>
              <td><%= UserService.getInstance().getFullNameById(order.getUser_id()) %></td>
              <td><%=order.getOrder_date()%></td>
              <td><%=order.getPhone()%></td>
              <td><%=numberFormat.format(order.getTotal_money())%> vnđ</td>
            </tr>
            <%}%>
            </tbody>
          </table>
        </div>
        <div class="button">
          <a href="pageAdmin_Checkout.jsp">Xem tất cả</a>
        </div>
      </div>
      <div class="top-sales box">
        <div class="title">Sản Phẩm Bán Chạy</div>
        <ul class="top-sales-details">
          <%for (Product product : products) {%>
          <li>
            <a href="trangsanpham?id=<%=product.getId()%>">
              <span class="product"><%=product.getTitle()%></span>
            </a>
            <span class="price"><%=numberFormat.format(product.getPrice())%> vnđ</span>
          </li>
          <%}%>
        </ul>
      </div>
    </div>
  </div>
</section>
</body>
</html>

