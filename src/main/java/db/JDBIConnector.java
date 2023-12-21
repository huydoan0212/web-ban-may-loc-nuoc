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

  public static Connection getConnection() throws SQLException {
    Connection connection = null;

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");

      String jdbcUrl = "jdbc:mysql://localhost:3306/web_ban_hang";
      String user = "root";
      String password = "none";

      // Thiết lập kết nối đến cơ sở dữ liệu
      connection = DriverManager.getConnection(jdbcUrl, user, password);
    } catch (ClassNotFoundException | SQLException e) {
      // Xử lý các ngoại lệ
      e.printStackTrace();
      throw new SQLException("Không thể kết nối đến cơ sở dữ liệu.");
    }

    return connection;
  }

  public static void closeConnection(Connection connection) {
    try {
      if (connection != null && !connection.isClosed()) {
        connection.close();
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }
  }


