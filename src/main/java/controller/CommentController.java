package controller;

import model.Product;
import model.User;
import service.CommentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "CommentController", value = "/commentController")
public class CommentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        Product product = (Product) session.getAttribute("product");
        String idProduct = (String) session.getAttribute("idProduct");
        String content = req.getParameter("content").trim();
        String rating = req.getParameter("rating");
        if (user == null){
            resp.sendRedirect("login.jsp");
        }
         else if (content == null || content.equals("") || rating == null || rating.equals("") ){
            req.setAttribute("error", "Bạn cần nhập các đủ thông tin ");
        }else if (CommentService.isValidText(content) == false){
            req.setAttribute("error", "Ki tu khong hop le ");
        }
        else{
            CommentService.insertComment(user.getId(), Integer.parseInt(idProduct), content, rating);
            resp.sendRedirect("/ProjectLTW_war/product");
        }



    }
}
