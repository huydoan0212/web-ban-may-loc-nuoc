package controller;

import model.Product;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/products")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> all = ProductService.getInstance().getAll();
        req.setAttribute("data", all);
        req.getRequestDispatcher("trangchu.jsp").forward(req, resp);
    }

//    public static void main(String[] args) {
//        List<Product> all = ProductService.getInstance().getAll();
//        for (Product p :
//                all) {
//            System.out.println(p.getTitle());
//
//        }
//    }
}
