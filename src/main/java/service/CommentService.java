package service;

import dao.CommentDao;
import model.Comment;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommentService {
    private static CommentService  instance;
    public static CommentService getInstance() {
        if (instance == null)
            instance = new CommentService();
        return instance;
    }
    public static List<Comment> getCommentById(int id) {
        return CommentDao.getCommentById(id);
    }
    public static void insertComment( int userId, int productId, String contents, String star){
        CommentDao.insertComment(userId, productId, contents, star);
    }

    }

