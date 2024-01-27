package controller;

import cart.Cart;
import model.Order;
import model.User;
import service.OrderDetailService;
import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Set;

@WebServlet(name = "OrderController", value = "/order-controller")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Object object = req.getParameter("voucher_id");
        int voucher_id = 0;
        if (object != null) {
            if (object instanceof Integer) {
                voucher_id = (Integer) object;
            } else if (object instanceof String) {
                voucher_id = Integer.valueOf((String) object);
            }
        }
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        Set set = cart.getData().keySet();
        Object tempObj = req.getParameter("total_decrease");
        int total_decrease = 0;
        if (tempObj != null) {
            if (tempObj instanceof Integer) {
                total_decrease = (Integer) tempObj;
            } else if (tempObj instanceof String) {
                total_decrease = Integer.valueOf((String) tempObj);
            }
        }
        if (cart.getTotal() > 0 && user != null) {
            boolean checkCreatedOrder = OrderService.getInstance().insertOrder(user.getId(), user.getAddress(), user.getPhoneNumber(), "Chưa chọn phương thức thanh toán", total_decrease, voucher_id);

            if (checkCreatedOrder) {
                Order order = OrderService.getInstance().getOrder(user.getId(), user.getAddress(), user.getPhoneNumber(), "Chưa chọn phương thức thanh toán", total_decrease);
                if (order != null) session.setAttribute("order", order);
                for (Object key : set) {
                    int order_id = order.getId();
                    int product_id = cart.getData().get(key).getProduct().getId();
                    int price = cart.getData().get(key).getProduct().getDiscount_price();
                    int quantity = cart.getData().get(key).getQuantity();
                    int total_money = price * quantity;
                    OrderDetailService.getInstance().insertOrder(order_id, product_id, price, quantity, total_money);
                }
                req.getSession().removeAttribute("cart");
                req.getRequestDispatcher("paymentpage.jsp").forward(req, resp);
            }
        }
    }
}
