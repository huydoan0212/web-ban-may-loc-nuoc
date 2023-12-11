package web.bean;

import java.util.Date;

public class User {
    private int id;
    private int role_id;
    private String username;
    private String fullname;
    private String email;
    private String phone_number;
    private int sex;
    private String address;
    private String password;
    private String number_banking;
    private Date created_at;
    private Date updated_at;
    private String status;
    private String active;

    public User() {
    }

    public User(int id, int role_id, String username, String fullname, String email, String phone_number, int sex, String address, String password, String number_banking, Date created_at, Date updated_at, String status, String active) {
        this.id = id;
        this.role_id = role_id;
        this.username = username;
        this.fullname = fullname;
        this.email = email;
        this.phone_number = phone_number;
        this.sex = sex;
        this.address = address;
        this.password = password;
        this.number_banking = number_banking;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.status = status;
        this.active = active;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNumber_banking() {
        return number_banking;
    }

    public void setNumber_banking(String number_banking) {
        this.number_banking = number_banking;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }
}
