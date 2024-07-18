package dao;

import db.JDBIConnector;
import model.Log;

import java.util.List;
import java.util.stream.Collectors;

public class LogDao {
    public static List<Log> getAllLog() {
        List<Log> Logs = JDBIConnector.me().withHandle((handle -> handle.createQuery("select * from log ")
                .mapToBean(Log.class).stream().collect(Collectors.toList())));
        return Logs;
    }
    public static Log getLogById(int id) {
        Log log = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM log WHERE id = :id")
                        .bind("id", id)
                        .mapToBean(Log.class)
                        .findOnly());
        return log;
    }
    public static void main(String[] args) {
        System.out.println(getAllLog());
    }
}
