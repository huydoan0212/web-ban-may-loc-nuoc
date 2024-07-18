package model;

public class Category implements IModel {
    private int id;
    private String name;
    private String beforeData;

    public Category(int id, String name) {
        this.id = id;
        this.name = name;
        this.beforeData = toString();
    }

    public Category() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBeforeData() {
        return beforeData;
    }

    public void setBeforeData(String beforeData) {
        this.beforeData = beforeData;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    @Override
    public String table() {
        return "categorys";
    }

    @Override
    public String beforeData() {
        return beforeData;
    }

    @Override
    public String afterData() {
        return toString();
    }
}
