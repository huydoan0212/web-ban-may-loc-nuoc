package model;

import db.JDBIConnector;

import java.time.LocalDateTime;

public class Log {
    private int id;
    private int userId;
    private String ipAddress;
    private String action;
    private String resource;
    private int previousValue;
    private int currentValue;
    private String level;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private boolean status;
    private String nationality;

    public Log() {
    }

    public Log(int id, int userId, String ipAddress, String action, String resource, int previousValue, int currentValue, String level, LocalDateTime createdAt, LocalDateTime updatedAt, boolean status, String nationality) {
        this.id = id;
        this.userId = userId;
        this.ipAddress = ipAddress;
        this.action = action;
        this.resource = resource;
        this.previousValue = previousValue;
        this.currentValue = currentValue;
        this.level = level;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.status = status;
        this.nationality = nationality;
    }


    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", userId=" + userId +
                ", ipAddress='" + ipAddress + '\'' +
                ", action='" + action + '\'' +
                ", resource='" + resource + '\'' +
                ", previousValue=" + previousValue +
                ", currentValue=" + currentValue +
                ", level='" + level + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", status=" + status +
                ", nationality='" + nationality + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    public int getPreviousValue() {
        return previousValue;
    }

    public void setPreviousValue(int previousValue) {
        this.previousValue = previousValue;
    }

    public int getCurrentValue() {
        return currentValue;
    }

    public void setCurrentValue(int currentValue) {
        this.currentValue = currentValue;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public static void update(IModel model) {
        User user = model instanceof User ? (User) model : new User();
        JDBIConnector.me().withHandle(handle ->
                handle.createQuery("UPDATE fullname FROM log WHERE id = ?")
                        .bind(0, user.getId())
                        .mapTo(String.class)
                        .one()
        );
    }

    public static void insert(IModel model, int userId, String ipAddress, String action, String resource, int previousValue, int currentValue, String level, LocalDateTime created_at, LocalDateTime updated_at, boolean status, String nationality) {
        if (model instanceof User) {
            JDBIConnector.me().withHandle(handle -> {
                String query = "INSERT INTO log(userId, ipAddress, action, resource, previousValue, currentValue, level, created_at, updated_at, status, nationality) values (?,?,?,?,?,?,?,?,?,?,?)";
                handle.createUpdate(query)
                        .bind(0, userId)
                        .bind(1, ipAddress)
                        .bind(2, action)
                        .bind(3, resource)
                        .bind(4, previousValue)
                        .bind(5, currentValue)
                        .bind(6, level)
                        .bind(7, created_at)
                        .bind(8, updated_at)
                        .bind(9, status)
                        .bind(10, nationality)
                        .execute();
                return null;
            });
        }else if (model instanceof Product){
            JDBIConnector.me().withHandle(handle -> {
                String query = "INSERT INTO log(userId, ipAddress, action, resource, previousValue, currentValue, level, created_at, updated_at, status, nationality) values (?,?,?,?,?,?,?,?,?,?,?)";
                handle.createUpdate(query)
                        .bind(0, userId)
                        .bind(1, ipAddress)
                        .bind(2, action)
                        .bind(3, resource)
                        .bind(4, previousValue)
                        .bind(5, currentValue)
                        .bind(6, level)
                        .bind(7, created_at)
                        .bind(8, updated_at)
                        .bind(9, status)
                        .bind(10, nationality)
                        .execute();
                return null;
            });
        }
    }

}

