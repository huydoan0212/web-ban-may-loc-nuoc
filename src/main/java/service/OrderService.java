package service;

import dao.OrderDAO;
import model.Order;

import java.util.Optional;

public class OrderService {
    private static OrderService instance;

    public static OrderService getInstance() {
        if (instance == null)
            instance = new OrderService();
        return instance;
    }

    public boolean insertOrder(int user_id, String address, String phone, String status, int total_money) {
        return OrderDAO.insertOrder(user_id, address, phone, status, total_money);
    }
    public Order getOrder(int user_id, String address, String phone, String status, int total_money){
        return OrderDAO.getOrder(user_id, address, phone, status, total_money);
    }
    public boolean cancelOrder(String status , int id){
        return OrderDAO.cancelOrder(status,id);
    }
    public boolean paymentOrder(String status , int id){
        return OrderDAO.paymentOrder(status,id);
    }
    public static void main(String[] args) {
    }
}
