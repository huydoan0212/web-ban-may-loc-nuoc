package controller;

import model.Gallery;
import model.Product;
import service.GalleryService;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/trangsanpham")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = ProductService.getInstance().getById(id);
        List<Gallery> galleries = GalleryService.getInstance().getGalleryByProductId(id);
        req.setAttribute("product", product);
        req.setAttribute("galleries", galleries);
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }


}
