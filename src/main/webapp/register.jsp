<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng kí ngay</title>
    <link rel="stylesheet" href="./css/register.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="header">
  <div class="container">
    <ul>
      <li class="logo">
        <img src="./img/logo-removebg-preview.png" alt="logo">
      </li>
      <li class="label">
        <h2>Đăng ký</h2>
      </li>
      <li class="help">
        <a href="contact.jsp">Bạn cần giúp đỡ?</a>
      </li>
    </ul>
  </div>
</div>
<div class="slider">
  <div class="container">
    <div class="slider-logo">
      <img src="./img/logo-removebg-preview.png" alt="">
    </div>
    <div class="slider-form">
      <form action="">
        <h1>Đăng ký</h1>
        <div class="input-box">
          <input type="text" placeholder="Họ và tên">
        </div>
        <div class="input-box">
          <input type="email" placeholder="Email">
        </div>
        <div class="input-box">
          <input type="text" placeholder="Số điện thoại">
        </div>
        <div class="input-box">
          <input type="password" placeholder="Tên đăng nhập">
        </div>
        <div class="input-box">
          <input type="password" placeholder="Mật khẩu">
        </div>
        <div class="input-box">
          <input type="password" placeholder="Lặp lại mật khẩu">
        </div>
        <div class="input-box">
          <input type="text" placeholder="Địa chỉ">
        </div>
        <div class="check">
          <input type="checkbox">
          <p>Tôi đồng  với các điều khoản bảo mật</p>
        </div>
        <div class="signin-btn">
          <button type="submit" class="btn">Đăng Ký</button>
        </div>
      </form>
    </div>
  </div>
</div>
<%@include file="footer.jsp"%>
</div>
</body>
</html>