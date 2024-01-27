<%@ page import="java.util.List" %>
<%@ page import="model.Order" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.User" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Order> listOrderWaitConfirm = (List<Order>) session.getAttribute("listOrderWaitConfirm");
    if (listOrderWaitConfirm == null) listOrderWaitConfirm = new ArrayList<Order>();
    List<Order> listOrderConfirm = (List<Order>) session.getAttribute("listOrderConfirm");
    if (listOrderConfirm == null) listOrderConfirm = new ArrayList<Order>();
    List<Order> listOrderTransport = (List<Order>) session.getAttribute("listOrderTransport");
    if (listOrderTransport == null) listOrderTransport = new ArrayList<Order>();
    List<Order> listOrderTransported = (List<Order>) session.getAttribute("listOrderTransported");
    if (listOrderTransported == null) listOrderTransported = new ArrayList<Order>();
    List<Order> listOrderCancel = (List<Order>) session.getAttribute("listOrderCancel");
    if (listOrderCancel == null) listOrderCancel = new ArrayList<Order>();
%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý đơn hàng</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/checkout.css">
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
<%@include file="headerAdmin.jsp" %>


<section class="home-section">
    <div class="home-content">
        <div class="manager-checkout">
            <div class="title">Quản Lý Đơn Hàng</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tab row element-button">
                        <button class="tablinks col-sm-2" id="defaultOpen" onclick="openCity(event, 'tab1')">Chờ xác
                            nhận
                        </button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab2')">Đã xác nhận</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab4')">Đang giao</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab5')">Đã giao</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab3')">Đã hủy</button>
                    </div>
                    <div id="tab1" class="tabcontent">
                        <table id="table-id-1" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Order o : listOrderWaitConfirm) {
                                    User user = UserDAO.getUserByUserId(o.getUser_id());
                            %>
                            <tr>
                                <th scope="row"><%=o.getId()%></th>
                                <td><%=user.getFullName()%></td>
                                <td><%=o.getOrder_date()%></td>
                                <td><%=o.getAddress()%></td>

                                <td><%=numberFormat.format(o.getTotal_money())%><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="page-admin-check-detail?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>
                                    <a title="Xác nhận đơn hàng" href="confirmOrder?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-check"></i>
                                        </i>
                                    </a>
                                    <a title="hủy đơn hàng" href="adminCancelOrder?order_id=<%=o.getId()%>&page_id=1" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                        </i>
                                    </a>
                                </td>
                            </tr>
                            <%}%>

                            </tbody>
                        </table>
                    </div>

                    <div id="tab2" class="tabcontent">
                        <table id="table-id-2" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Order o : listOrderConfirm) {
                                    User user = UserDAO.getUserByUserId(o.getUser_id());
                            %>
                            <tr>
                                <th scope="row"><%=o.getId()%></th>
                                <td><%=user.getFullName()%></td>
                                <td><%=o.getOrder_date()%></td>
                                <td><%=o.getAddress()%></td>

                                <td><%=numberFormat.format(o.getTotal_money())%><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="page-admin-check-detail?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>
                                    <a title="giao hàng" href="transportOrder?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-check"></i> <!-- Biểu tượng thùng rác -->
                                        </i>
                                    </a>
                                    <a title="hủy đơn hàng" href="adminCancelOrder?order_id=<%=o.getId()%>&page_id=1" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                        </i>
                                    </a>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>

                    <div id="tab3" class="tabcontent">
                        <table id="table-id" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Order o : listOrderCancel) {
                                    User user = UserDAO.getUserByUserId(o.getUser_id());
                            %>
                            <tr>
                                <th scope="row"><%=o.getId()%></th>
                                <td><%=user.getFullName()%></td>
                                <td><%=o.getOrder_date()%></td>
                                <td><%=o.getAddress()%></td>

                                <td><%=numberFormat.format(o.getTotal_money())%><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="page-admin-check-detail?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>

                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <div id="tab4" class="tabcontent">
                        <table id="table-id-4" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>


                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Order o : listOrderTransport) {
                                    User user = UserDAO.getUserByUserId(o.getUser_id());
                            %>
                            <tr>
                                <th scope="row"><%=o.getId()%></th>
                                <td><%=user.getFullName()%></td>
                                <td><%=o.getOrder_date()%></td>
                                <td><%=o.getAddress()%></td>

                                <td><%=numberFormat.format(o.getTotal_money())%><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="page-admin-check-detail?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
                                        </i>
                                    </a>
                                    <a title="giao hàng" href="transportedOrder?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-check"></i> <!-- Biểu tượng thùng rác -->
                                        </i>
                                    </a>
                                    <a title="hủy đơn hàng" href="adminCancelOrder?order_id=<%=o.getId()%>&page_id=1" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                        </i>
                                    </a>
                                </td>
                            </tr>
                            <%}%>

                            </tbody>
                        </table>
                    </div>
                    <div id="tab5" class="tabcontent">
                        <table id="table-id-5" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col">Chức năng</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Order o : listOrderTransported) {
                                    User user = UserDAO.getUserByUserId(o.getUser_id());
                            %>
                            <tr>
                                <th scope="row"><%=o.getId()%></th>
                                <td><%=user.getFullName()%></td>
                                <td><%=o.getOrder_date()%></td>
                                <td><%=o.getAddress()%></td>

                                <td><%=numberFormat.format(o.getTotal_money())%><sup>đ</sup></td>
                                <td>
                                    <a title="xem chi tiết đơn hàng" href="page-admin-check-detail?order_id=<%=o.getId()%>" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-search"></i> <!-- Biểu tượng kính lúp -->
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
    </div>
</section>


<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="./js/bootstrap.bundle.min.js"></script>
<script src="./js/pageAdmin_main.js"></script>
<script>
    $("#table-id").DataTable();
    $("#table-id-1").DataTable();
    $("#table-id-2").DataTable();
    $("#table-id-4").DataTable();
    $("#table-id-5").DataTable();
</script>

</body>
</html>
