package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.BlogDAO;
import model.Post;

@WebServlet(name = "PageAdminUpdatePage", value = "/PageAdminUpdatePage")
public class PageAdminUpdatePage extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String idParam = request.getParameter("id");
    if (idParam != null) {
      int id = Integer.parseInt(idParam);

      BlogDAO blogDAO = new BlogDAO();
      Post post = blogDAO.getPostById(id);

      if (post != null) {
        request.setAttribute("post", post);
        request.getRequestDispatcher("pageAdmin_updateBlog1.jsp").forward(request, response);
      } else {
        response.getWriter().write("Không tìm thấy bài viết với ID: " + id);
      }
    }
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String idParam = request.getParameter("id");
    if (idParam != null) {
      int id = Integer.parseInt(idParam);

      BlogDAO blogDAO = new BlogDAO();
      Post post = blogDAO.getPostById(id);

      if (post != null) {
        post.setTitle(request.getParameter("title"));
        post.setContent(request.getParameter("content"));
        post.setAuthor(request.getParameter("author"));
        post.setImage(request.getParameter("img"));

        blogDAO.updatePost(post);

        response.getWriter().write("Cập nhật bài viết thành công!");
      } else {
        response.getWriter().write("Không tìm thấy bài viết với ID: " + id);
      }
    }
  }
}
