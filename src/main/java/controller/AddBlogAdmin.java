package controller;

import dao.BlogDAO;
import model.Post;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddBlogAdmin", value = "/AddBlogAdmin")
public class AddBlogAdmin extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int newID = BlogDAO.getNewID();
    request.setAttribute("id", newID);
    request.getRequestDispatcher("pageAdmin_addBlog1.jsp").forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String author = request.getParameter("author");
    String image = request.getParameter("image");

    BlogDAO.addPost( title, content, author, image);

    response.sendRedirect("pageAdmin_addBlog1.jsp");
  }
}
