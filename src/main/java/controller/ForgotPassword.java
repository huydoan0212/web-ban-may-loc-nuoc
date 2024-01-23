package controller;

import dao.UserDAO;
import service.EmailSender;
import service.OTPGenerator;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import  java.lang.ClassCastException;

@WebServlet(name = "ForgotPassword", value = "/ForgotPassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try {
          String username = request.getParameter("username");
          String email = UserDAO.getEmail(username);
          String otp = OTPGenerator.generateOTP();
//          EmailSender.sendEmail(email, "Lay lai mat khau", "Ma OTP: " + otp);

          request.getSession().setAttribute("otp", otp);
          request.getSession().setAttribute("username", username);
          response.sendRedirect("validateOTP.jsp");
        } catch (Exception e) {
          request.getSession().setAttribute("message", "Tai khoan khong ton tai");
          response.sendRedirect("forgotPassword.jsp");
        }
      }


    }
