package dao;

import db.JDBIConnector;
import model.Comment;
import model.Product;

import java.time.LocalDateTime;
import java.util.Optional;

public class CommentDao {
    public static Comment getById(int id) {
        Optional<Comment> comment = JDBIConnector.me().withHandle((handle -> handle
                .createQuery("select * from comments where id = :id")
                .bind("id", id).mapToBean(Comment.class).stream().findFirst()));
        return comment.isEmpty() ? null : comment.get();
    }
    public static void insertComment( int userId, int productId, String contents, String star) {
        JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO contacts( user_id, product_id, contents, star, display, create_date) " +
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
