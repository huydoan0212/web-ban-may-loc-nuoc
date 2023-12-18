package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ValidateOTPForgotPassword", value = "/ValidateOTPForgotPassword")
public class ValidateOTPForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String otp = request.getParameter("otp");
        String enterOTP = request.getParameter("enterOTP");
        String username = request.getParameter("username");

        request.getSession().setAttribute("username", username);
        if(otp.equals(enterOTP)) {

            response.sendRedirect("newPassword.jsp");
        }else{
            request.getSession().setAttribute("message", "Sai mã OTP");
            response.sendRedirect("validateOTP.jsp");
        }
    }
}
