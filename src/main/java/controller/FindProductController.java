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

@WebServlet(name = "FindProductController", value = "/findProductController")
public class FindProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        List<Product> findproduct = ProductService.getInstance().getProductByName(title);
        if (findproduct == null){
            request.getRequestDispatcher("findproduct.jsp").forward(request, response);
            request.setAttribute("error", "Rất tiếc không tìm thấy sản phẩm của bạn yêu cầu");
        }else
        request.setAttribute("findproduct", findproduct);
        request.getRequestDispatcher("findproduct.jsp").forward(request, response);
    }

//    public static void main(String[] args) {
//        System.out.println( ProductService.getInstance().getProductByName("Máy lọc nước RO nóng nguội lạnh Karofi KAD-X39 10 lõi"));
//    }
}
