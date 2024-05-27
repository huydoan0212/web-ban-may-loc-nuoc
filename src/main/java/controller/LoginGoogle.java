package controller;

import dao.UserDAO;
import model.GoogleAccount;
import model.User;
import service.Google;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "LoginGoogle", value = "/loginGoogle")
public class LoginGoogle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String code = request.getParameter("code");
        String error = request.getParameter("error");
        Google gg = new Google();
        String accessToken = gg.getToken(code);
        GoogleAccount acc = gg.getUserInfo(accessToken);
        HttpSession session = request.getSession();
        if(!(UserService.getInstance().loginUser(acc.getId(), PasswordUtils.hashPassword(acc.getId())))){
            UserService.addUser(acc.getId(),acc.getName(), acc.getEmail(), "", PasswordUtils.hashPassword(acc.getId()));
            User user = UserDAO.getUserInfo(acc.getId());
            handleUserLoginSuccess(response, session, user, "index.jsp");
            UserDAO userDAO = new UserDAO();
//            boolean inserted = userDAO.insert(user, user.getId(), request.getHeader("X-Forwarded-For") != null ? request.getHeader("X-Forwarded-For") : request.getRemoteAddr(), "Login", "LoginController", "Normal", LocalDateTime.now(), LocalDateTime.now(), true, "Viet Nam");
            UserDAO.updateActiveAccount(acc.getId());
        }

    }
    @Override
    public String getServletInfo() {
        return "Short description";
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

}
