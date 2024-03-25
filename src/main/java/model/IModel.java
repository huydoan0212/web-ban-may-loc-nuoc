package model;

public interface IModel {
    public AbsModel select(AbsModel model);

    public boolean update(AbsModel model);

    public boolean insert(AbsModel model);

    public boolean delete(AbsModel model);
}
