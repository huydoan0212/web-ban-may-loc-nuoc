package model;

import java.util.List;
import java.util.Map;

public abstract class AbsDao <T extends IModel> implements IDao<T> {

    @Override
    public int insert(IModel model) {
        return 0;
    }

    @Override
    public int update(IModel model) {
        Log.update(model);
        return 0;
    }

    @Override
    public int delete(IModel model) {
        return 0;
    }

    @Override
    public List<T> select(Map<String, Object> data) {
        return null;
    }
}
