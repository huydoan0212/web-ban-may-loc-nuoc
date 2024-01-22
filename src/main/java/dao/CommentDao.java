package dao;

import db.JDBIConnector;
import model.Comment;
import model.Product;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class CommentDao {
    public static List<Comment> getCommentById(int id) {
        List<Comment> comments = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM comments WHERE id = :id")
                        .bind("id", id)
                        .mapToBean(Comment.class)
                        .list());
        return comments;
    }
    public static void insertComment( int userId, int productId, String contents, String star) {
        JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO comments( user_id, product_id, contents, star, display, create_date) " +
                                "VALUES ( :user_id, :product_id, :contents, :star, :display, :create_date)")
                        .bind("user_id", userId)
                        .bind("product_id", productId)
                        .bind("contents", contents)
                        .bind("star", star)
                        .bind("display", 1)
                        .bind("create_date", LocalDateTime.now().toString())
                        .execute());
    }
}
