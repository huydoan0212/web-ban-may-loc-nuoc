package controller;

import model.Order;
import model.Product;
import service.PageAdminService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "ThongKeDonHang", value = "/thongKeDonHang")
public class ThongKeDonHang extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String startDate = request.getParameter("start-date");
        String endDate = request.getParameter("end-date");
        List<Order> listOderRecent = PageAdminService.getInstance().getOrderRecentStartEnd(startDate, endDate);
        List<Product> listProductBestSeller = PageAdminService.getInstance().getProductBestSellerStartEnd(startDate, endDate);
        request.setAttribute("listOderRecent", listOderRecent );
        request.getRequestDispatcher("thongkedonhang.jsp").forward(request, response);
    }
}
