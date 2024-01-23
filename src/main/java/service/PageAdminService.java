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
    public List<Order> getOderRecent(){
        return PageAdminDao.getOderRecent();
    }
    public List<Product> getProductBestSeller(){
        return PageAdminDao.getProductBestSeller();
    }

    public static void main(String[] args) {
        System.out.println(PageAdminService.getInstance().getOderRecent());
    }
}
