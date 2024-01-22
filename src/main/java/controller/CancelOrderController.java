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
        String reason = req.getParameter("reason");
        Order order = (Order) req.getSession().getAttribute("order");
        HttpSession session = req.getSession();
        boolean isCancel = OrderService.getInstance().cancelOrder("Đã hủy, "+reason+", ", order.getId());
        if (isCancel) {
            session.removeAttribute("cart");
            resp.sendRedirect("trangchu");
        }
    }
}
