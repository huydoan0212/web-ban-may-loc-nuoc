package service;

import dao.PageAdminDao;
import model.Order;
import model.Product;

import java.util.List;

public class PageAdminService {
    private static PageAdminService instance;

    public static PageAdminService getInstance() {
        if (instance == null)
            instance = new PageAdminService();
        return instance;
    }
    public int countOrder(){
        return PageAdminDao.countOrder();
    }
    public int countProductOutStock(){
        return PageAdminDao.countProductOutStock();
    }
    public int totalMoney(){
        return PageAdminDao.totalMoney();
    }
    public int countOrderCancel(){
        return PageAdminDao.countOrderCancel();
    }
    public List<Order> getOrderRecent(){
        return PageAdminDao.getOrderRecent();
    }
    public List<Product> getProductBestSeller(){
        return PageAdminDao.getProductBestSeller();
    }
    public int countOrderToday(){
        return PageAdminDao.countOrderToday();
    }
    public int countOrderThisWeek(){
        return PageAdminDao.countOrderCancelWeek();
    }
    public  int countOrderThisMonth(){
        return PageAdminDao.countOrderThisMonth();
    }
    public  int totalMoneyToday(){
        return PageAdminDao.totalMoneyToday();
    }
    public int totalMoneyWeek(){
        return PageAdminDao.totalMoneyWeek();
    }
    public  int totalMoneyMonth(){
        return PageAdminDao.totalMoneyMonth();
    }
    public int countOrderCancelToday(){
        return PageAdminDao.countOrderCancelToday();
    }
    public int countOrderCancelWeek(){
        return PageAdminDao.countOrderCancelWeek();
    }
    public int countOrderCancelMonth(){
        return PageAdminDao.countOrderCancelMonth();
    }
    public static void main(String[] args) {
        System.out.println(PageAdminService.getInstance().getOrderRecent());
    }
}
