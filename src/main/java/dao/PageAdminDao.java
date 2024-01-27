package dao;

import db.JDBIConnector;
import model.Order;
import model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class PageAdminDao {
    public static int countOrder() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static int countProductOutStock() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM products where available = 0")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static int totalMoney() {
        Integer count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT SUM(total_money) FROM orders")
                        .mapTo(Integer.class)
                        .one()
        );
        return (count != null) ? count : 0;
    }

    public static int countOrderCancel() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders WHERE status LIKE ?")
                        .bind(0, "%Đã Hủy%")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static List<Order> getOrderRecent() {
        List<Order> orders= JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from orders order by order_date desc limit 10")
                        .mapToBean(Order.class).stream().collect(Collectors.toList())));
        return orders;
    }
    public static List<Product> getProductBestSeller() {
        List<Product> products = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select products.*, count(order_details.product_id) " +
                                "as total from products join order_details " +
                                "on products.id = order_details.product_id " +
                                "group by products.id order by total desc")
                        .mapToBean(Product.class).stream().collect(Collectors.toList())));
        return products;
    }

    public static int countOrderToday() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders WHERE DATE(order_date) = CURDATE()")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static int countOrderThisWeek() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders WHERE WEEK(order_date) = WEEK(CURDATE()) AND YEAR(order_date) = YEAR(CURDATE())")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static int countOrderThisMonth() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders WHERE MONTH(order_date) = MONTH(CURDATE()) AND YEAR(order_date) = YEAR(CURDATE())")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static int totalMoneyToday() {
        Integer count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT SUM(total_money) FROM orders  WHERE DATE(order_date) = CURDATE()")
                        .mapTo(Integer.class)
                        .one()
        );
        return (count != null) ? count : 0;
    }
    public static int totalMoneyWeek() {
        Integer count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT SUM(total_money) FROM orders  WHERE WEEK(order_date) = WEEK(CURDATE()) AND YEAR(order_date) = YEAR(CURDATE())")
                        .mapTo(Integer.class)
                        .one()
        );
        return (count != null) ? count : 0;
    }
    public static int totalMoneyMonth() {
        Integer count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT SUM(total_money) FROM orders  WHERE MONTH(order_date) = MONTH(CURDATE()) AND YEAR(order_date) = YEAR(CURDATE())")
                        .mapTo(Integer.class)
                        .one()
        );
        return (count != null) ? count : 0;
    }
    public static int countOrderCancelToday() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders WHERE status LIKE ? AND WEEK(order_date) = WEEK(CURDATE()) AND YEAR(order_date) = YEAR(CURDATE())")
                        .bind(0, "%Đã Hủy%")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static int countOrderCancelWeek() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders WHERE status LIKE ? AND DATE(order_date) = CURDATE()")
                        .bind(0, "%Đã Hủy%")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }
    public static int countOrderCancelMonth() {
        int count = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT COUNT(id) FROM orders WHERE status LIKE ? AND MONTH(order_date) = MONTH(CURDATE()) AND YEAR(order_date) = YEAR(CURDATE())")
                        .bind(0, "%Đã Hủy%")
                        .mapTo(Integer.class)
                        .one()
        );
        return count;
    }






    public static void main(String[] args) {
//        System.out.println(countOrder());
//        System.out.println(countProductOutStock());
//        System.out.println(totalMoney());
//        System.out.println(countOrderCancel());
        System.out.println(getOrderRecent());
//        System.out.println(countOrderCancelToday());

    }
}

