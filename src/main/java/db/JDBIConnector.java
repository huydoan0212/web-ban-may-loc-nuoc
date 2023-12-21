package db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class JDBIConnector {
  private static Jdbi jdbi;

  private static void connect() {
    MysqlDataSource dataSource = new MysqlDataSource();
    dataSource.setURL("jdbc:mysql://" + DBProperties.host + ":" + DBProperties.port + "/" + DBProperties.dbName);
    dataSource.setUser(DBProperties.username);
    dataSource.setPassword(DBProperties.password);
    try {
      dataSource.setAutoReconnect(true);
      dataSource.setUseCompression(true);
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    jdbi = jdbi.create(dataSource);
  }

  public static Jdbi me() {
    if (jdbi == null) connect();
    return jdbi;
  }
  public static class DatabaseUtil {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/web_ban_hang";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
      Connection connection = null;

      try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        connection = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
      } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        throw new SQLException("Không thể kết nối đến cơ sở dữ liệu.");
      }

      return connection;
    }

    public static void main(String[] args) {
      try {
        Connection connection = getConnection();
        if (connection != null) {
          System.out.println("Kết nối thành công!");
          // Đóng kết nối sau khi sử dụng
          connection.close();
        } else {
          System.out.println("Kết nối thất bại.");
        }
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }
}
