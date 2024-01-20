package controller;


import dao.UserDAO;
import model.User;
import service.MailService;

import java.io.IOException;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class Login extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");

    String username = request.getParameter("username");
    String password = request.getParameter("password");

      String hashedPassword = hashPassword(password);

    boolean loginSuccess = UserDAO.loginUser(username, hashedPassword);
    if (loginSuccess) {
      HttpSession session = request.getSession();
      User user = UserDAO.getUserInfo(username);
      try {
        MailService.send(username, "Thu xac nhan", "Tai khoan da duoc kich hoat!");
      } catch (MessagingException e) {
        throw new RuntimeException(e);
      }

      if (user != null && user.getRoleId() == 2) {
        //user
        handleUserLoginSuccess(response, session, user, "index.jsp");
      } else if (user != null && user.getRoleId() == 0) {
        //admin
        handleUserLoginSuccess(response, session, user, "pageAdmin_Index.jsp");
      } else {
        //  không có quyền hoặc thông tin không hợp lệ
        response.sendRedirect("login.jsp");
      }
    } else {
      // Đăng nhập thất bại
      handleLoginFailure(response, request, "Tài khoản chưa được kích hoạt");

    }
  }



  private void handleUserLoginSuccess(HttpServletResponse response, HttpSession session, User user, String redirectPage)
    throws IOException {
    session.setAttribute("user", user);
    String name = UserDAO.getUserName(user.getUserName());
    session.setAttribute("name", name);
    response.sendRedirect(redirectPage);
  }

  private void handleLoginFailure(HttpServletResponse response, HttpServletRequest request, String errorMessage) throws IOException {
    HttpSession session = request.getSession();
    session.setAttribute("message2", errorMessage);
    response.sendRedirect("login.jsp");
  }


  private String hashPassword(String password) {
    return password;
  }
}
