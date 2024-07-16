<%@ page import="cart.Cart" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="model.*" %>
<%@ page import="dao.OrderDetailDAO" %>
<%@ page import="dao.VoucherDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.ProductDAO" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 21/01/2024
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Order order = (Order) session.getAttribute("order");

    Object tempObj = session.getAttribute("percent_decrease");
    double percent_decrease = 0;
    if (tempObj != null) {
        if (tempObj instanceof Double) {
            percent_decrease = (Double) tempObj;
        } else if (tempObj instanceof String) {
            percent_decrease = Double.valueOf((String) tempObj);
        }
    }
    List<OrderDetail> orderDetails = OrderDetailDAO.getOrderDetailByIdOrder(order.getId());
    Voucher voucher = VoucherDAO.getVoucherById(order.getVoucher_id());
    System.out.println(order.getId());
    request.getSession().setAttribute("order_id", order.getId());
    String reason = request.getParameter("reason");
%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thanh Toán</title>
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/payment.css">
    <style>
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        #changeAddressBtn {
            margin-top: 10px;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        #changeAddressBtn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<!--header-->
<%@include file="header.jsp" %>
<div id="main">
    !--Phần tỉnh thành-->
    <!--silder-->
    <div class="slider">
        <div class="container">
            <div class="payment">
                <h1 class="payment-h1">Thanh Toán <i class="fa-solid fa-money-bill"></i></h1>
                <form action="cancel-order?order_id=<%=order.getId()%>">
                    <div class="payment-id">
                        <h2 class="payment-id-title">Đơn hàng của bạn</h2>
                        <h3 id="payment-id-main">Mã đơn hàng: #<%=order.getId()%>
                        </h3>
                        <button type="submit" href="" id="cancel-form">Huỷ đơn hàng</button>
                    </div>
                </form>
                <div class="payment-information">
                    <div class="information-1">
                        <h4>Người nhận hàng: </h4>
                        <p><%=user.getFullName()%>
                        </p>
                    </div>
                    <div class="information-2">
                        <h4>Số điện thoại nhận hàng:</h4>
                        <p><%=user.getPhoneNumber()%>
                        </p>
                    </div>
                    <div class="information-3">
                        <h4>Giao đến: </h4>
                        <p id="selectedAddress"><%=order.getAddress()%> (nhân viên sẽ gọi xác nhận trước khi giao)</p>
                        <button id="changeAddressBtn" type="button">Thay đổi địa chỉ</button>
                    </div>
                </div>

                <!-- Thêm phần modal để chọn địa chỉ -->
                <div id="addressModal" class="modal">
                    <div class="modal-content">
                        <span class="close">&times;</span>
                        <h2>Chọn địa chỉ giao hàng</h2>
                        <div id="addressList">
                            <!-- Địa chỉ sẽ được thêm vào đây bằng JavaScript -->
                        </div>
                    </div>
                </div>

                <div class="payment-title">
                    <h3 class="title-1">Sản phẩm</h3>
                    <h3 class="title-2">Tổng tiền</h3>
                </div>
                <%int total = 0;%>
                <%
                    for (OrderDetail od : orderDetails

                    ) {
                        total += od.getTotal_money();

                %>
                <div class="product">
                    <p class="product-1"><%=ProductDAO.getById(od.getProduct_id()).getTitle()%>
                        x <%=od.getQuantity()%>
                    </p>
                    <p class="product-price"><%=numberFormat.format(od.getTotal_money())%>
                        ₫</p>
                </div>
                <%}%>
                <div class="tax">
                    <p class="tax-title"><%=voucher.getVoucher_name()%>
                    </p>
                    <p class="tax-price"><%=numberFormat.format(total - order.getTotal_money())%>₫
                    </p>
                </div>
                <div class="total">
                    <p class="total-title">Tồng tiền</p>
                    <p class="total-price"><%=numberFormat.format(order.getTotal_money())%>₫</p>
                </div>
                <form id="paymentForm" action="payment-order">
                    <h3 style="padding: 0 24px">Chọn hình thức thanh toán</h3>
                    <div class="payment-type">
                        <div class="payment-type-1">
                            <input type="radio" value="Thanh toán bằng tiền mặt" name="paymentOption"
                                   class="checkbox-2">
                            <p>Thanh toán bằng tiền mặt</p>
                        </div>
                        <div class="payment-type-1">
                            <input type="radio" value="Thanh toán bằng thẻ ngân hàng" name="paymentOption"
                                   class="checkbox-2">
                            <p>Thanh toán bằng thẻ ngân hàng</p>
                        </div>
                    </div>
                    <button type="submit" class="submit">
                        <i class="fa-solid fa-bag-shopping"></i>
                        Thanh Toán
                    </button>
                </form>

                <script>
                    document.getElementById('paymentForm').addEventListener('submit', function (e) {
                        var radios = document.getElementsByName('paymentOption');
                        var isChecked = false;
                        var selectedValue;
                        var form = document.getElementById('paymentForm');
                        for (var i = 0; i < radios.length; i++) {
                            if (radios[i].checked) {
                                isChecked = true;
                                selectedValue = radios[i].value; // Lấy giá trị của radio button được chọn
                                form.action += "?payment_type=" + selectedValue; // Sử dụng URL ban đầu khi cập nhật action của form
                                break;
                            }
                        }
                        if (!isChecked) {
                            e.preventDefault();
                            alert('Vui lòng chọn một hình thức thanh toán.');
                        }
                    });
                </script>


            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <script src="./js/payment.js"></script>
    <script>
        var modal = document.getElementById("addressModal");
        var btn = document.getElementById("changeAddressBtn");
        var span = document.getElementsByClassName("close")[0];
        var selectedAddressElement = document.getElementById("selectedAddress");
        document.addEventListener('DOMContentLoaded', (event) => {
            btn.onclick = function () {
                modal.style.display = "block";
                // Gọi API để lấy danh sách địa chỉ
                fetch('/get-list-address?userId=<%=user.getId()%>')
                    .then(response => response.json())
                    .then(addresses => {
                        var addressList = document.getElementById("addressList");
                        addressList.innerHTML = '';
                        addresses.forEach(address => {
                            var addressElement = document.createElement('div');
                            addressElement.innerHTML = address.address;
                            addressElement.onclick = function () {
                                selectedAddressElement.textContent = address.address;
                                modal.style.display = "none";
                                // Gửi yêu cầu cập nhật địa chỉ đơn hàng
                                <%--fetch('/update-order-address', {--%>
                                <%--    method: 'POST',--%>
                                <%--    headers: {--%>
                                <%--        'Content-Type': 'application/json',--%>
                                <%--    },--%>
                                <%--    body: JSON.stringify({--%>
                                <%--        orderId: <%=order.getId()%>,--%>
                                <%--        newAddress: address.address--%>
                                <%--    }),--%>
                                <%--});--%>
                            };
                            addressList.appendChild(addressElement);
                        });
                    });
            }


            span.onclick = function () {
                modal.style.display = "none";
            }

            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        })
    </script>
</body>
</html>
