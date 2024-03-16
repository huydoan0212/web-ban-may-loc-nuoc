package model;

import java.time.LocalDateTime;

public class Log extends AbsModel {
    private int id;
    private int userId;
    private String ipAddress;
    private String action;
    private int previousValue;
    private int currentValue;
    private String type;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private boolean status;

    public Log() {
    }

    public Log(int id, int userId, String ipAddress, String action, int previousValue, int currentValue, String type, LocalDateTime createdAt, LocalDateTime updatedAt, boolean status) {
        this.id = id;
        this.userId = userId;
        this.ipAddress = ipAddress;
        this.action = action;
        this.previousValue = previousValue;
        this.currentValue = currentValue;
        this.type = type;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", userId=" + userId +
                ", ipAddress='" + ipAddress + '\'' +
                ", action=" + action +
                ", previousValue=" + previousValue +
                ", currentValue=" + currentValue +
                ", type='" + type + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", status=" + status +
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
}
