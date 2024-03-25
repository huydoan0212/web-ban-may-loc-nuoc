package model;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

public abstract class AbsDao<T extends IModel> implements IDao<T> {

    @Override
    public boolean insert(IModel model, int userId, String ipAddress, String action, String resource, int previousValue, int currentValue, String level, LocalDateTime created_at, LocalDateTime updated_at, boolean status, String nationality) {
        return Log.insert(model, userId, ipAddress, action, resource, previousValue, currentValue, level, created_at, updated_at, status, nationality);
    }
}


