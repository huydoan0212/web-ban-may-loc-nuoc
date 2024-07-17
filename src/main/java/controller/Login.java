package controller;
import dao.UserDAO;
import model.AbsDao;
import model.User;
import java.io.IOException;
import java.time.LocalDateTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class Login extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("usernameCookie")) {
                request.setAttribute("usernameCookie", cookie.getValue());
            }
            if (cookie.getName().equals("passwordCookie")) {
                request.setAttribute("passwordCookie", cookie.getValue());
            }
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String hashedPassword = PasswordUtils.hashPassword(password);
        boolean loginSuccess = UserDAO.loginUser(username, hashedPassword);
        if (loginSuccess) {
            if ("on".equals(request.getParameter("remember"))) {
                Cookie usernameCookie = new Cookie("usernameCookie", username);
                Cookie passwordCookie = new Cookie("passwordCookie", password);
                usernameCookie.setMaxAge(60*60*24);  // Đặt thời gian sống cho cookie là 1 ngày.
                passwordCookie.setMaxAge(60*60*24);
                response.addCookie(usernameCookie);  // Lưu cookie vào trình duyệt của người dùng.
                response.addCookie(passwordCookie);
            }
            HttpSession session = request.getSession();
            User user = UserDAO.getUserInfo(username);
            if (user != null && user.getRoleId() == 2) {
                //user
                UserDAO userDAO = new UserDAO();
                boolean inserted = userDAO.insert(user, user.getId(), request.getHeader("X-Forwarded-For") != null ? request.getHeader("X-Forwarded-For") : request.getRemoteAddr(), "Login", "LoginController", "Normal", LocalDateTime.now(), LocalDateTime.now(), true, "Viet Nam");
                System.out.println(inserted);
                handleUserLoginSuccess(response, session, user, "index.jsp");
            } else if (user != null && user.getRoleId() == 1) {
                //admin
                request.getSession().setAttribute("user", user);
                handleUserLoginSuccess(response, session, user, "/ProjectLTW_war/pageAdminController");
            }
        } else {
            // Đăng nhập thất bại
            handleLoginFailure(response, request, "Tài khoản chưa được kích hoạt ");

        }
    }


    private void handleUserLoginSuccess(HttpServletResponse response, HttpSession session, User user, String redirectPage)
            throws IOException {
        session.setAttribute("user", user);
        String name = UserDAO.getUserName(user.getUserName());
        session.setAttribute("name", name);
        response.sendRedirect(redirectPage);
        System.out.println("User: " + user);
        System.out.println("Session after setting attribute: " + session.getAttribute("user"));
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
