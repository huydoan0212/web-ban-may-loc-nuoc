package controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddBlogAdmin", value = "/AddBlogAdmin")
public class AddBlogAdmin extends HttpServlet {
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    doPost(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");
    resp.setContentType("text/html; charset=UTF-8");
    resp.setCharacterEncoding("UTF-8");

    String title = req.getParameter("title");
    String content = req.getParameter("content");
    String author = req.getParameter("author");
    String img = req.getParameter("img");

    if (title == null || title.isEmpty()) {
      req.setAttribute("error2", "Bạn cần nhập tiêu đề.");
      req.getRequestDispatcher("pageAdmin_addBlog1.jsp").forward(req, resp);
      return;
    }

    if (content == null || content.isEmpty()) {
      req.setAttribute("error2", "Bạn cần nhập nội dung.");
      req.getRequestDispatcher("pageAdmin_addBlog1.jsp").forward(req, resp);
      return;
    }

    if (author == null || author.isEmpty()) {
      req.setAttribute("error2", "Bạn cần nhập tác giả.");
      req.getRequestDispatcher("pageAdmin_addBlog1.jsp").forward(req, resp);
      return;
    }

    if (img == null || img.isEmpty()) {
      req.setAttribute("error2", "Bạn cần nhập đường dẫn ảnh.");
      req.getRequestDispatcher("pageAdmin_addBlog1.jsp").forward(req, resp);
      return;
    }

    try {

      resp.sendRedirect("pageAdmin_Blog.jsp");
    } catch (Exception e) {
      e.printStackTrace();
      req.setAttribute("error2", "Lỗi trong quá trình lưu bài viết.");
      req.getRequestDispatcher("pageAdmin_addBlog1.jsp").forward(req, resp);
    }
  }

}





