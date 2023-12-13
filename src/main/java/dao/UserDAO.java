package dao;

import db.JDBIConnector;
import model.User;
import org.jdbi.v3.core.Handle;

import java.time.LocalDateTime;
import java.util.Optional;

public class UserDAO {
    public static boolean isEmailExists(String email){
            int count = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery("SELECT COUNT(*) FROM users WHERE email = ?")
                            .bind(0, email)
                            .mapTo(Integer.class)
                            .one()
            );
            return count > 0;
    }
    public static boolean isUserExists(String userName){
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM users WHERE username = ?")
                        .bind(0, userName)
                        .mapTo(Integer.class)
                        .one()
        );
        return count > 0;
    }
    public static boolean addUser(String fullName, String email, String userName,  String password, String rePassword, String phone, int active){
        boolean result = false;
        String insertQuery = "INSERT INTO users (username, fullname, email, phone_number, sex, address, password, created_at, status, active) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?)";

        try (Handle handle = JDBIConnector.me().open()) {
            handle.createUpdate(insertQuery)
                    .bind(0, userName)
                    .bind(1, fullName)
                    .bind(2, email)
                    .bind(3, phone)
                    .bind(4, "")
                    .bind(5, "")
                    .bind(6, password)
                    .bind(7, LocalDateTime.now().toString())
                    .bind(8, 1)
                    .bind(9, active)
                    .execute();
            result = true;
        }
        return result;
    }
    public static User getUserByUserName(String userName){
        Optional<User> user = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select username, fullname, email, phone_number, sex, address from users where email = ?")
                        .bind(0, userName).mapToBean(User.class).stream().findFirst());
        return user.isEmpty() ? null : user.get();
    }
    public static boolean updateUser(User user){
        boolean result = false;
        String updateQuery = "UPDATE users SET fullname = ?, phone_number = ?, sex = ?, address = ? WHERE username = ?";
        try (Handle handle = JDBIConnector.me().open()) {
            handle.createUpdate(updateQuery)
                    .bind(0, user.getFullName())
                    .bind(1, user.getPhoneNumber())
                    .bind(2, user.getSex())
                    .bind(3, user.getAddress())
                    .execute();
            result = true;
        }
        return result;
    }



}
