package dao;

import db.JDBIConnector;
import model.Order;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class OrderDAO {
    LocalDateTime time = null;

    public static boolean insertOrder(int user_id, String address, String phone, String status, int total_money, int voucher_id,String name) {
        int rowAffected = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO orders( user_id, address, phone, order_date,status,total_money,voucher_id,name) " +
                                "VALUES ( :user_id, :address, :phone, :order_date, :status, :total_money,:voucher_id,:name)")
                        .bind("user_id", user_id)
                        .bind("address", address)
                        .bind("phone", phone)
                        .bind("order_date", LocalDateTime.now().toString())
                        .bind("status", status)
                        .bind("total_money", total_money)
                        .bind("voucher_id",voucher_id)
                        .bind("name",name)
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
                handle.createQuery("SELECT * FROM orders WHERE user_id = :user_id ORDER BY id DESC " )
                        .bind("user_id", user_id)
                        .mapToBean(Order.class).stream().collect(Collectors.toList()));
        return orders.isEmpty() ? null : orders;
    }
    public static Order getOrderById(int id){
       Optional<Order> order = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE id = :id ")
                        .bind("id", id)
                        .mapToBean(Order.class).stream().findFirst());
        return order.isEmpty() ? null : order.get();
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
    public static List<Order> getListOrderWaitConfirm(){
        List<Order> orders = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE status = 'Đã chọn phương thức thanh toán' limit 100")
                        .mapToBean(Order.class).stream().collect(Collectors.toList()));
        return orders;
    }


    public static void main(String[] args) {
//        System.out.println(OrderDAO.getOrder(1,"126 Phuoc Long","0586485990", "Đặt hàng",3490000));
//        System.out.println(OrderDAO.cancelOrder("Thay doi dia chi", 5));
//        System.out.println(OrderDAO.getOrderByIdUser(1));
//        System.out.println(getOrderById(104));
//        System.out.println(insertOrder(1,"sdafsdf","safas","saffs",555555,2));
      //  System.out.println(getOrderByIdUser(14));
        System.out.println(changeInfoOrder(157,"Trân","84 phuoc long","05658112"));
    }

    public static List<Order> getListOrderConfirm() {
        List<Order> orders = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE status = 'Đã xác nhận đơn hàng' limit 100")
                        .mapToBean(Order.class).stream().collect(Collectors.toList()));
        return orders;
    }

    public static List<Order> getListOrderTransport() {
        List<Order> orders = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE status = 'Đơn hàng đang vận chuyển' limit 100")
                        .mapToBean(Order.class).stream().collect(Collectors.toList()));
        return orders;
    }

    public static List<Order> getListOrderTransported() {
        List<Order> orders = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE status = 'Đơn hàng đã giao' limit 100")
                        .mapToBean(Order.class).stream().collect(Collectors.toList()));
        return orders;
    }

    public static List<Order> getListOrderCancel() {
        List<Order> orders = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM orders WHERE status = 'Đã hủy' limit 100")
                        .mapToBean(Order.class).stream().collect(Collectors.toList()));
        return orders;
    }

    public static boolean changeStatusToConfirmed(int id) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE orders SET status = 'Đã xác nhận đơn hàng' WHERE id = :id")
                        .bind("id", id)
                        .execute()
        );
        return rowsUpdated > 0;

    }

    public static boolean changeStatusToTransport(int orderId) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE orders SET status = 'Đơn hàng đang vận chuyển' WHERE id = :id")
                        .bind("id", orderId)
                        .execute()
        );
        return rowsUpdated > 0;

    }

    public static boolean changeStatusToTransported(int orderId) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE orders SET status = 'Đơn hàng đã giao' WHERE id = :id")
                        .bind("id", orderId)
                        .execute()
        );
        return rowsUpdated > 0;

    }

    public static boolean changeStatusToCancel(int orderId) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE orders SET status = 'Đã hủy' WHERE id = :id")
                        .bind("id", orderId)
                        .execute()
        );
        return rowsUpdated > 0;

    }

    public static boolean changeInfoOrder(int id, String name, String address, String phone) {
        int rowsUpdated = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("UPDATE orders SET address =:address, phone=:phone, name=:name WHERE id = :id AND status NOT LIKE 'Đơn hàng đã giao' AND status NOT LIKE 'Đơn hàng đang vận chuyển' AND status NOT LIKE 'Đã hủy'")
                        .bind("id", id)
                        .bind("address", address)
                        .bind("phone", phone)
                        .bind("name", name)
                        .execute()
        );
        return rowsUpdated > 0;
    }

}


