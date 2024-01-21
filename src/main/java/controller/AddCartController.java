package controller;

import cart.Cart;
import model.Product;
import model.Voucher;
import service.ProductService;
import service.VoucherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AddCartController", value = "/add-card")
public class AddCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) cart = new Cart();
        int id = Integer.parseInt(req.getParameter("id"));
        int page = Integer.parseInt(req.getParameter("page"));
        cart.add(id);
        ArrayList<Voucher> vouchers = VoucherService.getInstance().getVoucher();
        session.setAttribute("vouchers", vouchers );
        session.setAttribute("cart", cart);
        switch (page) {
            case 1:
                resp.sendRedirect("trangchu");
                break;
            case 2:
                resp.sendRedirect("locnuocro");
                break;
            case 3:
                resp.sendRedirect("locnuocnonglanh");
                break;
            case 4:
                resp.sendRedirect("locnuocamtudeban");
                break;
            case 5:
                resp.sendRedirect("locnuocnanoufmf");
                break;
            case 6:
                resp.sendRedirect("locnuockhongdien");
                break;
            case 7:
                resp.sendRedirect("cart");
                break;
        }

    }


}
