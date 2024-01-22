package dao;

import db.JDBIConnector;

import java.time.LocalDateTime;

public class OrderDetailDAO {

    public static boolean insertOrder(int order_id, int product_id, int price, int quantity, int total_money) {
        int rowAffected = JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO order_details( order_id, product_id, price, quantity,total_money) " +
                                "VALUES ( :order_id, :product_id, :price, :quantity, :total_money)")
                        .bind("order_id", order_id)
                        .bind("product_id", product_id)
                        .bind("price", price)
                        .bind("quantity", quantity)
                        .bind("total_money", total_money)
                        .execute());
        if (rowAffected > 0) {
            return true;
        } else {
            return false;
        }
    }
}
