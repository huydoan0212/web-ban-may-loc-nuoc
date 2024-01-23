package service;

import dao.OrderDetailDAO;

public class OrderDetailService {
    private static OrderDetailService instance;

    public static OrderDetailService getInstance() {
        if (instance == null)
            instance = new OrderDetailService();
        return instance;
    }

    public boolean insertOrder(int order_id, int product_id, int price, int quantity, int total_money) {
        return OrderDetailDAO.insertOrder(order_id, product_id, price, quantity, total_money);
    }
}
