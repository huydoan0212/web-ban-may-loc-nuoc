package model;

import java.util.List;
import java.util.Map;

public interface IDao<T extends IModel> {
    int insert(IModel model);
    int update(IModel model);
    int delete(IModel model);
    List<T> select(Map<String,Object> data);
}
