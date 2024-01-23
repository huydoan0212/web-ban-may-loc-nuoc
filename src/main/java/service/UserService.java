package service;

import dao.UserDAO;
import model.User;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UserService {
    private static UserService instance;

    public static UserService getInstance() {
        if (instance == null)
            instance = new UserService();
        return instance;
    }

    public static boolean isValidEmail(String email) {
        String emailPattern = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        Pattern pattern = Pattern.compile(emailPattern);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }

    public static boolean isMatchPassword(String password, String rePassword) {
        if (password.equals(rePassword)) {
            return true;
        } else
            return false;
    }

    public static boolean isEmailExists(String email) {
        return UserDAO.isEmailExists(email);
    }

    public static boolean isUserExists(String userName) {
        return UserDAO.isUserExists(userName);
    }


    public static boolean addUser(String username, String fullname, String email, String phone_number, String password) {
        return UserDAO.addUser(username, fullname, email, phone_number, password);
    }

    public boolean checkPassByUserId(int id, String password) {
        return UserDAO.checkPassByUserId(id, password);
    }

    public boolean changePassworById(int id, String password){
        return UserDAO.changePassworById(id,password);
    }
    public List<User> getAll(){
        return UserDAO.getAll();
    }
}
