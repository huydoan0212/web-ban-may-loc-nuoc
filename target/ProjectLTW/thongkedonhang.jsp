<%@ page import="model.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="service.UserService" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: Thanhhoai
  Date: 7/12/2024
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Order> listOrderRecent = (List<Order>) session.getAttribute("listOrderRecent");
    if (listOrderRecent == null) listOrderRecent = new ArrayList<Order>();
%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<html>
<head>
    <title>Thống kê đơn hàng</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="DataTables/datatables.min.css" rel="stylesheet">
    <script src="DataTables/datatables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
            integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="headerAdmin.jsp" %>
<div class="recent-sales box">
    <div class="" style="margin-bottom: 20px">
        <form action="./pageAdminStartEnd" method="post">
            <label for="start-date">Ngày bắt đầu:</label>
            <input type="date" id="start-date" name="start-date" required>
            <br><br>
            <label for="end-date">Ngày kết thúc:</label>
            <input type="date" id="end-date" name="end-date" required>
            <br><br>
            <input type="submit" value="Thống kê">
        </form>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Xử lý sự kiện submit của form
            var form = document.querySelector("form");
            form.addEventListener("submit", function(event) {
                event.preventDefault(); // Ngăn chặn hành động mặc định của form

                // Lấy giá trị của start-date và end-date từ form
                var startDate = document.getElementById("start-date").value;
                var endDate = document.getElementById("end-date").value;

                // Định dạng lại ngày tháng
                var formattedStartDate = formatDate(startDate);
                var formattedEndDate = formatDate(endDate);

                // Cập nhật nội dung của các thẻ div có class là "title"
                var titleDivs = document.querySelectorAll(".title");
                titleDivs[0].textContent = "Thống kê từ ngày " + formattedStartDate + " đến ngày " + formattedEndDate;
            });
            function formatDate(dateString) {
                var date = new Date(dateString);
                var day = date.getDate();
                var month = date.getMonth() + 1;
                var year = date.getFullYear();
                return day + '/' + month + '/' + year;
            }
        });
    </script>
    <div class="title">Đơn Hàng Gần Đây</div>
    <div class="row">
        <div class="col-md-12">
            <table id="table-id" class="table table-hover table-bordered">
                <thead>
                <tr>
                    <th scope="col">Mã đơn hàng</th>
                    <th scope="col">Tên Khách Hàng</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Ngày đặt</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Tổng tiền</th>
                </tr>
                </thead>
                <tbody>
                <%for (Order order : listOrderRecent) {%>
                <tr>
                    <th scope="row"><%=order.getId()%>
                    </th>
                    <td><%=UserService.getFullNameById(order.getUser_id())%>
                    </td>
                    <td><%=order.getAddress()%>
                    </td>
                    <td><%=order.getOrder_date()%>
                    </td>
                    <td><%=order.getPhone()%>
                    </td>
                    <td><%=order.getStatus()%>
                    </td>
                    <td><%=numberFormat.format(order.getTotal_money())%></td>
                </tr>
                <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
<script>
    new DataTable('#table-id', {

    });
</script>