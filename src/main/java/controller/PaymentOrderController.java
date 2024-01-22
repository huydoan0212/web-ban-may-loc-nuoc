package controller;

import model.Order;
import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PaymentOrderController", value = "/payment-order")
public class PaymentOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Order order = (Order) req.getSession().getAttribute("order");
        boolean isPayment = OrderService.getInstance().paymentOrder("Đã thanh toán", order.getId());
        if(isPayment){
            req.getSession().removeAttribute("cart");
            resp.sendRedirect("trangchu");
        }
    }
}
