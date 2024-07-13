package dao;

import db.JDBIConnector;
import model.IDao;
import model.Log;

import java.util.ArrayList;

public class LogDao implements IDao<Log> {
    public static boolean insertLog(Log log) {
        int rowAffected = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO logs (action, table_name, level, beforeData, afterData, user_id, time) " +
                                "VALUES (:action, :table_name, :level, :beforeData, :afterData, :user_id, :time)")
                        .bind("action", log.getAction())
                        .bind("table_name", log.getTable())
                        .bind("level", log.getLevel())
                        .bind("beforeData", log.getBeforeData())
                        .bind("afterData", log.getAfterData())
                        .bind("user_id", log.getUser_id())
                        .bind("time", log.getTime())
                        .execute());

        return rowAffected > 0;
    }


    @Override
    public int insert(Log log) {
        return 0;
    }

    @Override
    public int update(Log log) {
        return 0;
    }

    @Override
    public int delete(Log log) {
        return 0;
    }

    public static boolean deleteById(int id) {
        int rowAffected = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("DELETE FROM logs WHERE id = :id")
                        .bind("id", id)
                        .execute());

        return rowAffected > 0;
    }

    @Override
    public ArrayList<Log> selectAll() {
        ArrayList<Log> logs = new ArrayList<>();
        JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM logs")
                        .map((rs, ctx) -> {
                            Log log = new Log();
                            log.setId(rs.getInt("id"));
                            log.setAction(rs.getNString("action"));
                            log.setTable(rs.getNString("table_name"));
                            log.setLevel(rs.getNString("level"));
                            log.setBeforeData(rs.getNString("beforeData"));
                            log.setAfterData(rs.getNString("afterData"));
                            log.setUser_id(rs.getInt("user_id"));
                            log.setTime(rs.getTimestamp("time"));
                            logs.add(log);
                            return log;
                        })
                        .list()
        );
        return logs;
    }


    @Override
    public Log selectById(int id) {
        return JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM logs WHERE id = :id")
                        .bind("id", id)
                        .map((rs, ctx) -> {
                            Log log = new Log();
                            log.setId(rs.getInt("id"));
                            log.setAction(rs.getNString("action"));
                            log.setTable(rs.getNString("table_name"));
                            log.setLevel(rs.getNString("level"));
                            log.setBeforeData(rs.getNString("beforeData"));
                            log.setAfterData(rs.getNString("afterData"));
                            log.setUser_id(rs.getInt("user_id"));
                            log.setTime(rs.getTimestamp("time"));
                            return log;
                        })
                        .findOnly()
        );
    }

}
