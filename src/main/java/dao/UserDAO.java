package dao;

import db.JDBIConnector;
import org.jdbi.v3.core.Handle;

import java.time.LocalDateTime;

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
    public static void addUser(String fullName, String email, String userName,  String password, String rePassword, String phone, int active){
        String insertQuery = "INSERT INTO users (username, fullname, email, phone_number, sex, address, password, created_at, updated_at, status, active) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?)";

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
                    .bind(8, LocalDateTime.now().toString())
                    .bind(9, 1)
                    .bind(10, active)
                    .execute();
        }
    }


}
