package controller;

import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PageAdminAddProductController", value = "/add-product")
public class PageAdminAddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nameProduct = req.getParameter("nameProduct");
        Object objectAvailable = req.getParameter("availableProduct");
        int availableProduct = 0;
        if (objectAvailable != null) {
            if (objectAvailable instanceof Integer) {
                availableProduct = (Integer) objectAvailable;
            } else if (objectAvailable instanceof String) {
                availableProduct = Integer.valueOf((String) objectAvailable);
            }
        }
        Object objectPrice = req.getParameter("priceProduct");
        int priceProduct = 0;
        if (objectPrice != null) {
            if (objectPrice instanceof Integer) {
                priceProduct = (Integer) objectPrice;
            } else if (objectPrice instanceof String) {
                priceProduct = Integer.valueOf((String) objectPrice);
            }
        }
        Object objectDiscountPrice = req.getParameter("discountPriceProduct");
        int discountPriceProduct = 0;
        if (objectDiscountPrice != null) {
            if (objectDiscountPrice instanceof Integer) {
                discountPriceProduct = (Integer) objectDiscountPrice;
            } else if (objectDiscountPrice instanceof String) {
                discountPriceProduct = Integer.valueOf((String) objectDiscountPrice);
            }
        }
        String imgProduct = req.getParameter("imgProduct");
        String desProduct = req.getParameter("mota");
        Object objectCategory = req.getParameter("category");
        int selectedCategory = 0;
        if (objectCategory != null) {
            if (objectCategory instanceof Integer) {
                selectedCategory = (Integer) objectCategory;
            } else if (objectCategory instanceof String) {
                selectedCategory = Integer.valueOf((String) objectCategory);
            }
        }

        boolean isAddProduct = ProductService.getInstance().addProduct( selectedCategory, nameProduct, availableProduct, priceProduct, discountPriceProduct,  imgProduct, desProduct);
        if (isAddProduct) {
            req.getRequestDispatcher("pageAdmin_Product.jsp").forward(req,resp);
        }
    }
}
