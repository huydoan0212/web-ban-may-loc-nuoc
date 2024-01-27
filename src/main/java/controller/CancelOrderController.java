package controller;

import cart.Cart;
import dao.ContactDAO;
import model.Order;
import service.OrderService;
import service.UserService;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.http.HttpClient;

@WebServlet(name = "CancelOrderController", value = "/cancel-order")
public class CancelOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Order order = (Order) req.getSession().getAttribute("order");
        Object ob = req.getParameter("order_id");
        int order_id = 0;
        if (ob != null) {
            if (ob instanceof Integer) {
                order_id = (Integer) ob;
            } else if (ob instanceof String) {
                order_id = Integer.valueOf((String) ob);
            }
        }

        if (order_id != 0) {
            boolean isCancel = OrderService.getInstance().cancelOrder("Đã hủy", order_id);
            if (isCancel) {
                resp.sendRedirect("ordered-page");
                return;
            }
        } else {
            HttpSession session = req.getSession();
            boolean isCancel = OrderService.getInstance().cancelOrder("Đã hủy", order.getId());
            if (isCancel) {
                session.removeAttribute("cart");
                resp.sendRedirect("trangchu");
            }
            return;

        }
    }
}
