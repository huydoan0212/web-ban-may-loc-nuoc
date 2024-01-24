package dao;

import db.JDBIConnector;
import org.jdbi.v3.core.statement.Update;
import model.Post;
import java.util.List;


public  class BlogDAO {
  public static List<Post> getAllPosts() {
    String query = "SELECT * FROM posts";
    return JDBIConnector.me().withHandle(handle -> handle.createQuery(query)
      .mapToBean(Post.class)
      .list());
  }

  public static Post getPostById(int postId) {
    String query = "SELECT * FROM posts WHERE id = :postId";
    return JDBIConnector.me().withHandle(handle -> handle.createQuery(query)
      .bind("postId", postId)
      .mapToBean(Post.class)
      .findOne()
      .orElse(null));
  }

  public static void addPost(Post post) {
    String query = "INSERT INTO posts (id, title, content, author) VALUES (:id, :title, :content, :author)";
    JDBIConnector.me().useHandle(handle -> {
      Update update = handle.createUpdate(query)
        .bind("id", post.getId())
        .bind("title", post.getTitle())
        .bind("content", post.getContent())
        .bind("author", post.getAuthor());
      update.execute();
    });
  }

  public static void main(String[] args) {
    BlogDAO.getPostById(1);
  }

  public static void deletePost(int postId) {
    JDBIConnector.me().useHandle(handle -> {
      String query = "DELETE FROM posts WHERE id = ?";
      handle.execute(query, postId);
    });
  }

  public static void updatePost(Post post) {
    JDBIConnector.me().useHandle(handle -> {
      String query = "UPDATE posts SET title = ?, content = ?, author = ? WHERE id = ?";
      handle.execute(query, post.getTitle(), post.getContent(), post.getAuthor(), post.getId());
    });
  }
}

