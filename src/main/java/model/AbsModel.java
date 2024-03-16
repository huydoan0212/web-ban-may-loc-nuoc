package model;

public class AbsModel implements IModel {

    @Override
    public AbsModel select(AbsModel model) {
        return null;
    }

    @Override
    public boolean update(AbsModel model) {
        return false;
    }

    @Override
    public boolean insert(AbsModel model) {
        return false;
    }

    @Override
    public boolean delete(AbsModel model) {
        return false;
    }
}
