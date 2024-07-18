<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="model.*" %>
<%@ page import="dao.CategoryDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Log> logs = (List<Log>) request.getAttribute("logs");
    if (logs == null) logs = new ArrayList<>();
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý log</title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/pageAdmin_product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <jsp:include page="cssDatatable.jsp"/>
    <style>
        .icon-wrapper {
            margin-top: 2px;
            background-color: #4a90e2;
            display: inline-block;
            margin-right: 10px;
            padding: 5px;
            border-radius: 50%;
        }

        .icon-wrapper i {
            color: #ffffff;
        }
    </style>
</head>
<body>
<%@include file="headerAdmin.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">
                Log
            </div>

        </div>
    </div>
</section>
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="./js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.0.8/datatables.min.js"></script>
<jsp:include page="jsDatatable.jsp"/>
<script>
    $(document).ready(function () {
        $('#table-id').DataTable({
            dom: 'Bfrtip',
            buttons: [
                {
                    extend: 'excel',

                },
                {
                    extend: 'pdf',

                },
                {
                    extend: 'print',

                }
            ]
        });
    });
</script>
</body>
</html>