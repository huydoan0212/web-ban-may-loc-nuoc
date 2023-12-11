package dao;

import db.JDBIConnector;

public class UserDAO {
    public static boolean checkEmail(String email){
        return false;
    }
    public static boolean checkUserName(String userName){
        return false;
    }
    public static boolean addUser(String fullName, String email, String userName,  String password, String rePassword, String phone, String active){
        return true;
    }


}
