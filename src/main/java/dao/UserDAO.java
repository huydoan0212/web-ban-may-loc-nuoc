package dao;

import db.JDBIConnector;
import model.User;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.JdbiException;
import java.time.LocalDateTime;


public class UserDAO {
  public static boolean isEmailExists(String email) {
    int count = JDBIConnector.me().withHandle(handle ->
      handle.createQuery("SELECT COUNT(*) FROM users WHERE email = ?")
        .bind(0, email)
        .mapTo(Integer.class)
        .one()
    );
    return count > 0;
  }

  public static boolean isUserExists(String userName) {
    int count = JDBIConnector.me().withHandle(handle ->
      handle.createQuery("SELECT COUNT(*) FROM users WHERE username = ?")
        .bind(0, userName)
        .mapTo(Integer.class)
        .one()
    );
    return count > 0;
  }

  public static boolean addUser(String fullName, String email, String userName, String password, String rePassword, String phone, int active) {
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

    }

      return false;
  }

    public static boolean loginUser (String username, String password){
      try {

        int count = JDBIConnector.me().withHandle(handle ->
          handle.createQuery("SELECT COUNT(*) FROM users WHERE username = ? AND password = ?")
            .bind(0, username)
            .bind(1, password)
            .mapTo(Integer.class)
            .one()
        );

        return count > 0;
      } catch (JdbiException e) {
        e.printStackTrace();
        return false;
      }
    }


    public static void updateUser () {

    }


    public static boolean isPasswordExists (String password){
      try {
        int count = JDBIConnector.me().withHandle(handle ->
          handle.createQuery("SELECT COUNT(*) FROM users WHERE password = ?")
            .bind(0, password)
            .mapTo(Integer.class)
            .one()
        );

        return count > 0;
      } catch (JdbiException e) {
        e.printStackTrace();
        return false;
      }
    }

    public static String getEmail (String username){
      try {
        String email = JDBIConnector.me().withHandle(handle ->
          handle.createQuery("SELECT email FROM users WHERE username = ?")
            .bind(0, username)
            .mapTo(String.class)
            .one()
        );

        return email;
      } catch (JdbiException e) {
        e.printStackTrace();
        return null;
      }
    }

    public static boolean updateActiveAccount (String username){
      try {
        int updatedRows = JDBIConnector.me().withHandle(handle ->
          handle.createUpdate("UPDATE users SET active = true WHERE username = ?")
            .bind(0, username)
            .execute()
        );

        return updatedRows > 0;
      } catch (JdbiException e) {
        e.printStackTrace();
        return false;
      }
    }

    public static int getNotActiveAccount (String username){
      try {
        int count = JDBIConnector.me().withHandle(handle ->
          handle.createQuery("SELECT COUNT(*) FROM users WHERE username = ? AND active = false")
            .bind(0, username)
            .mapTo(Integer.class)
            .one()
        );

        return count;
      } catch (JdbiException e) {
        e.printStackTrace();
        return -1; // Lỗi sẽ -1
      }
    }

    public static boolean changePassword (String username, String newPassword){
      try {
        int updatedRows = JDBIConnector.me().withHandle(handle ->
          handle.createUpdate("UPDATE users SET password = ? WHERE username = ?")
            .bind(0, newPassword)
            .bind(1, username)
            .execute()
        );

        return updatedRows > 0;
      } catch (JdbiException e) {
        e.printStackTrace();
        return false;
      }
    }

    private static final String SELECT_USER_SQL = "SELECT * FROM users WHERE username = :username";


    public static User getUserInfo (String username){
      try {
        JDBIConnector.me().withHandle(handle ->
          handle.createQuery(SELECT_USER_SQL)
            .bind("username", username)
            .mapToBean(User.class)
            .findFirst()
            .orElse(null)
        );
      } catch (JdbiException e) {
        e.printStackTrace();
      }
      return null;
    }

    private static final String SELECT_USERNAME_SQL = "SELECT username FROM users WHERE username = :username";

    // Các phương thức khác của lớp DAO

    public static String getUserName (String username){
      try {
        JDBIConnector.me().withHandle(handle ->
          handle.createQuery(SELECT_USERNAME_SQL)
            .bind("username", username)
            .mapTo(String.class)
            .findFirst()
            .orElse(null)
        );
      } catch (JdbiException e) {
        e.printStackTrace();
      }
      return null;
    }

}







