package service;

import dao.OrderDAO;
import model.Order;

import java.util.List;
import java.util.Optional;

public class OrderService {
    private static OrderService instance;

    public static OrderService getInstance() {
        if (instance == null)
            instance = new OrderService();
        return instance;
    }

    public boolean insertOrder(int user_id, String address, String phone, String status, int total_money, int voucher_id) {
        return OrderDAO.insertOrder(user_id, address, phone, status, total_money,voucher_id);
    }
    public Order getOrder(int user_id, String address, String phone, String status, int total_money){
        return OrderDAO.getOrder(user_id, address, phone, status, total_money);
    }
    public Order getOrderById(int id){
        return OrderDAO.getOrderById(id);
    }
    public List<Order> getOrderByIdUser(int user_id){
        return OrderDAO.getOrderByIdUser(user_id);
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
