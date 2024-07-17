package model;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

public interface IDao<T extends IModel> {

    boolean insert(IModel model, int userId, String ipAddress, String action, String resource, String level, LocalDateTime created_at, LocalDateTime updated_at, boolean status, String nationality);

    int update(IModel model, int userId, String ipAddress, String action, String resource, int previousValue, int currentValue, String level, LocalDateTime created_at, LocalDateTime updated_at, boolean status, String nationality);
    int delete(IModel model, int userId, String ipAddress, String action, String resource, int previousValue, int currentValue, String level, LocalDateTime created_at, LocalDateTime updated_at, boolean status, String nationality);
    List<T> select(IModel model, int userId, String ipAddress, String action, String resource, int previousValue, int currentValue, String level, LocalDateTime created_at, LocalDateTime updated_at, boolean status, String nationality);
}
