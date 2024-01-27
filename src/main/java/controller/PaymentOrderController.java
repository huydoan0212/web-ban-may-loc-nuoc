package controller;

import dao.OrderDAO;
import model.Order;
import service.OrderService;
import service.PaymentService;

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
        Object object = req.getSession().getAttribute("order_id");
        int order_id = 0;
        if (object != null) {
            if (object instanceof Integer) {
                order_id = (Integer) object;
            } else if (object instanceof String) {
                order_id = Integer.valueOf((String) object);
            }
        }
        Order order = OrderDAO.getOrderById(order_id);
        System.out.println(order);
        System.out.println(order_id);
        String payment_type = req.getParameter("paymentOption");
        boolean isPayment = OrderService.getInstance().paymentOrder("Đã chọn phương thức thanh toán", order_id);
        boolean isInsertPayment = PaymentService.getInstance().insertPayment(order.getId(), payment_type, order.getTotal_money());
        if (isPayment && isInsertPayment) {
            req.getSession().removeAttribute("order_id");
            resp.sendRedirect("trangchu");
        }
    }
}
