package service;

import dao.CommentDao;
import model.Comment;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommentService {
    public static Comment getById(int id) {
        return CommentDao.getById(id);
    }
    public static boolean isValidText(String textInput){
        String text = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        Pattern pattern = Pattern.compile(text);
        Matcher matcher = pattern.matcher(textInput);
        return matcher.matches();
    }
    public static void insertComment( int userId, int productId, String contents, String star){
        CommentDao.insertComment(userId, productId, contents, star);
    }

    }

