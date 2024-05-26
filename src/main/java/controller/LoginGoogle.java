package controller;

import model.GoogleAccount;
import service.Google;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

        if(error != null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        Google gg = new Google();
        String accessToken = gg.getToken(code);
        GoogleAccount acc = gg.getUserInfo(accessToken);

        System.out.println(acc);
        if(!(UserService.getInstance().loginUser(acc.getId(), PasswordUtils.hashPassword(acc.getId())))){
            UserService.addUser(acc.getId(),acc.getName(), acc.getEmail(), "", PasswordUtils.hashPassword(acc.getId()));

        }



    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
