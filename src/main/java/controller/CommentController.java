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
        int id = 0;
        Object temp = req.getParameter("id");
        if(temp != null){
            if(temp instanceof Integer){
                id = (int) temp;
            }else if(temp instanceof String){
                id = Integer.valueOf((String) temp);

            }
        }
        if (id != 0){
            String content = req.getParameter("content").trim();
            String rating = req.getParameter("rating");
            if (user == null){
                resp.sendRedirect("login.jsp");
            }
            else if (content == null || content.equals("") || rating == null || rating.equals("") ){
                req.setAttribute("error", "Bạn cần nhập các đủ thông tin ");
                req.getRequestDispatcher("trangsanpham").forward(req,resp);
            }
            else{
                CommentService.insertComment(user.getId(), id, content, rating);
                req.getRequestDispatcher("trangsanpham").forward(req,resp);
            }

        }




    }
}
