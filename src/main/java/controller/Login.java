package controller;

import dao.UserDAO;
import model.User;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean loginSuccess = UserDAO.loginUser(username, password);


        if (loginSuccess) {
            if(UserDAO.getNotActiveAccount(username) == 0){
                // đăng nhập thất bại
                request.getSession().setAttribute("message2", "Tài khoản chưa được kích hoạt");
                response.sendRedirect("login.jsp"); // chuyển hướng sang trang login.jsp
            } else {

                // đăng nhập thành công
                HttpSession session = request.getSession();
                User user = UserDAO.getUserInfo(username);
                session.setAttribute("user", user);
                String name = UserDAO.getUserName(username);
                session.setAttribute("name", name);
                if(user.getRole() == 2) {
                    response.sendRedirect("Home");
                } if (user.getRole() == 1 || user.getRole() == 0 ){
                    response.sendRedirect("pageAdmin_Index.html");
                }
            }
        } else {
            // đăng nhập thất bại
            request.getSession().setAttribute("message2", "Đăng nhập thất bại. Vui lòng kiểm tra lại thông tin.");
            response.sendRedirect("login.jsp"); // Chuyển hướng sang trang login.jsp
        }

    }
}
