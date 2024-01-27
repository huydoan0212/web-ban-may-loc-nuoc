<%@ page import="model.Category" %>
<%@ page import="dao.CategoryDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lí - Thêm sản phẩm</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/pageAdmin_product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="./js/pageAdmin_main.js"></script>
    <script src="./js/jquery.dataTables.js"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="headerAdmin.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Thêm Sản Phẩm</div>
            <form class="row" action="add-product">
                <div class="form-group col-md-3" style="display: none" type="hidden">
                    <input class="form-control" value="" type="hidden" placeholder=""
                           name="product_id">
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Tên sản phẩm</label>
                    <input class="form-control" value="" type="text" name="nameProduct">
                </div>

                <div class="form-group  col-md-3">
                    <label class="control-label">Số lượng</label>
                    <input class="form-control" value="" type="number"
                           name="availableProduct">
                </div>
                <%List<Category> categories = CategoryDAO.getListCategorys();%>

                <div class="form-group col-md-3">
                    <label class="control-label">Danh mục</label>
                    <select class="form-control" name="category">
                        <option>--- Chọn danh mục ---</option>
                        <%
                            for (Category c : categories) {

                        %>
                        <option value="<%=c.getId()%>"><%=c.getName()%>
                        </option>
                        <%}%>
                    </select>


                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giá bán</label>
                    <input class="form-control" value="" type="text" name="priceProduct">
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giá giảm</label>
                    <input class="form-control" value="" type="number"
                           name="discountPriceProduct">
                </div>
                <div class="form-group col-md-12">
                    <label class="control-label">Ảnh sản phẩm</label>
                    <input class="form-control" value="" type="text" name="imgProduct">
                    <!--                    <div id="thumbbox">-->
                    <!--                        <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none">-->
                    <!--                                         <a class="removeimg" href="javascript:"></a>-->
                    <!--                    </div>-->
                </div>
                <div class="form-group col-md-12">
                    <label class="control-label">Mô tả sản phẩm</label>
                    <textarea class="form-control" name="mota" id="mota"></textarea>
                </div>
                <button class="btn btn-save" type="submit">Lưu lại</button>
            </form>

            <a class="btn btn-cancel" href="pageAdmin_Product.jsp">Hủy bỏ</a>
        </div>
    </div>
</section>
</body>
</html>
