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

@WebServlet(name = "PageAdminControllerWeek", value = "/pageAdminControllerWeek")
public class PageAdminControllerWeek extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int countOrder = PageAdminService.getInstance().countOrderCancelWeek();
        int countProductOutStock = PageAdminService.getInstance().countProductOutStock();
        int totalMoney = PageAdminService.getInstance().totalMoneyWeek();
        int countOrderCancel = PageAdminService.getInstance().countOrderCancelWeek();
        List<Order> listOderRecent = PageAdminService.getInstance().getOrderRecent();
        List<Product> listProductBestSeller = PageAdminService.getInstance().getProductBestSeller();
        request.getSession().setAttribute("countOrder", countOrder);
        request.getSession().setAttribute("countProductOutStock", countProductOutStock);
        request.getSession().setAttribute("totalMoney", totalMoney);
        request.getSession().setAttribute("countOrderCancel", countOrderCancel);
        request.setAttribute("listOderRecent", listOderRecent );
        request.setAttribute("listProductBestSeller", listProductBestSeller);
        request.getRequestDispatcher("pageAdmin_Index.jsp").forward(request, response);
    }

}
