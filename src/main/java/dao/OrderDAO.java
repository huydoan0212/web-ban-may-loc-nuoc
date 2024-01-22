package dao;

import db.JDBIConnector;
import model.Order;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class OrderDAO {
    LocalDateTime time = null;

    public static boolean insertOrder(int user_id, String address, String phone, String status, int total_money) {
        int rowAffected = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO orders( user_id, address, phone, order_date,status,total_money) " +
                                "VALUES ( :user_id, :address, :phone, :order_date, :status, :total_money)")
                        .bind("user_id", user_id)
                        .bind("address", address)
                        .bind("phone", phone)
                        .bind("order_date", LocalDateTime.now().toString())
                        .bind("status", status)
                        .bind("total_money", total_money)
                        .execute());
        if (rowAffected > 0) {
            return true;
        } else {
            return false;
        }
    }

    public static Order getOrder(int user_id, String address, String phone, String status, int total_money) {
        Optional<Order> order = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE " +
                                "user_id = :user_id " +
                                "and address = :address " +
                                "and phone = :phone " +
                                "and status = :status " +
                                "and total_money = :total_money ")
                        .bind("user_id", user_id)
                        .bind("address", address)
                        .bind("phone", phone)
                        .bind("status", status)
                        .bind("total_money", total_money)
                        .mapToBean(Order.class).stream().findFirst());
        return order.isEmpty() ? null : order.get();
    }

    public static List<Order> getOrderByIdUser(int user_id){
        List<Order> orders = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE user_id = :user_id ")
                        .bind("user_id", user_id)
                        .mapToBean(Order.class).stream().collect(Collectors.toList()));
        return orders.isEmpty() ? null : orders;
    }

    public static boolean cancelOrder(String status, int id) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE orders SET status = :status WHERE id = :id")
                        .bind("status", status)
                        .bind("id", id)
                        .execute()
        );
        return rowsUpdated > 0;
    }

    public static boolean paymentOrder(String status, int id) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE orders SET status = :status, received_date = :received_date WHERE id = :id")
                        .bind("status", status)
                        .bind("received_date", LocalDateTime.now().toString())
                        .bind("id", id)
                        .execute()
        );
        return rowsUpdated > 0;
    }


    public static void main(String[] args) {
//        System.out.println(OrderDAO.getOrder(1,"126 Phuoc Long","0586485990", "Đặt hàng",3490000));
//        System.out.println(OrderDAO.cancelOrder("Thay doi dia chi", 5));
//        System.out.println(OrderDAO.getOrderByIdUser(1));
    }
}


