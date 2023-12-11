<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Liên hệ</title>
    <link rel="stylesheet" href="./css/contact.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="header.jsp" %>
<div class="slider">
    <div class="container">
        <div class="contact-in">
            <div class="contact-form">
                <h2>Liên hệ với chúng tôi</h2>
                <input class="input-box" type="text" placeholder="Họ và tên">
                <input class="input-box" type="email" placeholder="Email">
                <input class="input-box" type="text" placeholder="Số điện thoại">
                <textarea class="input-textarea" placeholder="Nội dung"></textarea>
                <button class="btn-submit">Gửi liên hệ</button>
                <div class="des">
                    <div class="location-des">
                        <i class="fa-solid fa-location-dot"></i>
                        <p>Toà Thiên Lý Đại Học Nông Lâm TpHCM</p>
                    </div>
                    <div class="phone-des">
                        <i class="fa-solid fa-phone"></i>
                        <p>6868-6688</p>
                    </div>
                    <div class="email-des">
                        <i class="fa-regular fa-envelope"></i>
                        <p>coolteam@gmail.com</p>
                    </div>
                </div>
            </div>
            <div class="contact-map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.214525515985!2d106.78918677547573!3d10.871281657436034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRQLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1699285159932!5m2!1svi!2s" width="100%" height="auto" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>