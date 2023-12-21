package dao;

import db.JDBIConnector;
import model.User;
import org.jdbi.v3.core.Handle;
import service.MD5Hash;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

  public static void addUser(String fullName, String email, String userName, String password, String rePassword, String phone, int active) {
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
  }

  public static void updateUser() {

  }


  public static boolean loginUser(String username, String password) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();

      String hashedPassword = MD5Hash.hashPassword(password);

      PreparedStatement ps = connection.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
      ps.setString(1, username);
      ps.setString(2, hashedPassword);

      ResultSet rs = ps.executeQuery();

      return rs.next();

    } catch (SQLException e) {
      e.printStackTrace();
      return false;

    } finally {
      JDBIConnector.closeConnection(connection);
    }
  }

  public static String getPasswd(int id) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();

      PreparedStatement ps = connection.prepareStatement("SELECT password FROM users WHERE id=?");
      ps.setInt(1, id);

      ResultSet rs = ps.executeQuery();

      if (rs.next()) {
        return rs.getString("password");
      }

    } catch (SQLException e) {
      e.printStackTrace();

    } finally {
      JDBIConnector.closeConnection(connection);
    }

    return null;
  }

  public static String getEmail(String username) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();

      PreparedStatement ps = connection.prepareStatement("SELECT email FROM users WHERE username=?");
      ps.setString(1, username);

      ResultSet rs = ps.executeQuery();

      if (rs.next()) {
        return rs.getString("email");
      }

    } catch (SQLException e) {
      e.printStackTrace();

    } finally {
      JDBIConnector.closeConnection(connection);
    }

    return null;
  }

  public static boolean updateActiveAccount(String username) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();

      String sql = "UPDATE users SET active = 1 WHERE username=?";
      try (PreparedStatement ps = connection.prepareStatement(sql)) {

        ps.setString(1, username);

        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
          return true;
        }
      }
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      JDBIConnector.closeConnection(connection);
    }

    return false;
  }

  public static int getNotActiveAccount(String username) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();

      PreparedStatement ps = connection.prepareStatement("SELECT active FROM users WHERE username=?");
      ps.setString(1, username);

      ResultSet rs = ps.executeQuery();

      if (rs.next()) {
        return rs.getInt("active");
      }

    } catch (SQLException e) {
      e.printStackTrace();

    } finally {
      JDBIConnector.closeConnection(connection);
    }

    return 3;
  }


  public static boolean changePassword(String password, int id) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();
      String sql = "UPDATE users SET password=? WHERE id=?";
      try (PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setString(1, password);
        ps.setInt(2, id);

        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
          return true;
        }
      }
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      JDBIConnector.closeConnection(connection);
    }
    return false;
  }


  public static User getUserInfo(String username) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();

      String sql = "SELECT * from user where username=?";
      try (PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setString(1, username);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
          User user = new User();
          user.setUserId(rs.getInt("id"));
          user.setUserName(rs.getString("username"));
          user.setPassword(rs.getString("password"));
          user.setEmail(rs.getString("email"));
          user.setFullName(rs.getString("name"));
          user.setRoleId(rs.getInt("role"));
          user.setActive(rs.getInt("active"));
          return user;
        }
      }
    } catch (SQLException e) {
      e.printStackTrace();

    } finally {
      JDBIConnector.closeConnection(connection);

    }
    return null;
  }


  public static String getUserName(String username) {
    Connection connection = null;

    try {
      connection = JDBIConnector.getConnection();

      PreparedStatement ps = connection.prepareStatement("SELECT name FROM user WHERE username=?");
      ps.setString(1, username);

      ResultSet rs = ps.executeQuery();

      if (rs.next()) {
        return rs.getString("name");
      }

    } catch (SQLException e) {
      e.printStackTrace();

    } finally {
      JDBIConnector.closeConnection(connection);
    }

    return null;
  }

}







