package controller;

import dao.UserDAO;
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
      doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      response.setCharacterEncoding("UTF-8");
      String username = request.getParameter("username");
      if (username == null || username.isEmpty()) {
        request.getRequestDispatcher("validateOTP.jsp").forward(request, response);
        return;
      }
      String email = UserDAO.getEmail(username);
      if (email != null) {
        String otp = OTPGenerator.generateOTP();
//        EmailSender.sendEmail(email, "Lấy lại mật khẩu", "Mã OTP: " + otp);
//
//        request.getSession().setAttribute("otp", otp);
//        request.getSession().setAttribute("username", username);
        request.getRequestDispatcher("validateOTP.jsp").forward(request, response);
      } else {
        request.getRequestDispatcher("validateOTP.jsp").forward(request, response);
      }
    }

}
