<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập tài khoản</title>
    <link rel="stylesheet" href="./css/login.css">
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
                <h2>Đăng nhập</h2>
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
                        <h1>Đăng Nhập</h1>
                        <div class="input-box">
                            <input type="text" placeholder="Tên đăng nhập">
                        </div>
                        <div class="input-box">
                            <input type="password" placeholder="Mật khẩu">
                        </div>

                        <div class="signin-btn">
                            <button type="submit" class="btn">Đăng Nhập</button>
                        </div>
                        <div class="label-forget">
                            <a href="forget.jsp" class="forget">Quên mật khẩu</a>

                        </div>
                        <div class="label-or">
                            <p for="">Hoặc</p>
                        </div>
                        <div class="btn-ggfb">
                           <button class="btnfb">
                               <i class="fa-brands fa-facebook"></i> Facebook
                           </button>
                            <button class="btngg">
                                <i class="fa-brands fa-google"></i> Google
                            </button>
                        </div>
                        <div class="des">
                            <p>Bạn mới biết đến Healthywater? </p>
                            <a href="register.jsp">Đăng kí</a>
                        </div>
                    </form>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp"%>
    </div>
</body>
</html>