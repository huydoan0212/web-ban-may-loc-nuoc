package controller;

import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PageAdminAddUser", value = "/pageAdminAddUser")
public class PageAdminAddUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String fullName = req.getParameter("name2");
        String email = req.getParameter("email2");
        String userName = req.getParameter("username2").toLowerCase();
        String phone = req.getParameter("phone2");
        String password = req.getParameter("password2");
        String role = req.getParameter("role2");
        if (fullName == null || fullName.equals("") || email == null || email.equals("") || userName == null || userName.equals("") ||
                phone == null || phone.equals("") || password == null || password.equals("")|| role == null || role.equals("")) {
            req.setAttribute("error", "Bạn cần nhập các đủ thông tin ");
            req.getRequestDispatcher("pageAdmin_addUser.jsp").forward(req, resp);
        } else if (UserService.isValidEmail(email) == false) {
            req.setAttribute("error", "Email không hợp lệ");
            req.getRequestDispatcher("pageAdmin_addUser.jsp").forward(req, resp);
        } else if (UserService.isEmailExists(email) == true && UserService.isUserExists(userName) == true) {
            req.setAttribute("error", "Email và Tên đăng nhập đã được sử dụng");
            req.getRequestDispatcher("pageAdmin_addUser.jsp").forward(req, resp);
        } else if (UserService.isEmailExists(email) == true) {
            req.setAttribute("error", "Email đã được sử dụng");
            req.getRequestDispatcher("pageAdmin_addUser.jsp").forward(req, resp);
        } else if (UserService.isUserExists(userName) == true) {
            req.setAttribute("error", "Tên đăng nhập đã được sử dụng");
            req.getRequestDispatcher("pageAdmin_addUser.jsp").forward(req, resp);
        }else
            req.getRequestDispatcher("/pageAdminUserController").forward(req, resp);
    }
}
