package controller;

import model.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "AccountDetailsController", value = "/accountDetailsController")
public class AccountDetailsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req, resp);
    }

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String userName = (String) req.getSession().getAttribute("userName");
//        String fullName = req.getParameter("fullName");
//        String phoneNumber = req.getParameter("phoneNumber").trim().toLowerCase();
//        String address = req.getParameter("address");
//        int sex = Integer.parseInt(req.getParameter("sex"));
//        if (fullName.equals("") || phoneNumber.equals("") || address.equals("")){
//                req.setAttribute("error","người dùng cần nhập đầy đủ thông tin");
//                req.getRequestDispatcher("accountdetails.jsp").forward(req, resp);
//        }else{
//                UserService.updateUser(new User(fullName,phoneNumber,sex,address));
//                req.setAttribute("success", "Cập nhật thông tin thành công");
//                resp.sendRedirect("accountdetails.jsp");
//        }
//
//    }
}
