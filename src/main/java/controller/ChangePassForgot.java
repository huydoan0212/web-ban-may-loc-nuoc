package controller;

import dao.UserDAO;
import service.MD5Hash;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePassForgot", value = "/ChangePassForgot")
public class ChangePassForgot extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newpassword = request.getParameter("newPassword");
        String re_newPassword = request.getParameter("re_newPassword");
        String username = request.getParameter("username");
        if (newpassword.equals(re_newPassword)){
            UserDAO.changePassword(MD5Hash.hashPassword(newpassword),username);

            request.getSession().setAttribute("message", "Đổi mật khẩu thành công!");
            response.sendRedirect("binh_login.jsp");
        } else {
            request.getSession().setAttribute("message", "Mật khẩu nhập lại không trùng khớp");
            response.sendRedirect("newPassword.jsp");
        }
    }
}
