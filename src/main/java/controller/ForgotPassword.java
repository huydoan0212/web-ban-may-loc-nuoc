package controller;

import dao.UserDAO;
import model.User;
import service.EmailSender;
import service.OTPGenerator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ForgotPassword", value = "/ForgotPassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String email = UserDAO.getEmail(username);
            String otp = OTPGenerator.generateOTP();
            EmailSender.sendEmail(email, "Lấy lại mật khẩu", "Mã OTP: " + otp);

            request.getSession().setAttribute("otp", otp);
            request.getSession().setAttribute("username", username);
            response.sendRedirect("validateOTP.jsp");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Tài khoản không tồn tại!");
            response.sendRedirect("forgotPassword.jsp");
        }
    }
}
