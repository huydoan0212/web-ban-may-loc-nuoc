package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "LogOutController", value = "/logOutController")
public class LogOutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        UserDAO userDAO = new UserDAO();
        userDAO.insert(user, user.getId(), req.getHeader("X-Forwarded-For"),"Logout","LogoutController",0,0,"Normal", LocalDateTime.now(),LocalDateTime.now(),true,"Viet Nam");
        session.removeAttribute("user");
        session.removeAttribute("userName");
        resp.sendRedirect("login.jsp");

    }
}
