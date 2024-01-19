package controller;

import dao.ContactDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddContactController", value = "/add-contact")
public class AddContactController extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name").trim();
        String email = req.getParameter("email").trim();
        String phone_number = req.getParameter("phone_number").trim();
        String content = req.getParameter("content").trim();
        if (name == null || name.equals("") || email == null || email.equals("") || phone_number == null || phone_number.equals("") ||
                content == null || content.equals("")) {
            req.setAttribute("error", "Bạn cần nhập các đủ thông tin ");
            req.getRequestDispatcher("contact.jsp").forward(req, resp);

        } else {
            ContactDAO.insertContact(name, email, phone_number, content);
            resp.sendRedirect("contact.jsp");
        }
    }
}
